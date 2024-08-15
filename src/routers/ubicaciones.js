const { Router } = require('express');
const {ExecuteStoreProcedure, ExecuteStoreProcedureWithoutParameters} = require('../postgresConnection/storeProcedure.js');
const router = Router();

router.post("/reubicarCanasta", async (req, res) => {
    try {
        const { basketIdFrom, SubUbicacionIdTo } = req.body;

        // Validate the input parameters
        if (!basketIdFrom || !SubUbicacionIdTo) {
            return res.status(400).json({ error: 'Missing required parameters' });
        }

        const parameters = [
            { name: 'p_basket_id', value: basketIdFrom },
            { name: 'p_SubLocation_idTo', value: SubUbicacionIdTo }
        ];

        console.log(parameters);

        // Execute the stored procedure
        const result = await ExecuteStoreProcedure('SELECT * FROM reubicarCanasta($1, $2)', parameters);
        
        // Verify if any result was returned
        if (result.length === 0) {
            return res.status(404).json({ error: 'No results found' });
        }

        // Return the result in the response
        res.json(result[0]);

    } catch (error) {
        console.error('Error executing procedure:', error);

        // Return a general error message in the response
        res.status(500).json({ error: 'An error occurred while processing your request' });
    }
});

router.post("/inicioUbicacion", async (req, res) => {
    try {
        const { basketId } = req.body;

        // Validate the input parameters
        if (!basketId) {
            return res.status(400).json({ error: 'Missing required parameters' });
        }

        const parameters = [
            { name: 'p_basketId', value: basketId }
        ];

        console.log(parameters);
        // Execute the stored procedure
        const result = await ExecuteStoreProcedureWithoutParameters('SELECT * FROM CreateBasket($1)', parameters);        
        // Verify if any result was returned
        if (result.length === 0) {
            return res.status(404).json({ error: 'No results found' });
        }
        // Return the result in the response
        res.json(result[0]);

    } catch (error) {
        console.error('Error executing procedure:', error);

        // Return a general error message in the response
        res.status(500).json({ error: 'An error occurred while processing your request' });
    }
});

module.exports = {
    routes: router
};
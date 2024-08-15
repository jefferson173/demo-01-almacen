const { Router } = require('express');
const {ExecuteStoreProcedure} = require('../postgresConnection/storeProcedure');
const imprimir = require('../impresiones/client');
const router = Router();

// Ruta para pickear productos según una orden
router.post("/picking", async (req, res) => {
    try {
        const { orderId, basketIdTo, pickedProducts } = req.body;

        // Validar los parámetros de entrada
        if (!orderId || !basketIdTo || !pickedProducts) {
            return res.status(400).json({ error: 'Faltan parámetros requeridos' });
        }

        const parameters = [
            { name: 'p_order_id', value: orderId },
            { name: 'p_basket_idto', value: basketIdTo },
            { name: 'p_picked_products', value: JSON.stringify(pickedProducts) }
        ];

        console.log(parameters);

        // Ejecutar el procedimiento almacenado
        const result = await ExecuteStoreProcedure('SELECT PickProductsForOrder($1, $2, $3)', parameters);
        
        // Verificar si se devolvió algún resultado
        if (result.length === 0) {
            return res.status(404).json({ error: 'No se encontraron resultados' });
        }

        // Devolver el resultado en la respuesta
        res.json({ message: result[0].pickproductsfororder });

    } catch (error) {
        console.error('Error ejecutando el procedimiento:', error);

        // Devolver un mensaje de error general en la respuesta
        res.status(500).json({ error: 'Ocurrió un error al procesar tu solicitud' });
    }
});

router.post("/canasta", async (req, res) => {
    try {
        const { quantity } = req.body;

        // Validate the input parameters
        if (!quantity) {
            return res.status(400).json({ error: 'Missing required parameters' });
        }

        const parameters = [
            { name: 'cantidad', value: quantity }
        ];

        console.log(parameters);
        // Execute the stored procedure
        const result = await ExecuteStoreProcedure('SELECT * FROM CreateBaskets($1)', parameters);        
        // Verify if any result was returned
        if (result.length === 0) {
            return res.status(404).json({ error: 'No results found' });
        }
        imprimir(result[0]);
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
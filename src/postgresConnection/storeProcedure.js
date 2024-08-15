const { Pool } = require('pg');
const envs = require('../config/envs.js');

const pool = new Pool({
    user: envs.SQL_USER,
    host: envs.SQL_SERVER,
    database: envs.SQL_DATABASE,
    password: envs.SQL_PASSWORD,
    port: envs.SQL_PORT,
    ssl: envs.SQL_ENCRYPT ? { rejectUnauthorized: false } : false,
});

const ExecuteStoreProcedure = async (procedure, parameters) => {
    const client = await pool.connect();
    try {
        const result = await client.query({
            text: procedure,
            values: parameters.map(param => param.value),
        });
        return result.rows;
    } catch (error) {
        console.error('ERROR EXECUTE SP', error.message);
        throw error;
    } finally {
        client.release();
    }
}
const ExecuteStoreProcedureWithoutParameters = async (procedure) => {
    const client = await pool.connect();
    try {
        const result = await client.query(procedure);
        
        return result.rows;
    } catch (error) {
        console.error('ERROR EXECUTE SP', error.message);
        throw error;
    } finally {
        client.release();
    }
}

module.exports = {ExecuteStoreProcedure, ExecuteStoreProcedureWithoutParameters};
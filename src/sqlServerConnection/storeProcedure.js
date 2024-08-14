const sql =require('mssql');
const envs = require('../config/envs.js');

const config = {
    database: envs.SQL_DATABASE,
    server: envs.SQL_SERVER,
    port: envs.SQL_PORT,
    pool: {
        max: 10,
        min: 10,
        idleTimeoutMillis: 30000
    },
    options: {
        encrypt: envs.SQL_ENCRYPT,
        trustServerCertificate: envs.SQL_CERTIFICATE,
        integratedSecurity: true  // Habilitar autenticación de Windows
    }
};
const ExecuteStoreProcedure = async (procedure, parameters) => {
    return new Promise(async (resolve, reject) => {
        let pool;
        try {
            pool = await sql.connect(config);                               
            const consult = pool.request();

            parameters.forEach((element) => {
                consult.input(element.name, element.type, element.value);
            });
            const recordset = await consult.execute(procedure);
            resolve(recordset);
        } catch (error) {
            console.log('ERROR EXECUTE SP', error.message);
            reject(error.message);
        } finally {
            if (pool && typeof pool.close === 'function') {
                pool.close();
            }
        }
    });
}

module.exports=ExecuteStoreProcedure;
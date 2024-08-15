//setting environment variables
require('dotenv').config();
const envVar = require('env-var');

const envs = {
    PORT: envVar.get('PORT').asPortNumber(),
    SQL_USER: envVar.get('SQL_USER').asString(),
    SQL_PASSWORD: envVar.get('SQL_PASSWORD').asString(),
    SQL_SERVER: envVar.get('SQL_SERVER').asString(),
    SQL_DATABASE: envVar.get('SQL_DATABASE').required().asString(),
    SQL_PORT: envVar.get('SQL_PORT').required().asPortNumber(),
    SQL_ENCRYPT: envVar.get('SQL_ENCRYPT').required().asBool(),
    SQL_CERTIFICATE: envVar.get('SQL_CERTIFICATE').required().asBool()
};

module.exports = envs;
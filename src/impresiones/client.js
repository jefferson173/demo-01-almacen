const net = require('net');

const options = {
    port: 4000,
    host: '127.0.0.1'  // Reemplaza '127.0.0.1' con la IP pública de tu instancia de EC2 si es necesario
};

const imprimir = (id) => {
    const client = net.createConnection(options);

    client.on('connect', () => {
        console.log('Conexión satisfactoria!!');
        client.write(id.createbasket);  // Asegúrate de que 'id' sea una cadena de texto
    });

    client.on('data', (data) => {
        console.log('El servidor dice: ' + data.toString());
        // No es necesario volver a escribir el id. Si necesitas hacerlo, asegúrate de que sea una cadena
        // client.write(String(id)); // Esto puede eliminarse o comentarse
        client.end();  // Finaliza la conexión después de recibir la respuesta
    });

    client.on('error', (err) => {
        console.log('Error en la conexión:', err.message);
    });
};

module.exports = imprimir;
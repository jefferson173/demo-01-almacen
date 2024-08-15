const express = require("express");
const envs = require("./src/config/envs.js");
const routerUbicaciones = require("./src/routers/ubicaciones.js");
const routerOrdenes = require("./src/routers/ordenes.js");
const app = express();
app.use(express.json());
app.use("/api/v1", routerUbicaciones.routes);
app.use("/api/v1", routerOrdenes.routes);

app.listen(envs.PORT);
console.log("PORT: "+ envs.PORT);


const express = require('express');
const app = express();
const contenidoRoutes = require('./routes/contenidoRoutes');
const db = require('./conexion/database');
const router = express.Router();
//kdaskfad


// Middlewares
app.use(express.json())
app.use('/contenido', contenidoRoutes)


// Server
const PORT =  3000;
app.listen(PORT, () => {
  console.log(`Server running on port http://localhost:${PORT}`);
});
    


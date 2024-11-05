const express = require('express');
const app = express();
const contenidoRoutes = require('./routes/contenidoRoutes');
const router = express.Router();
const {swaggerUi, swaggerDocs} = require('./utils/SwaggerConfig')

//SwaggerConfiguracion
app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerDocs));

// Middlewares
app.use(express.json());
app.use('/contenido', contenidoRoutes)


// Server
const PORT =  3000;
app.listen(PORT, () => {
  console.log(`Server running on port http://localhost:${PORT}`);
  console.log('Documentación de la API en http://localhost:3000/api-docs')
});
    


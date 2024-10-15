const express = require('express');
const app = express();
const router = express.Router();
const db  = require('../conexion/database');
const connection = require('../conexion/database');
// const { sequelize } = require('sequelize');
const {contenido} = require ('..//models/contenido')

// app.get('/', (req,res) => {res.send ("hello word")})

// Routes for CRUD
app.get('/', async (req, res) =>  { try  {
    console.log('conexion establecida con exito')
    await contenido.sync()
    const contenidos = await contenido.findAll()
    const contenidodata = contenidos.map((p) => p.dataValues)
    console.table(contenidodata);
} catch(error){
    console.error('no se pudo conectar',error )}
 finally {
    connection.end()}
});

// router.get('/:id', (req, res) => {
//     // Get content by ID
// });

// router.post('/', (req, res) => {
//     // Add new content
// });

// router.put('/:id', (req, res) => {
//     // Update content by ID
// });

// router.delete('/:id', (req, res) => {
//     // Delete content by ID
// });

// module.exports = router;

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server running on port http://localhost:${PORT}`);
});
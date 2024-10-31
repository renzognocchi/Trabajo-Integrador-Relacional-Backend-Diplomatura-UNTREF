const express = require('express');
const app = express();
const router = express.Router();
const connection  = require('../conexion/database');
const {contenido, sequelize} = require ('..//models/contenido')
const contenidoController = require('../controllers/contenidoController')


// Routes for CRUD
app.use(express.json());
app.use( async (req, res, next) => {
  try  {
  await sequelize.authenticate()
  console.log('conexion establecida con exito')
  await contenido.sync()
  next()
} catch(error){
  res.status(500).json({error: `error en el servidor`, description: error.message })}
})


router.get('/', contenidoController.getaallpeliculas);

router.get('/:peli_id', contenidoController.getpeliculasbyId);

router.get('/nombre/:titulo', contenidoController.getpeliculabytitle);

router.get('/reparto/:query', contenidoController.getpeliculabyactor)

router.post('/pelicula', contenidoController.createpelicula);

router.put('/pelicula/:peli_id', contenidoController.updatePelicula );

router.delete('/pelicula/:peli_id', contenidoController.deletePelicula);

module.exports = router;

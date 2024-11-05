const express = require('express');
const app = express();
const router = express.Router();
const {sequelize}  = require('../conexion/database');
const {contenido} = require ('../models/contenido')
const contenidoController = require('../controllers/contenidoController')


router.get('/', contenidoController.getaallpeliculas);

router.get('/:peli_id', contenidoController.getpeliculasbyId);

router.get('/nombre/:titulo', contenidoController.getpeliculabytitle);

router.get('/reparto/:query', contenidoController.getpeliculabyactor)

router.post('/pelicula', contenidoController.createpelicula);

router.put('/pelicula/:peli_id', contenidoController.updatePelicula );

router.delete('/pelicula/:peli_id', contenidoController.deletePelicula);

module.exports = router;

const connection  = require('../conexion/database');
const {contenido, sequelize} = require ('..//models/contenido')
const {Op} = require('sequelize');



const getaallpeliculas = async (req, res) =>  { try  {
    const contenidos = await contenido.findAll()
    contenidos.length !== 0 ? res.status(200).json(contenidos)
    : res.status(404).json({error: 'no se encontro la pelicula indicada '})
  } catch(error){
    res.status(500).json({error: `error en el servidor`, description: error.message })}
}

const getpeliculasbyId = async (req, res) =>  { 
    try {
    const {peli_id} = req.params
    const peli = await contenido.findByPk(peli_id)
    peli ? res.status(200).json(peli) 
    : res.status(404).json({error: 'no se encontro la pelicula indicada '})
    } catch(error){
    res.status(500).json({error: `error en el servidor`, description: error.message })}
  }

const getpeliculabytitle = async (req, res) =>  { 
    try {
    const {titulo} = req.params
    const pelicula = await contenido.findOne({where: {titulo}})
    pelicula ? res.json(pelicula) 
    : res.status(404).json({error: 'no se encontro la pelicula indicada '})
    } catch(error){
      res.status(500).json({error: `error en el servidor`, description: error.message })}
  }

const getpeliculabyactor =  async (req, res) =>  { 
    try {
    const {query} = req.params
    const pelicula = await contenido.findAll({where: {reparto : {[Op.like]: `%${ query }%`}}})
    pelicula ? res.json(pelicula) 
    : res.status(404).json({error: 'no se encontro el actor indicado '})
    } catch(error){
      res.status(500).json({error: `error en el servidor`, description: error.message })}
  }

const createpelicula = async (req, res) => { try {
    const { 
            poster,
            titulo,
            Cat_id,
            genero,
            busqueda,
            temporadas,
            reparto,
            duracion,
            trailer
    } = req.body
    
    const pelicula  = await contenido.create({
            poster,
            titulo,
            Cat_id,
            genero,
            busqueda,
            temporadas,
            reparto,
            duracion,
            trailer
    });
      res.status(200).json(pelicula)
  } catch (error) {
         res.status(500).json({error: `error en el servidor`, description: error.message })
  }}

const updatePelicula = async (req, res) => { try {
    const { peli_id } = req.params
    const { 
            poster,
            titulo,
            Cat_id,
            genero,
            busqueda,
            temporadas,
            reparto,
            duracion,
            trailer
    } = req.body
    
    const [ PeliculaToUpdate ] = await contenido.update({
            poster,
            titulo,
            Cat_id,
            genero,
            busqueda,
            temporadas,
            reparto,
            duracion,
            trailer
    },
     {where : { peli_id } } )
     if (PeliculaToUpdate === 0) {
       res.status(404).json({ error: "Película no encontrada" });
    }
      const UpdatePelicula = await contenido.findByPk(peli_id)
      return res.status(200).json(UpdatePelicula)
  } catch (error) {
         res.status(500).json({error: `error en el servidor`, description: error.message })
  }}

const deletePelicula = async (req, res) => {try {
    const { peli_id } = req.params
    const PeliculaToDestroy = await contenido.findByPk(peli_id)
    if (!PeliculaToDestroy) {
      res.status(404).json({ error: "pelicula no encontrado "})
    }
   PeliculaToDestroy.destroy()
       return res.status(204).send()
  } catch (error) {
    res.status(500).json({error: `error en el servidor`, description: error.message })
  }}

  module.exports = { getaallpeliculas, 
    getpeliculasbyId,
    getpeliculabytitle,
    getpeliculabyactor, 
    createpelicula, 
    updatePelicula,
    deletePelicula}
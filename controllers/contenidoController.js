const sequelize  = require('../conexion/database');
const contenido = require ('..//models/contenido')
const {Op} = require('sequelize');


/**
 * @swagger
 * /contenido:
 *   get:
 *     summary: Obtiene todas las películas.
 *     description: Este endpoint devuelve una lista de todas las películas disponibles.
 *     responses:
 *       200:
 *         description: Lista de películas encontrada exitosamente.
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 type: object
 *                 properties:
 *                   id:
 *                     type: integer
 *                     description: ID de la película
 *                   titulo:
 *                     type: string
 *                     description: Título de la película
 *                   descripcion:
 *                     type: string
 *                     description: Descripción de la película
 *       404:
 *         description: No se encontró ninguna película.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 error:
 *                   type: string
 *                   example: 'no se encontró la película indicada'
 *       500:
 *         description: Error en el servidor.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 error:
 *                   type: string
 *                   example: 'error en el servidor'
 *                 description:
 *                   type: string
 *                   example: 'Descripción detallada del error'
 */
const getaallpeliculas = async (req, res) =>  { try  {
    const contenidos = await contenido.findAll()
    contenidos.length !== 0 ? res.status(200).json(contenidos)
    : res.status(404).json({error: 'no se encontro la pelicula indicada '})
  } catch(error){
    res.status(500).json({error: `error en el servidor`, description: error.message })}
}

/**
 * @swagger
 * /contenido/{peli_id}:
 *   get:
 *     summary: Obtiene una película por ID.
 *     description: Este endpoint permite obtener una película específica mediante su ID.
 *     parameters:
 *       - in: path
 *         name: peli_id
 *         required: true
 *         schema:
 *           type: integer
 *         description: ID de la película a obtener.
 *     responses:
 *       200:
 *         description: Película encontrada exitosamente.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 id:
 *                   type: integer
 *                   description: ID de la película.
 *                 titulo:
 *                   type: string
 *                   description: Título de la película.
 *                 descripcion:
 *                   type: string
 *                   description: Descripción de la película.
 *       404:
 *         description: No se encontró la película indicada.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 error:
 *                   type: string
 *                   example: 'no se encontro la pelicula indicada'
 *       500:
 *         description: Error en el servidor.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 error:
 *                   type: string
 *                   example: 'error en el servidor'
 *                 description:
 *                   type: string
 *                   example: 'Descripción detallada del error'
 */
const getpeliculasbyId = async (req, res) =>  { 
    try {
    const {peli_id} = req.params
    const peli = await contenido.findByPk(peli_id)
    peli ? res.status(200).json(peli) 
    : res.status(404).json({error: 'no se encontro la pelicula indicada '})
    } catch(error){
    res.status(500).json({error: `error en el servidor`, description: error.message })}
  }

  /**
 * @swagger
 * /contenido/nombre/{titulo}:
 *   get:
 *     summary: Obtiene una película por título.
 *     description: Este endpoint permite buscar y obtener una película específica mediante su título.
 *     parameters:
 *       - in: path
 *         name: titulo
 *         required: true
 *         schema:
 *           type: string
 *         description: Título de la película a obtener.
 *     responses:
 *       200:
 *         description: Película encontrada exitosamente.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 id:
 *                   type: integer
 *                   description: ID de la película.
 *                 titulo:
 *                   type: string
 *                   description: Título de la película.
 *                 descripcion:
 *                   type: string
 *                   description: Descripción de la película.
 *       404:
 *         description: No se encontró la película indicada.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 error:
 *                   type: string
 *                   example: 'no se encontro la pelicula indicada'
 *       500:
 *         description: Error en el servidor.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 error:
 *                   type: string
 *                   example: 'error en el servidor'
 *                 description:
 *                   type: string
 *                   example: 'Descripción detallada del error'
 */
const getpeliculabytitle = async (req, res) =>  { 
    try {
    const {titulo} = req.params
    const pelicula = await contenido.findOne({where: {titulo}})
    pelicula ? res.json(pelicula) 
    : res.status(404).json({error: 'no se encontro la pelicula indicada '})
    } catch(error){
      res.status(500).json({error: `error en el servidor`, description: error.message })}
  }

  /**
 * @swagger
 * /contenido/reparto/{query}:
 *   get:
 *     summary: Busca películas por nombre de actor en el reparto.
 *     description: Este endpoint permite buscar y obtener una lista de películas en las que aparece un actor específico.
 *     parameters:
 *       - in: path
 *         name: query
 *         required: true
 *         schema:
 *           type: string
 *         description: Nombre del actor a buscar en el reparto.
 *     responses:
 *       200:
 *         description: Películas encontradas exitosamente.
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 type: object
 *                 properties:
 *                   id:
 *                     type: integer
 *                     description: ID de la película.
 *                   titulo:
 *                     type: string
 *                     description: Título de la película.
 *                   descripcion:
 *                     type: string
 *                     description: Descripción de la película.
 *                   reparto:
 *                     type: string
 *                     description: Actores que participan en la película.
 *       404:
 *         description: No se encontró ningún actor con el nombre indicado.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 error:
 *                   type: string
 *                   example: 'no se encontro el actor indicado'
 *       500:
 *         description: Error en el servidor.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 error:
 *                   type: string
 *                   example: 'error en el servidor'
 *                 description:
 *                   type: string
 *                   example: 'Descripción detallada del error'
 */
const getpeliculabyactor =  async (req, res) =>  { 
    try {
    const {query} = req.params
    const peliculas  = await contenido.findAll({where: {reparto : {[Op.like]: `%${ query }%`}}})
    if (peliculas.length > 0) {
      res.json(peliculas);
    } else {
      res.status(404).json({ error: 'No se encontró el actor indicado' });
    }
    } catch(error){
      res.status(500).json({error: `error en el servidor`, description: error.message })}
  }


 /**
 * @swagger
 * /contenido/pelicula:
 *   post:
 *     summary: Crea una nueva película.
 *     description: Este endpoint permite crear una nueva película con la información proporcionada en el cuerpo de la solicitud.
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               poster:
 *                 type: string
 *                 description: URL del póster de la película.
 *               titulo:
 *                 type: string
 *                 description: Título de la película.
 *               Cat_id:
 *                 type: integer
 *                 description: ID de la categoría de la película.
 *               genero:
 *                 type: string
 *                 description: Género de la película.
 *               busqueda:
 *                 type: string
 *                 description: Palabra clave para búsqueda.
 *               temporadas:
 *                 type: integer
 *                 description: Número de temporadas (para series).
 *               reparto:
 *                 type: string
 *                 description: Actores que participan en la película.
 *               duracion:
 *                 type: integer
 *                 description: Duración de la película en minutos.
 *               trailer:
 *                 type: string
 *                 description: URL del tráiler de la película.
 *     responses:
 *       200:
 *         description: Película creada exitosamente.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 id:
 *                   type: integer
 *                   description: ID de la película creada.
 *                 poster:
 *                   type: string
 *                   description: URL del póster de la película.
 *                 titulo:
 *                   type: string
 *                   description: Título de la película.
 *                 Cat_id:
 *                   type: integer
 *                   description: ID de la categoría de la película.
 *                 genero:
 *                   type: string
 *                   description: Género de la película.
 *                 busqueda:
 *                   type: string
 *                   description: Palabra clave para búsqueda.
 *                 temporadas:
 *                   type: integer
 *                   description: Número de temporadas (para series).
 *                 reparto:
 *                   type: string
 *                   description: Actores que participan en la película.
 *                 duracion:
 *                   type: integer
 *                   description: Duración de la película en minutos.
 *                 trailer:
 *                   type: string
 *                   description: URL del tráiler de la película.
 *       500:
 *         description: Error en el servidor.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 error:
 *                   type: string
 *                   example: 'error en el servidor'
 *                 description:
 *                   type: string
 *                   example: 'Descripción detallada del error'
 */
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

 /**
 * @swagger
 * /contenido/pelicula/{peli_id}:
 *   put:
 *     summary: Actualiza una película existente.
 *     description: Este endpoint permite actualizar los datos de una película específica mediante su ID.
 *     parameters:
 *       - in: path
 *         name: peli_id
 *         required: true
 *         schema:
 *           type: integer
 *         description: ID de la película a actualizar.
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               poster:
 *                 type: string
 *                 description: URL del póster de la película.
 *               titulo:
 *                 type: string
 *                 description: Título de la película.
 *               Cat_id:
 *                 type: integer
 *                 description: ID de la categoría de la película.
 *               genero:
 *                 type: string
 *                 description: Género de la película.
 *               busqueda:
 *                 type: string
 *                 description: Palabra clave para búsqueda.
 *               temporadas:
 *                 type: integer
 *                 description: Número de temporadas (para series).
 *               reparto:
 *                 type: string
 *                 description: Actores que participan en la película.
 *               duracion:
 *                 type: integer
 *                 description: Duración de la película en minutos.
 *               trailer:
 *                 type: string
 *                 description: URL del tráiler de la película.
 *     responses:
 *       200:
 *         description: Película actualizada exitosamente.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 id:
 *                   type: integer
 *                   description: ID de la película actualizada.
 *                 poster:
 *                   type: string
 *                   description: URL del póster de la película.
 *                 titulo:
 *                   type: string
 *                   description: Título de la película.
 *                 Cat_id:
 *                   type: integer
 *                   description: ID de la categoría de la película.
 *                 genero:
 *                   type: string
 *                   description: Género de la película.
 *                 busqueda:
 *                   type: string
 *                   description: Palabra clave para búsqueda.
 *                 temporadas:
 *                   type: integer
 *                   description: Número de temporadas (para series).
 *                 reparto:
 *                   type: string
 *                   description: Actores que participan en la película.
 *                 duracion:
 *                   type: integer
 *                   description: Duración de la película en minutos.
 *                 trailer:
 *                   type: string
 *                   description: URL del tráiler de la película.
 *       404:
 *         description: Película no encontrada.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 error:
 *                   type: string
 *                   example: "Película no encontrada"
 *       500:
 *         description: Error en el servidor.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 error:
 *                   type: string
 *                   example: "error en el servidor"
 *                 description:
 *                   type: string
 *                   example: "Descripción detallada del error"
 */
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
     {where : { peli_id } } );

     if (PeliculaToUpdate === 0) {
      return  res.status(404).json({ error: "Película no encontrada" });
    }
      const UpdatePelicula = await contenido.findByPk(peli_id)
      return  res.status(200).json(UpdatePelicula)
  } catch (error) {
         res.status(500).json({error: `error en el servidor`, description: error.message })
  }}


/**
 * @swagger
 * /contenido/pelicula/{peli_id}:
 *   delete:
 *     summary: Elimina una película existente.
 *     description: Este endpoint permite eliminar una película específica mediante su ID.
 *     parameters:
 *       - in: path
 *         name: peli_id
 *         required: true
 *         schema:
 *           type: integer
 *         description: ID de la película a eliminar.
 *     responses:
 *       204:
 *         description: Película eliminada exitosamente.
 *       404:
 *         description: Película no encontrada.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 error:
 *                   type: string
 *                   example: "pelicula no encontrado"
 *       500:
 *         description: Error en el servidor.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 error:
 *                   type: string
 *                   example: "error en el servidor"
 *                 description:
 *                   type: string
 *                   example: "Descripción detallada del error"
 */
const deletePelicula = async (req, res) => {try {
    const { peli_id } = req.params
    const PeliculaToDestroy = await contenido.findByPk(peli_id)
    if (!PeliculaToDestroy) {
      return res.status(404).json({ error: "pelicula no encontrado "})
    }
   PeliculaToDestroy.destroy()
       return res.status(204).send()
  } catch (error) {
    return res.status(500).json({error: `error en el servidor`, description: error.message })
  }}

  module.exports = { getaallpeliculas, 
    getpeliculasbyId,
    getpeliculabytitle,
    getpeliculabyactor, 
    createpelicula, 
    updatePelicula,
    deletePelicula}
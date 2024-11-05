const express = require('express')
const swaggerJsdoc = require('swagger-jsdoc')
const swaggerUi = require('swagger-ui-express')
const contenidoRouter = require('../routes/contenidoRoutes.js')

const swaggerOptions = {
  swaggerDefinition: {
    openapi: '3.0.0',
    info: {
      title: 'API de  Películas',
      version: '1.0.0',
      description: 'Documentación generada con Swagger para la API de  Películas para la BD trailerflix',
    },
    servers: [
      {
        url: 'http://localhost:3000',
      },
    ],
    components: {
      schemas: {
        contenido: {
          type: 'object',
          properties: {
            peli_id: {
              type: 'integer',
              description: 'ID único de la pelicula',
              example: 1,
            },
            poster: {
              type: 'string',
            },
            titulo: {
              type: 'string',
            },
            Cat_id: {
            type: 'string',
            },
            genero: {
            type: 'integer',
            },
            busqueda: {
            type: 'string',
            },
            resumen: {
            type: 'string',
            },
            temporadas: {
            type: 'string',
            },
            reparto: {
                type: 'string',
            },
            duracion: {
                type: 'integer',
            }, 
            trailer: {
                type: 'string',
            },                    
        },
        required: ['peli_id', 'titulo',]
        },
        actor: {
          type: 'object',
          properties: {
            actor_id: {
              type: 'integer',
              description: 'ID único del actor',
              example: 1,
            },
            nombre: {
              type: 'string'
            },
          },
          required: ['actor_id', 'nombre'],
        },
        contenido_actor: {
          type: 'object',
          properties: {
            peli_id: {
              type: 'integer',
              description: 'ID de la película',
              example: 1,
            },
            actor_id: {
              type: 'integer',
              description: 'ID del actor',
              example: 1,
            },
          },
          required: ['peli_id', 'actor_id'],
        },
        contenido_genero: {
          type: 'object',
          properties:{
            id: {
                type: 'integer',
                description: 'ID de la película',
                example: 1,
              },
              gene_id: {
                type: 'integer',
                description: 'ID del genero',
                example: 1,
              },
            }, 
            required: ['id', 'gene_id'],
        },
        categoria: {
            type: 'object',
            properties: {
                Cat_id: {
                type: 'integer',
                description: 'ID de la categoria',
                example: 1,
              },
              nombre: {
                type: 'string',
                description: 'nombre de la categoria ',
                example: 1,
              },
            },
            required: ['Cat_id', 'nombre'],
        },
        genero: {
            type: 'object',
            properties: {
                gen_id: {
                type: 'integer',
                description: 'ID del genero',
                example: 1,
              },
              nombre: {
                type: 'string',
                description: 'nombre del genero ',
                example: 1,
              },
            },
            required: ['gen_id', 'nombre'], 
    },
   },
 },
},
  apis: ['./controllers/contenidoController.js'],
}


const swaggerDocs = swaggerJsdoc(swaggerOptions)
module.exports = { swaggerDocs, swaggerUi }



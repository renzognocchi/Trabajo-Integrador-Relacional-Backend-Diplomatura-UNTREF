// Model for Actor
const { Sequelize, DataTypes } = require('sequelize');
const sequelize = new Sequelize('trailerflix', 'root', 'root', {
    // host: 'localhost',
    dialect: 'mysql' 
  });

const contenido = sequelize.define( 'contenido',
    {
        peli_id: {
            type: DataTypes.INTEGER, 
            primaryKey: true,
            autoIncrement:true,       
         },
        poster: {
            type: DataTypes.STRING,
            allownull: false,
        },
        titulo: {
            type: DataTypes.STRING,
            allownull: false,
        },
        Cat_id: {
            type: DataTypes.INTEGER,
            allownull: false,
        },     
         genero: {
            type: DataTypes.INTEGER,
            allownull: false,
        },
        busqueda: {
            type: DataTypes.STRING,
            allownull: false,
        },      
        resumen: {
            type: DataTypes.STRING,
            allownull: false,
    },
        temporadas: {
            type: DataTypes.STRING,

    }, reparto: {
        type: DataTypes.STRING,
        allowNull:true, 
            
    }, duracion: {
        type: DataTypes.INTEGER,            
    },
         trailer: {
            type: DataTypes.STRING,
            allownull: false,
        
    }, }, {
        tableName: 'contenido',
        timestamps: false,
    }
)    

module.exports = {contenido, sequelize}
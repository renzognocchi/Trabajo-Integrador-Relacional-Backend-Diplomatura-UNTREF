// Model for Actor
const  {Sequelize, dataTypes}  = require ('sequelize') 
const sequelize = new Sequelize('trailerflix', 'root', 'root', {
    host: 'localhost',
    dialect: 'mysql' 
  });
const contenido_genero = sequelize.define( 'contenido_genero',
    {
        id: {
            type: dataTypes.INTEGER,        
         },
        gene_id: {
            type: dataTypes.INTEGER,
            default: 0,
        }
    },
    {
        tableName: 'contenido_genero',
        timestamps: false,
    }
)    
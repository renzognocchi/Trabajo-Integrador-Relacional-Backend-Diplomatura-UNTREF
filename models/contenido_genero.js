const  {ataTypes}  = require ('sequelize') 
const sequelize = require('../conexion/database')

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

module.exports = genero
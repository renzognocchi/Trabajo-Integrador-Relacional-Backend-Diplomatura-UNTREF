const  {DataTypes}  = require ('sequelize') 
const {sequelize} = require('../conexion/database')
const {contenido} = require('./contenido')
const {genero} = require('./genero')

const contenido_genero = sequelize.define( 'contenido_genero',
    {
        id: {
            type: DataTypes.INTEGER,        
         },
        gene_id: {
            type: DataTypes.INTEGER,
            default: 0,
        }
    },
    {
        tableName: 'contenido_genero',
        timestamps: false,
    }
)    

contenido.belongsto(genero, {through: contenido_genero, foreignKey: 'id_fk'} )
genero.belongsToMany(contenido, {through: contenido_genero, foreignKey: 'gen_id_fk'} )


module.exports = genero
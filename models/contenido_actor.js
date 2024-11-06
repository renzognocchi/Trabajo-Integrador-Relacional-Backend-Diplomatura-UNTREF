const  {DataTypes}  = require ('sequelize') 
const {sequelize} = require('../conexion/database')
const actor = require('./actor')
const contenido = require('./contenido')

const contenido_actor = sequelize.define( 'contenido_actor',
    {
        peli_id: {
            type: DataTypes.INTEGER,
            references: {
                model: contenido,
                key: 'peli_id'
            }        
         },
        actor_id: {
            type: DataTypes.INTEGER,
            allowNull: false, references: {
                model: actor,
                key: 'actor_id'
            }   
        },
},
    {
        tableName: 'contenido_actor',
        timestamps: false,
    }
)    

actor.belongsToMany(contenido, {through: contenido_actor, foreignKey: 'actor_id'} )
contenido.belongsToMany(actor, {through: contenido_actor, foreignKey: 'peli_id'} )


module.exports = contenido_actor
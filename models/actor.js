const  {ataTypes}  = require ('sequelize') 
const sequelize = require('../conexion/database')

const actor = sequelize.define( 'actor',
    {
        actor_id: {
            type: dataTypes.INTEGER,
            primarykey: true,
            autoincrement: true,  
    },
        nombre: {
            type: dataTypes.STRING,
            allownull: false,
    },
},
    {
        tablename:'actor',
        timestamps: false,

    }
)


module.exports = actor
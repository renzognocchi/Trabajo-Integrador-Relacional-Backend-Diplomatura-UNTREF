const  {DataTypes}  = require ('sequelize') 
const {sequelize} = require('../conexion/database')

const actor = sequelize.define( 'actor',
    {
        actor_id: {
            type: DataTypes.INTEGER,
            primarykey: true,
            autoincrement: true,  
    },
        nombre: {
            type: DataTypes.STRING,
            allownull: false,
    },
},
    {
        tablename:'actor',
        timestamps: false,

    }
)



module.exports = actor
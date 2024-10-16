// Model for Actor
const  {sequelize}  = require ('sequelize') 
const  { dataTypes } = require ('sequelize') 

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
        tablename:actor,
        timestamps: false,

    }
)
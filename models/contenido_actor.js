// Model for Actor
const  {sequelize}  = require ('sequelize') 
const  { dataTypes } = require ('sequelize') 

const contenido_actor = sequelize.define( 'contenido_actor',
    {
        peli_id: {
            type: dataTypes.INTEGER,        
         },
        actor_id: {
            type: dataTypes.INTEGER,
            allownull: false,
        },
},
    {
        tableName: 'contenido_actor',
        timestamps: false,
    }
)    
const  {Sequelize, dataTypes}  = require ('sequelize') 
const sequelize = new Sequelize('trailerflix', 'root', 'root', {
    host: 'localhost',
    dialect: 'mysql' 
  });
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
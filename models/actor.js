const  {Sequelize, dataTypes}  = require ('sequelize') 
const sequelize = new Sequelize('trailerflix', 'root', 'root', {
    host: 'localhost',
    dialect: 'mysql' 
  });
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
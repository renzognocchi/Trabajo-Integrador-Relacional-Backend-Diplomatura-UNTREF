// Model for Actor
const  {Sequelize, dataTypes}  = require ('sequelize') 
const sequelize = new Sequelize('trailerflix', 'root', 'root', {
    host: 'localhost',
    dialect: 'mysql' 
  });

const genero = sequelize.define( 'genero',
    {
        gen_id: {
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
        tablename: genero,
        timestamps: false,

    }
)    
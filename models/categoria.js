const  {Sequelize, dataTypes}  = require ('sequelize') 
const sequelize = new Sequelize('trailerflix', 'root', 'root', {
    host: 'localhost',
    dialect: 'mysql' 
  });
const categoria = sequelize.define( 'categoria',
    {
        Cat_id: {
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
        tableName: 'categoria',
        timestamps: false,
    }
)    
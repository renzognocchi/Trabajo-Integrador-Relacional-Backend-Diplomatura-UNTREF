const  {ataTypes}  = require ('sequelize') 
const sequelize = require('../conexion/database')

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

module.exports = categoria
const  {DataTypes}  = require ('sequelize') 
const {sequelize} = require('../conexion/database')

const categoria = sequelize.define( 'categoria',
    {
        Cat_id: {
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
        tableName: 'categoria',
        timestamps: false,
    }
)    



module.exports = {categoria}
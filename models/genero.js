const  {ataTypes}  = require ('sequelize') 
const sequelize = require('../conexion/database')

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

module.exports = genero
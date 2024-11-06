const  {DataTypes}  = require ('sequelize') 
const {sequelize} = require('../conexion/database')

const genero = sequelize.define( 'genero',
    {
        gen_id: {
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
        tablename: genero,
        timestamps: false,

    }
)    

module.exports = genero
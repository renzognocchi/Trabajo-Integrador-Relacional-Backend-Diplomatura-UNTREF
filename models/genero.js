// Model for Actor
const  {sequelize}  = require ('sequelize') 
const  { dataTypes } = require ('sequelize') 

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
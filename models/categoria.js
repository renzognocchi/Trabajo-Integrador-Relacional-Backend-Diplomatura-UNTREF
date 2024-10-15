const  {sequelize}  = require ('sequelize') 
const  { dataTypes } = require ('sequelize') 

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
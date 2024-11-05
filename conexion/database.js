const { Sequelize} = require('sequelize');



const sequelize = new Sequelize ('trailerflix', 'root', 'root', {
    host: 'localhost',
    dialect: 'mysql'
})

 async function start() { try {
    await sequelize.authenticate()
    console.log('Connected  to MySQL database')
    await sequelize.sync()
} catch (error) {
    console.error('Error connecting to the database:', error)
}   
}

start()

module.exports = {sequelize};
    
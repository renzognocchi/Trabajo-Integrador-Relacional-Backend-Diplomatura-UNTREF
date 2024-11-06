const { Sequelize} = require('sequelize');
const dotenv = require('dotenv')
const ENV = process.env.NODE_ENV || 'local'
dotenv.config({ path: `.env.${ENV}` })

const sequelize = new Sequelize(
  process.env.DB_NAME,
  process.env.DB_USER,
  process.env.DB_PASSWORD,
  {
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    dialect: process.env.DB_DIALECT
  }
)

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
    
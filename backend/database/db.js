const Sequelize = require('sequelize')
const db = {}
var database = require('../models');
const sequelize = new Sequelize("database_groupomania", "root", "", {
    host: "localhost",
    dialect: "mysql",
    pool: {
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 10000
    }
})

db.sequelize = sequelize
db.Sequelize = Sequelize

database.sequelize
  .authenticate()
  .then(() => {
    console.log('Nice ! This seems to work just fine');
  })
  .catch(err => {
    console.error('Unable to connect to the database:', err);
  });

module.exports = db
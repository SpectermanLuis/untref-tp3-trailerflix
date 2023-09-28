const { Sequelize } = require('sequelize');

console.log(process.env.DBUSER)

const sequelize = new Sequelize(process.env.DATABASE, process.env.DBUSER, process.env.DBPASSWORD, {
  host: process.env.SERVER_HOST,
  dialect: 'mysql',
});

module.exports = sequelize;
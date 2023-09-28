// Modelo para la tabla 'generos'

const { DataTypes } = require('sequelize');
const sequelize = require('../../src/conection/connection');

const Generos = sequelize.define('Generos', {
  idGenero: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  nombreGenero: {
    type: DataTypes.STRING(50),
    allowNull: false,
  },
},{
    tableName: 'generos',
    timestamps: false,
  });

module.exports = Generos;

// Modelo para la tabla 'categorias'

const { DataTypes } = require('sequelize');
const sequelize = require('../../src/conection/connection');

const Categorias = sequelize.define('Categorias', {
  idCategoria: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  nombreCategoria: {
    type: DataTypes.STRING(50),
    allowNull: false,
  },
},{
    tableName: 'Categorias',
    timestamps: false,
  });


module.exports = Categorias;

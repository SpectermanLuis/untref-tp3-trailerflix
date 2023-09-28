// Modelo para la tabla 'catalogo'

const { DataTypes } = require('sequelize');
const sequelize = require('../../src/conection/connection');


const Catalogo = sequelize.define('Catalogo', {
    idCatalogo: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    poster: {
      type: DataTypes.STRING(255),
      allowNull: false,
    },
    titulo: {
      type: DataTypes.STRING(255),
      allowNull: false,
    },
    resumen: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
    temporadas: {
      type: DataTypes.STRING(3),
      allowNull: false,
    },
    idCategoria: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
  trailer: {
      type: DataTypes.STRING(255),
      allowNull: false,
    },
  });
  
  module.exports = Catalogo;
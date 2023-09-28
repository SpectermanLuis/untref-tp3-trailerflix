// Modelo para la tabla 'actricesyactores'

const { DataTypes } = require('sequelize');
const sequelize = require('../../src/conection/connection');

const Actores = sequelize.define('Actores', {
  idActor: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  nombreActor: {
    type: DataTypes.STRING(100),
    allowNull: false,
  },
},{
    tableName: 'actricesyactores',
    timestamps: false,
  });

module.exports = Actores;

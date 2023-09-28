// modelo de la vista del catalogo

const { DataTypes } = require('sequelize');
const sequelize = require('../../src/conection/connection');

const VistaCatalogo = sequelize.define('vistacatalogo', {
  pelicula_id: {
    type: DataTypes.INTEGER,
  },
  pelicula_poster: {
    type: DataTypes.STRING(255),
  },
  pelicula_nombre: {
    type: DataTypes.STRING(255),
  },
  pelicula_categoria: {
    type: DataTypes.STRING(50),
  },
  pelicula_generos: {
    type: DataTypes.TEXT,
  },
  pelicula_resumen: {
    type: DataTypes.TEXT,
  },
  pelicula_temporadas: {
    type: DataTypes.STRING(3),
  },
  pelicula_actores: {
    type: DataTypes.TEXT,
  },
  pelicula_trailer: {
    type: DataTypes.STRING(255),
  },

},{
    tableName: 'vista_peliculas_actores_generos',
    timestamps: false,
    freezeTableName: true,
  });

module.exports = VistaCatalogo;
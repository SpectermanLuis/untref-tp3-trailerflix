// relaciones entre tablas
// algunas estan definidas pero no se usan 
// ya que se uso la vista general del catalogo como base para las consultas

const Categorias = require("../models/categorias")
const Actores    = require("../models/actores")
const Generos    = require("../models/generos")
const Catalogo   = require("../models/catalogo")

// Relación entre 'catalogo' y 'categorias'
Catalogo.belongsTo(Categorias,{ foreignKey: 'idCategoria' }); 
// Categorias.hasMany(Catalogo); 

// Relación entre 'catalogo' y 'catalogoGenero'
Catalogo.belongsToMany(Generos, { through: 'catalogoGenero', foreignKey: 'idCatalogo' });
Generos.belongsToMany(Catalogo, { through: 'catalogoGenero', foreignKey: 'idGenero' });

// Relación entre 'catalogo' y 'catalogoActoresReparto'
Catalogo.belongsToMany(Actores, { through: 'catalogoActoresReparto', foreignKey: 'idCatalogo' });
Actores.belongsToMany(Catalogo, { through: 'catalogoActoresReparto', foreignKey: 'idActor' });

module.exports = { Actores, Catalogo, Generos,Categorias }

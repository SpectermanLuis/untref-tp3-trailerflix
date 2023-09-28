const dotenv = require('dotenv');

// Se establece ubicación del archivo .env
const path = require('path');
require('dotenv').config({ path: path.join(__dirname, '..', '.env') });

const express = require('express');
const { Op } = require("sequelize")
const sequelize = require("../src/conection/connection")
const { literal } = require("sequelize");

const { Categorias, Actores, Generos, Catalogo } = require("../src/models/index")
const VistaCatalogo = require("../src/models/vistacatalogo")

/* const Categorias = require("../src/models/categorias")
const Actores = require("../src/models/actores")
const Generos = require("../src/models/generos")
const Catalogo = require("../src/models/catalogo")
 */
const server = express();

// Middlewares
server.use(express.json());

// traer todas las categorias
server.get("/categorias", async (req, res) => {

    try {
        const categorias = await Categorias.findAll({
            attributes: ["idCategoria", "NombreCategoria"]
        })

        if (categorias) {
            res.status(200).send(JSON.stringify(categorias, null, '\t'));
        } else {
            res.status(400).send({ message: "No hay Categorias para mostrar" })
        }
    }
    catch (error) {
        res.status(500).send({ message: 'Hubo un error en el servidor', err: `${err}` });
    }
})

// traer catalogo completo - formato similar al json de inicio
server.get("/catalogo", async (req, res) => {

    try {
        const catalogo = await VistaCatalogo.findAll({
                attributes: [["pelicula_id","Id"],
                [literal(`CONCAT('${process.env.URL_IMAGENES}', pelicula_poster)`), "Poster"],
                ["pelicula_nombre","Titulo"],
                ["pelicula_categoria","Categoria"],
                ["pelicula_generos","Genero"],
                ["pelicula_resumen","Resumen"],
                ["pelicula_temporadas","Temporadas"],
                ["pelicula_actores","Reparto"],
                ["pelicula_trailer","Trailer"]            
            ]
            })

        res.status(200).send(JSON.stringify(catalogo, null, '\t'));

    } catch (error) {
        console.log(error)
        res.status(500).send({ message: 'Hubo un error en el servidor', err: `${err}` });
    }
});


// trae un elemento del catalogo por id
server.get("/catalogo/:id", async (req, res) => {

    const id_buscar = req.params.id;

    if (Number.isNaN(Number(id_buscar))) {
        res.status(400).send({ message: `Error. El Id ${id_buscar} no es valido. Debe ser un valor numerico.` })
        return
    }


    try {

        let options = {
            attributes: [["pelicula_id","Id"],
            [literal(`CONCAT('${process.env.URL_IMAGENES}', pelicula_poster)`), "Poster"],
            ["pelicula_nombre","Titulo"],
            ["pelicula_categoria","Categoria"],
            ["pelicula_generos","Genero"],
            ["pelicula_resumen","Resumen"],
            ["pelicula_temporadas","Temporadas"],
            ["pelicula_actores","Reparto"],
            ["pelicula_trailer","Trailer"]            
        ]
    }
    
        if (id_buscar) options.where = { pelicula_id: { [Op.eq]: Number(id_buscar) } }

        const peliculaserieindividual = await VistaCatalogo.findAll(options)

        if (peliculaserieindividual.length != 1) {
            res.status(404).send({ message: `Error. El Id ${id_buscar} no se encuentra en el catalogo.` })
            return
        }

        res.status(200).send(JSON.stringify(peliculaserieindividual, null, '\t'));
    } catch (err) {
        res.status(500).send({ message: 'Hubo un error en el servidor', err: `${err}` });
    }
})


// traer catalogo filtrando por nombre de pelicula/serie
server.get("/catalogo/nombre/:nombre", async (req, res) => {

    const nombre_buscar = req.params.nombre;

    if (nombre_buscar.length > 255) {
        res.status(400).send({ message: `Error. Longitud Parametro Ingresado supera longitud maxima` })
        return
    }

    let options = {
        attributes: [["pelicula_id","Id"],
        [literal(`CONCAT('${process.env.URL_IMAGENES}', pelicula_poster)`), "Poster"],
        ["pelicula_nombre","Titulo"],
        ["pelicula_categoria","Categoria"],
        ["pelicula_generos","Genero"],
        ["pelicula_resumen","Resumen"],
        ["pelicula_temporadas","Temporadas"],
        ["pelicula_actores","Reparto"],
        ["pelicula_trailer","Trailer"]            
    ]
}

    if (nombre_buscar) options.where = { pelicula_nombre: { [Op.substring]: nombre_buscar, } }

    try {
        const peliculaserie_nombre = await VistaCatalogo.findAll(options)

        if (peliculaserie_nombre.length === 0) {
            res.status(404).send({ message: `Error. No hay coincidencias en el catalogo con el parametro de busqueda  ${nombre_buscar}.` })
            return
        }
        res.status(200).send(JSON.stringify(peliculaserie_nombre, null, '\t'));
    } catch (err) {
        res.status(500).send({ message: 'Hubo un error en el servidor', err: `${err}` });
        // next(err)
    }
})

// traer catalogo filtrado por genero 
server.get("/catalogo/genero/:genero", async (req, res) => {

    const genero_buscar = req.params.genero;

    if (genero_buscar.length > 50) {
        res.status(400).send({ message: `Error. Longitud Parametro Ingresado supera longitud maxima` })
        return
    }

    try {

        // buscar en genero para saber si se ingreso algo valido 
        // antes de buscar en la vista 
        let option_genero = {
            attributes: ["idGenero", "nombreGenero"]
        }

        if (genero_buscar) option_genero.where = { nombreGenero: { [Op.substring]: genero_buscar, } }

        const generoexiste = await Generos.findAll(option_genero)

        if (generoexiste.length === 0) {
            res.status(404).send({ message: `Error. ${genero_buscar} No existe como genero valido.` })
            return
        }

        // buscar en la vista por genero una vez validado que se esta buscando 
        // un genero correcto 
        let options = {
            attributes: [["pelicula_id","Id"],
            [literal(`CONCAT('${process.env.URL_IMAGENES}', pelicula_poster)`), "Poster"],
            ["pelicula_nombre","Titulo"],
            ["pelicula_categoria","Categoria"],
            ["pelicula_generos","Genero"],
            ["pelicula_resumen","Resumen"],
            ["pelicula_temporadas","Temporadas"],
            ["pelicula_actores","Reparto"],
            ["pelicula_trailer","Trailer"]            
        ]
        }

        if (genero_buscar) options.where = { pelicula_generos: { [Op.substring]: genero_buscar, } }

        const peliculaserie_genero = await VistaCatalogo.findAll(options)

        if (peliculaserie_genero.length === 0) {
            res.status(404).send({ message: `Error. No hay coincidencias en el catalogo con el genero de busqueda  ${genero_buscar}.` })
            return
        }

        res.status(200).send(JSON.stringify(peliculaserie_genero, null, '\t'));
    } catch (err) {
        console.log(err)
        res.status(500).send({ message: 'Hubo un error en el servidor', err: `${err}` });
        // next(err)
    }
})

// traer catalogo filtrado por categoria 
server.get("/catalogo/categoria/:categoria", async (req, res) => {

    const categoria_buscar = req.params.categoria;

    if (categoria_buscar.length > 50) {
        res.status(400).send({ message: `Error. Longitud Parametro Ingresado supera longitud maxima` })
        return
    }

    let options = {
        attributes: [["pelicula_id","Id"],
        [literal(`CONCAT('${process.env.URL_IMAGENES}', pelicula_poster)`), "Poster"],
        ["pelicula_nombre","Titulo"],
        ["pelicula_categoria","Categoria"],
        ["pelicula_generos","Genero"],
        ["pelicula_resumen","Resumen"],
        ["pelicula_temporadas","Temporadas"],
        ["pelicula_actores","Reparto"],
        ["pelicula_trailer","Trailer"]            
    ]
}

    if (categoria_buscar) options.where = { pelicula_categoria: { [Op.substring]: categoria_buscar, } }

    try {
        const peliculaserie_categoria = await VistaCatalogo.findAll(options)

        if (peliculaserie_categoria.length === 0) {
            res.status(404).send({ message: `Error. No hay coincidencias en el catalogo con la categoria de busqueda  ${categoria_buscar}.` })
            return
        }
        res.status(200).send(JSON.stringify(peliculaserie_categoria, null, '\t'));
    } catch (err) {
        res.status(500).send({ message: 'Hubo un error en el servidor', err: `${err}` });
        next(err)
    }
})

server.get("/actores", async (req, res) => {
    try {
        const actores = await Actores.findAll({ attributes: ["idActor", "nombreActor"] })
        res.status(200).send(JSON.stringify(actores, null, '\t'));

    } catch (err) {
        res.status(500).send({ message: 'Hubo un error en el servidor', err: `${err}` });
        // next(err)
    }
})


server.get("/catalogo/pelicula-actor/:actor", async (req, res) => {

    const actor_buscar = req.params.actor;


    try {

        let options = {
            attributes: [["pelicula_id","Id"],
            [literal(`CONCAT('${process.env.URL_IMAGENES}', pelicula_poster)`), "Poster"],
            ["pelicula_nombre","Titulo"],
            ["pelicula_categoria","Categoria"],
            ["pelicula_generos","Genero"],
            ["pelicula_resumen","Resumen"],
            ["pelicula_temporadas","Temporadas"],
            ["pelicula_actores","Reparto"],
            ["pelicula_trailer","Trailer"]            
        ]
        }
    
        if (actor_buscar) options.where = { pelicula_actores: { [Op.substring]: actor_buscar, } }

        const peliculasdeunactor = await VistaCatalogo.findAll(options)

        if (peliculasdeunactor.length === 0) {
            res.status(404).send({ message: `Error. No hay coincidencias en el catalogo con el actor/actriz a buscar ${actor_buscar}.` })
            return
        }

        res.status(200).send(JSON.stringify(peliculasdeunactor, null, '\t'));

    } catch (err) {
        res.status(500).send({ message: 'Hubo un error en el servidor', err: `${err}` });
        // next(err)
    }
})


// Control de rutas inexistentes
server.use('*', (req, res) => {
    res.status(404).send({ error: `La URL indicada no existe en este servidor` });
});

// Manejo de errores
server.use((err, req, res, next) => {
    console.log(err)
    res.send(err)
})


// Método oyente de solicitudes
sequelize.authenticate().then(() => {
    sequelize.sync({ force: false }).then(() => {
        server.listen(process.env.SERVER_PORT, process.env.SERVER_HOST, () => {
            console.log(`El servidor está escuchando en: http://${process.env.SERVER_HOST}:${process.env.SERVER_PORT}`);
        });
    }).catch(() => {
        console.log("Hubo un problema con la sincronización con la base de datos.")
    })
}).catch(() => {
    console.log("Hubo un problema con la conección a la base de datos.")
});

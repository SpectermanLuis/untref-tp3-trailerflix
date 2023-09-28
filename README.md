![imagen](trailerflix.jpg "Logo")
# API

Aplicacion de consulta de catalogos de peliculas. Entre otros datos estan generos , categorias y repacto de actores de cada pelicula. Esta construida sobre una arquitectura API RESTful

#### Especificaciones
- Servidor: http://localhost:8080
- Versión: 1.0.0
- Licencia: MIT
- Autor: Specterman Luis Omar

#### Requerimientos
- Node.js v18.16.0 o superior
- Mysql 
- IDE - Visual Studio Code v1.78.2 o superior


#### Consideraciones 
- En .env se agrego una variable de entorno *`URL_IMAGENES`* donde se ingresa la parte de la url que se debe agregar al campo poster de la tabla catalogo. Esta union se hace en el momento de traer los datos de la tabla .

- En el trabajo practico si bien se definieron los modelos y relaciones de todas las tablas ( que no se usaron ), a efectos practicos en las consultas se tomo como base a la vista generada sobre la tabla catalogo debido a que muchos conceptos de la ultima clase sobre relaciones y sequelize no logre asimilarlos con el poco tiempo de entrega del trabajo practico. Opte por una solucion , no se si ideal , pero si eficaz. 

- La carga inicial de los datos se realizo en forma semi manual. Se importo el json base a Excel y de ahi se exporto en forma csv.  Ese archivo csv se trabajo en Visual Foxpro para generar el script de creacion de la base de datos como asi tambien la carga de los datos.

- En el archivo package.json , en la linea   **"start": "node --watch --no-warnings ./src/server.js"**  tuve que eliminar el "--watch" porque nunca levanto el servidor estando esa opcion.

- El archivo ***trailerflix.sql*** , es el dump de la base de datos completa para su carga inicial tanto de estructura como los datos de todas las tablas.
 

#### Estructura de directorios
``` tree
    ├── node_modules
    ├── src
    │   ├── conection
    |   |        └── connection.js
    │   │      
    |   |── models
    │   │        └── actores.js
    │   │            catalogo.js
    │   │            categorias.js
    │   │            generos.js
    │   │            index.js
    │   │            vistacatalogo.js    
    │   │
    │   │── server.js  
    ├── .env
    ├── .env.dist
    ├── .eslintrc.json
    ├── .gitignore
    ├── package.json
    ├── package-lock.json 
    ├── trailerflix.jpg
    ├── trailerflix.sql      dump con script creacion base de datos y carga de datos 
    └── README.md
```

---
### CONFIGURACION DE ENTORNO
Se debe hacer una copia del archivo **.env.dist** y renombrarlo como **.env**. Con respecto a su contenido, es necesario asignar los valores a correspondientes a las variables `SERVER_PORT`,  `SERVER_HOST`,  `DATABASE` ,  `DBUSER` ,  `DBPASSWORD`  y  `URL_IMAGENES`

Ejemplo

`SERVER_PORT`  = 8080 puerto de escucha del servidor

`SERVER_HOST`  = localhost direccion del servidor

`DATABASE`     = nombre de la base de datos ( en el tp TRAILERFLIX)

`DBUSER`       = nombre del usuario de la base de datos

`DBPASSWORD`   = password de la base de datos

`URL_IMAGENES` = http://directorio_imagenes   parte de la url para completar con el campo
                                              poster de la tabla catalogo



---
### ENDPOINTS
Endpoints para distintas formas de busqueda y filtrado dentro del catalogo de peliculas/series y algunos para mostrar datos de las principales tablas


#### Métodos HTTP
| Tipo | URI | Descripción |
|------|-----|-------------|
| GET | http://localhost:8080/categorias | Obtener registros de todas las categorias |
| GET | http://localhost:8080/catalogo   | Obtiene catalogo completo ( similar json base )|
| GET | http://localhost:8080/catalogo/:id   | Obtiene un elemento especifico del catalogo |
| GET | http://localhost:8080/catalogo/nombre/:nombre   | Obtiene los elementos del catalogo que su nombre coincida con el parametro de busqueda ( puede ser parcial ) |
| GET | http://localhost:8080/catalogo/genero/:genero   | Obtiene los elementos del catalogo que su genero coincida con el parametro de busqueda ( puede ser parcial ) |
| GET | http://localhost:8080/catalogo/categoria/:categoria   | Obtiene los elementos del catalogo que su categoria coincida con el parametro de busqueda ( puede ser parcial ) |
| GET | http://localhost:8080/actores | Obtener registros de todos los actores |
| GET | http://localhost:8080/catalogo/pelicula-actor/:actor   | Obtiene los elementos del catalogo en  donde el actor/actriz ingresado se encuentre en su reparto|


#### Método GET:
- Request:
  - Parámetros a ingresar:  ( se detallan de todos los GET  y un valor de ejemplo )
    - id=15        *(tipo: int. Trae pelicula/serie con id coincidente)* 
    - nombre=Avengers        *(tipo: string. Trae peliculas/series que su nombre contenga al parametro de busqueda)* 
    - genero=drama            *(tipo: string. Trae peliculas/series cuyo genero coincida con el parametro de busqueda (total o parcialmente))*
    - categoria=serie              *(tipo: string. Trae elementos del catalogo cuya categoria coincida con el parametro de busqueda)*
    - actor=Watson *(tipo: string. Trae los elementos del catalogo en los que en su reparto se encuentre el actor indicado en el parametro de busqueda)* 

- Response:


  - Código HTTP: **200** *Ok*  cualquier busqueda que devuelva un elemento del catalogo
    ``` json
    [
      {
       "pelicula_id": 18,
       "pelicula_poster": "http://pagina_pelicula/directorio_imagen/posters/18.jpg",
       "pelicula_nombre": "Ava",
       "pelicula_categoria": "Película",
        "pelicula_generos": "Acción,Drama,Suspenso",
        "pelicula_resumen": "Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas,que viaja por todo el mundo acabando con aquellos objetivos que nadie más puede derribar. Cuando uno de sus encargos sale mal, Ava tendrá que luchar por una vida.",
       "pelicula_temporadas": "N/A",
       "pelicula_actores": "Colin Farrell,Common,Geena Davis,Ioan Gruffudd,Jessica Chastain,John Malkovich"
      }
    ]
    ```
  
  - Código HTTP: **200** *Ok*  listado de categorias
    ``` json
    [
      {
       "idCategoria": 1,
       "NombreCategoria": "Serie"
      }
    ]
    ```


  - Código HTTP: **200** *Ok*  listado de actores
    ``` json
    [
      {
       "idActor": 22,
       "nombreActor": "Candice Patton"   
      }
    ]
    ```

  - Código HTTP: **400** Errores de datos   **404** Datos no encontrados
    
    - Endpoint Categoria
        **400**  No hay categorias a mostrar

    - Endpoint Catalogo/id
        **400**  Error en id - tipo valor invalido
        **404**  No existe identificacion buscada

    - Endpoint Catalogo/nombre
        **400**  Error en datos ingresados
        **404**  No hay coincidencias de busqueda - No hay elementos a mostrar

    - Endpoint Catalogo/genero
     
        **400**  Error en datos ingresados
        **404**  No Existe genero buscado
        **404**  No hay coincidencias de busqueda - No hay elementos a mostrar

    - Endpoint Catalogo/categoria
     
        **400**  Error en datos ingresados
        **404**  No hay coincidencias de busqueda - No hay elementos a mostrar

    - Endpoint Catalogo/actor
     
        **404**  No hay coincidencias de busqueda - No hay elementos a mostrar


  - Código HTTP: **500** *Hubo un error en el servidor*


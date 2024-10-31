
# titulo del proyecto

El proyecto es una API crud basica usando Node.js, Express y Mysql. 
 A traves de los distintos endpoints permite realizar las operaciones de lectura, creacion, actualizacion y eliminacion a una base de datos realacional que gestiona informacion sobre peliculas. 



## Contenidos
- Instalacion
- Configuración
- Uso
- Endpoints
- Contribuciones
- Licencia

## Instalación

 Clona el repositorio:
  
  https://github.com/renzognocchiTrabajo-Integrador-Relacional-Backend-Diplomatura-UNTREF.git


 instala las dependencias 
  
    npm install 

Configura tu base de datos MySQL e importa la estructura de ejemplo ubicada en trailerflix.sql

## Configuración

1. Configura tus variables para la conexión a MySQL:

DB_HOST=localhost
DB_USER=tu_usuario
DB_PASSWORD=tu_contraseña
DB_NAME=nombre_de_tu_base_de_datos
PORT=3000

2. Inicia el servidor:

node app.js

La API esta disponible en http://localhost:3000.

## Uso 

Con esta API, puedes realizar operaciones CRUD en una tabla de películas.

- Obtener todas las peliculas 
curl http://localhost:3000/contenido 

-obtener una pelicula por ID.
curl http://localhost:3000/contenido/21 

-filtrar una pelicula por el titulo 
curl http://localhost:3000/contenido/nombre/The Crown

-crear una nueva pelicula 
curl -X POST http://localhost:3000/contenido/pelicula Content-Type: application/json {}

-actualizar una pelicula 
curl -X PUT http://localhost:3000/contenido/pelicula/21
Content-Type: application/json {}

-eliminar una pelicula por ID 
curl -X DELETE http://localhost:3000/contenido/pelicula/107

## Endpoints

Método	Endpoint	Descripción
GET	/peliculas	                Obtiene todas las películas
GET	/peliculas/:id	            Obtiene una película por id
POST	/contenido/pelicula	    Crea una nueva película
PUT	/contenido/pelicula/:id	    Actualiza una película por id
DELETE	contenido/pelicula/:id	Elimina una película por id

## Licencia

Este proyecto está bajo la licencia MIT. Consulta el archivo LICENSE para más detalles.


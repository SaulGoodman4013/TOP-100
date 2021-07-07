-- crear base de datos
DROP DATABASE peliculas;

CREATE DATABASE peliculas;


-- \copy peliculas FROM 'peliculas.csv'

\copy pelis FROM 'peliculas.csv' csv header;

-- creando tabla peliculas 

CREATE TABLE pelis(
    id INT,
    pelicula VARCHAR(100),
    año_estreno VARCHAR(4),
    director VARCHAR(100)
    PRIMARY KEY(id)
    );

-- creando tabla de repartos 
CREATE TABLE reparto(
    id INT,
    actor VARCHAR(100));
    FOREIGN KEY (id) REFERENCES pelis(id);


\copy reparto FROM 'reparto.csv' csv header;



-- SELECT * FROM pelis;
-- SELECT * FROM reparto;

-- ID DE TITANIC 

-- SELECT id
-- FROM pelis 
-- WHERE pelicula = 'Titanic'
-- GROUP BY id;

-- -- ACTORES DE TITANIC 
-- SELECT actor
-- FROM reparto
-- WHERE id = 2 
-- GROUP BY actor

-- PELICULAS EN LAS QUE APARECE HARRISON FORD

-- SELECT * 
-- FROM reparto 
-- WHERE actor = 'Harrison Ford' 

-- PELICULAS ESTRENADAS EN LOS AÑOS 1990 y 1999 ordenadas por titulo 
-- asccendente 

SELECT pelicula 
FROM pelis 
WHERE año_estreno BETWEEN 1990 and 1999
ORDER BY ASC; 


-- consuulta sql que muestre longitud de los titulos 

SELECT pelicula LENGTH
FROM pelis 
GROUP BY pelicula ;

-- Consultar longitud mas grande entre todos los titulos de peliculas 

SELECT * FROM pelis WHERE pelicula LENGTH 
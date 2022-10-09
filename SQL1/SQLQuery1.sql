--SELECT * FROM PERSONAS



--2.2 Seleccione todas las personas que contengan en su primer nombre la palabra “mon” y cuya fecha de nacimiento sea mayor al 2000-01-01
SELECT * FROM PERSONAS WHERE PrimerNombre like '%mon' AND FechaNacimiento > '2000-01-01'
SELECT * FROM PERSONAS WHERE PrimerNombre like '%mon' AND FechaNacimiento >CAST ('2000-01-01' AS datetime)

--2.3 Agregue una nueva columna a la tabla personas llamada “NumeroHijos” de tipo numérico
ALTER TABLE PERSONAS
ADD NumeroHijos NUMERIC(18,0)

--2.4 Genere información aleatoria sobre la columna NumeroHijos utilizando el siguiente comando:
UPDATE PERSONAS SET NumeroHijos= ABS(CHECKSUM(NEWID()) % 10)


-- 2.5 Calcule la cantidad de hijos totales de todas las personas en la base de datos
SELECT SUM(NumeroHijos) FROM PERSONAS

-- 2.6 Calcule la cantidad de hijos totales de todas las personas en la base de datos por ciudad de nacimiento
SELECT SUM(NumeroHijos),CiudadNacimiento FROM PERSONAS GROUP BY CiudadNacimiento ORDER BY CiudadNacimiento

--2.7 Calcule cuántas personas no tienen hijos
SELECT COUNT(*) FROM PERSONAS WHERE NumeroHijos=0

--2.8 Calcule cuántas personas por ciudad de nacimiento tienen más de 3 hijos
SELECT COUNT(*),CiudadNacimiento FROM PERSONAS WHERE  NumeroHijos>3 GROUP BY CiudadNacimiento 

--2.9 Calcule cuántas personas que hayan nacido entre el año 1990 y 2000 tienen más de 2 hijos
SELECT COUNT(*) FROM PERSONAS WHERE NumeroHijos>2 AND  YEAR(FechaNacimiento)  BETWEEN  '1990' AND '2000'

--2.10 Calcule cuántas personas por ciudad de nacimiento tienen un salario menor de 2.000.000
SELECT COUNT(*), CiudadNacimiento FROM PERSONAS WHERE	Salario<2000000 GROUP BY CiudadNacimiento 

SELECT CiudadNacimiento FROM PERSONAS  GROUP BY CiudadNacimiento 
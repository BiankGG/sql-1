-- Ejercicio 1: Seleccionar todos los usuarios y sus lenguajes asociados.
-- Tu respuesta aquí

SELECT nombre,lenguaje FROM usuarios_lenguajes;
'Juan', 'Java'
'Maria', 'JavaScript'
'Carlos', 'Python'
'Laura', 'C++'
'Pedro', 'Ruby'
'Ana', 'SQL'
'Miguel', 'PHP'
'Sofia', 'Swift'
'Javier', 'TypeScript'
'Luis', 'Go'
'Elena', 'C#'
'Daniel', 'HTML'
'Paula', 'CSS'
'Alejandro', 'R'
'Carmen', 'Kotlin'
'Adrian', 'Objective-C'
'Isabel', 'Scala'
'Hector', 'Perl'
'Raquel', 'Shell'
'Alberto', 'VB.NET'


-- Ejercicio 2: Contar cuántos usuarios hay en total.
-- Tu respuesta aquí
SELECT COUNT(id_usuario) FROM usuarios_lenguajes;

'20'

 
-- Ejercicio 3: Seleccionar los usuarios mayores de 30 años.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE edad > 30;

'2', 'Maria', 'Lopez', 'maria.lopez@example.com', '32', 'JavaScript'
'6', 'Ana', 'Hernandez', 'ana.hernandez@example.com', '35', 'SQL'
'9', 'Javier', 'Diaz', 'javier.diaz@example.com', '31', 'TypeScript'
'12', 'Daniel', 'Romero', 'daniel.romero@example.com', '33', 'HTML'
'16', 'Adrian', 'Molina', 'adrian.molina@example.com', '34', 'Objective-C'
'19', 'Raquel', 'Serrano', 'raquel.serrano@example.com', '32', 'Shell'



-- Ejercicio 4: Contar cuántos usuarios saben JavaScript.
-- Tu respuesta aquí
SELECT *FROM usuarios_lenguajes WHERE lenguaje LIKE '%javaScript';

 '2', 'Maria', 'Lopez', 'maria.lopez@example.com', '32', 'JavaScript'


-- Ejercicio 5 OPCION 2: Seleccionar los usuarios que tienen 28 años. 
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE edad = 28;

'1', 'Juan', 'Gomez', 'juan.gomez@example.com', '28', 'Java'
'7', 'Miguel', 'Perez', 'miguel.perez@example.com', '28', 'PHP'
'14', 'Alejandro', 'Ruiz', 'alejandro.ruiz@example.com', '28', 'R'
'20', 'Alberto', 'Reyes', 'alberto.reyes@example.com', '28', 'VB.NET'


-- Ejercicio 6: Encontrar el usuario con el email 'juan.gomez@example.com'.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE email LIKE 'juan.gomez@example.com';
'1', 'Juan', 'Gomez', 'juan.gomez@example.com', '28', 'Java'


-- Ejercicio 7: Seleccionar los usuarios que saben Java y tienen menos de 25 años.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE lenguaje LIKE '%java' AND edad < 25;

# id_usuario, nombre, apellido, email, edad, lenguaje (0)



-- Ejercicio 8 OPCION 2: Contar cuántos usuarios con edades
-- diferentes saben el lenguaje 'Java'.
-- Tu respuesta aquí
SELECT COUNT(DISTINCT edad) FROM usuarios_lenguajes WHERE lenguaje LIKE '%java';

'1'

-- Ejercicio 9: Seleccionar los usuarios que no saben ningún lenguaje.
-- Tu respuesta aquí


-- Ejercicio 10: Encontrar el nombre y edad del usuario más joven.
-- Tu respuesta aquí
SELECT nombre,edad FROM usuarios_lenguajes WHERE edad = (SELECT MIN(EDAD) FROM usuarios_lenguajes);
'Pedro', '22'



-- Ejercicio 11: Seleccionar los usuarios y sus edades ordenados por edad de forma descendente.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes ORDER BY nombre,edad DESC;
'16', 'Adrian', 'Molina', 'adrian.molina@example.com', '34', 'Objective-C'
'20', 'Alberto', 'Reyes', 'alberto.reyes@example.com', '28', 'VB.NET'
'14', 'Alejandro', 'Ruiz', 'alejandro.ruiz@example.com', '28', 'R'
'6', 'Ana', 'Hernandez', 'ana.hernandez@example.com', '35', 'SQL'
'3', 'Carlos', 'Rodriguez', 'carlos.rodriguez@example.com', '25', 'Python'
'15', 'Carmen', 'Vega', 'carmen.vega@example.com', '29', 'Kotlin'
'12', 'Daniel', 'Romero', 'daniel.romero@example.com', '33', 'HTML'
'11', 'Elena', 'Moreno', 'elena.moreno@example.com', '29', 'C#'
'18', 'Hector', 'Ortega', 'hector.ortega@example.com', '30', 'Perl'
'17', 'Isabel', 'Gutierrez', 'isabel.gutierrez@example.com', '26', 'Scala'
'9', 'Javier', 'Diaz', 'javier.diaz@example.com', '31', 'TypeScript'
'1', 'Juan', 'Gomez', 'juan.gomez@example.com', '28', 'Java'
'4', 'Laura', 'Fernandez', 'laura.fernandez@example.com', '30', 'C++'
'10', 'Luis', 'Sanchez', 'luis.sanchez@example.com', '27', 'Go'
'2', 'Maria', 'Lopez', 'maria.lopez@example.com', '32', 'JavaScript'
'7', 'Miguel', 'Perez', 'miguel.perez@example.com', '28', 'PHP'
'13', 'Paula', 'Torres', 'paula.torres@example.com', '24', 'CSS'
'5', 'Pedro', 'Martinez', 'pedro.martinez@example.com', '22', 'Ruby'
'19', 'Raquel', 'Serrano', 'raquel.serrano@example.com', '32', 'Shell'
'8', 'Sofia', 'Garcia', 'sofia.garcia@example.com', '26', 'Swift'


-- Ejercicio 12: Contar cuántos usuarios tienen más de 28 años.
-- Tu respuesta aquí
 SELECT COUNT(id_usuario) FROM usuarios_lenguajes WHERE edad > 28;
 '10'


-- Ejercicio 13: Seleccionar los usuarios cuyo apellido contiene la letra 'a'.
-- Tu respuesta aquí

SELECT * FROM usuarios_lenguajes WHERE apellido LIKE '%a%';
'4', 'Laura', 'Fernandez', 'laura.fernandez@example.com', '30', 'C++'
'5', 'Pedro', 'Martinez', 'pedro.martinez@example.com', '22', 'Ruby'
'6', 'Ana', 'Hernandez', 'ana.hernandez@example.com', '35', 'SQL'
'8', 'Sofia', 'Garcia', 'sofia.garcia@example.com', '26', 'Swift'
'9', 'Javier', 'Diaz', 'javier.diaz@example.com', '31', 'TypeScript'
'10', 'Luis', 'Sanchez', 'luis.sanchez@example.com', '27', 'Go'
'15', 'Carmen', 'Vega', 'carmen.vega@example.com', '29', 'Kotlin'
'16', 'Adrian', 'Molina', 'adrian.molina@example.com', '34', 'Objective-C'
'18', 'Hector', 'Ortega', 'hector.ortega@example.com', '30', 'Perl'
'19', 'Raquel', 'Serrano', 'raquel.serrano@example.com', '32', 'Shell'



-- Ejercicio 14: Encontrar el lenguaje más popular entre los usuarios menores de 30 años.
-- Tu respuesta aquí


-- Ejercicio 15: Seleccionar el usuario  mayor de 25 y que sepa el lenguaje 'TypeScript'.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE lenguaje LIKE 'TypeScript' AND edad < 25;
# id_usuario, nombre, apellido, email, edad, lenguaje


-- Ejercicio 16: Contar cuántos usuarios tienen un lenguaje asociado llamado 'Python'.
-- Tu respuesta aquí
SELECT COUNT(id_usuario) FROM usuarios_lenguajes WHERE lenguaje LIKE 'python';

'1'


-- Ejercicio 17: Seleccionar los usuarios y sus lenguajes asociados, si tienen alguno, ordenados por nombre de usuario.
-- Tu respuesta aquí


-- Ejercicio 18: Encontrar los usuario con el email que contiene la palabra 'example'.
-- Tu respuesta aquí
  SELECT * FROM usuarios_lenguajes WHERE email LIKE '%example%';
'1', 'Juan', 'Gomez', 'juan.gomez@example.com', '28', 'Java'
'2', 'Maria', 'Lopez', 'maria.lopez@example.com', '32', 'JavaScript'
'3', 'Carlos', 'Rodriguez', 'carlos.rodriguez@example.com', '25', 'Python'
'4', 'Laura', 'Fernandez', 'laura.fernandez@example.com', '30', 'C++'
'5', 'Pedro', 'Martinez', 'pedro.martinez@example.com', '22', 'Ruby'
'6', 'Ana', 'Hernandez', 'ana.hernandez@example.com', '35', 'SQL'
'7', 'Miguel', 'Perez', 'miguel.perez@example.com', '28', 'PHP'
'8', 'Sofia', 'Garcia', 'sofia.garcia@example.com', '26', 'Swift'
'9', 'Javier', 'Diaz', 'javier.diaz@example.com', '31', 'TypeScript'
'10', 'Luis', 'Sanchez', 'luis.sanchez@example.com', '27', 'Go'
'11', 'Elena', 'Moreno', 'elena.moreno@example.com', '29', 'C#'
'12', 'Daniel', 'Romero', 'daniel.romero@example.com', '33', 'HTML'
'13', 'Paula', 'Torres', 'paula.torres@example.com', '24', 'CSS'
'14', 'Alejandro', 'Ruiz', 'alejandro.ruiz@example.com', '28', 'R'
'15', 'Carmen', 'Vega', 'carmen.vega@example.com', '29', 'Kotlin'
'16', 'Adrian', 'Molina', 'adrian.molina@example.com', '34', 'Objective-C'
'17', 'Isabel', 'Gutierrez', 'isabel.gutierrez@example.com', '26', 'Scala'
'18', 'Hector', 'Ortega', 'hector.ortega@example.com', '30', 'Perl'
'19', 'Raquel', 'Serrano', 'raquel.serrano@example.com', '32', 'Shell'
'20', 'Alberto', 'Reyes', 'alberto.reyes@example.com', '28', 'VB.NET'

-- Ejercicio 19: Seleccionar los usuarios que saben al menos un lenguaje y tienen una edad entre 25 y 35 años.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE edad BETWEEN 25 AND 35 AND id_usuario IN (SELECT DISTINCT id_usuario FROM usuarios_lenguajes);
'1', 'Juan', 'Gomez', 'juan.gomez@example.com', '28', 'Java'
'2', 'Maria', 'Lopez', 'maria.lopez@example.com', '32', 'JavaScript'
'3', 'Carlos', 'Rodriguez', 'carlos.rodriguez@example.com', '25', 'Python'
'4', 'Laura', 'Fernandez', 'laura.fernandez@example.com', '30', 'C++'
'6', 'Ana', 'Hernandez', 'ana.hernandez@example.com', '35', 'SQL'
'7', 'Miguel', 'Perez', 'miguel.perez@example.com', '28', 'PHP'
'8', 'Sofia', 'Garcia', 'sofia.garcia@example.com', '26', 'Swift'
'9', 'Javier', 'Diaz', 'javier.diaz@example.com', '31', 'TypeScript'
'10', 'Luis', 'Sanchez', 'luis.sanchez@example.com', '27', 'Go'
'11', 'Elena', 'Moreno', 'elena.moreno@example.com', '29', 'C#'
'12', 'Daniel', 'Romero', 'daniel.romero@example.com', '33', 'HTML'
'14', 'Alejandro', 'Ruiz', 'alejandro.ruiz@example.com', '28', 'R'
'15', 'Carmen', 'Vega', 'carmen.vega@example.com', '29', 'Kotlin'
'16', 'Adrian', 'Molina', 'adrian.molina@example.com', '34', 'Objective-C'
'17', 'Isabel', 'Gutierrez', 'isabel.gutierrez@example.com', '26', 'Scala'
'18', 'Hector', 'Ortega', 'hector.ortega@example.com', '30', 'Perl'
'19', 'Raquel', 'Serrano', 'raquel.serrano@example.com', '32', 'Shell'
'20', 'Alberto', 'Reyes', 'alberto.reyes@example.com', '28', 'VB.NET'



-- Ejercicio 20: Contar cuántos usuarios tienen un lenguaje asociado llamado 'CSS' y tienen menos de 30 años.
-- Tu respuesta aquí
SELECT* FROM usuarios_lenguajes WHERE lenguaje LIKE 'CSS' AND edad < 30;

'13', 'Paula', 'Torres', 'paula.torres@example.com', '24', 'CSS'

-- Ejercicio 21: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la cantidad de lenguajes que tienen.
-- Tu respuesta aquí


-- Ejercicio 22: Encontrar el lenguaje con más caracteres.
-- Tu respuesta aquí
SELECT lenguaje FROM usuarios_lenguajes ORDER BY length(lenguaje) DESC limit 1;
'Objective-C'


-- Ejercicio 23: Seleccionar los usuarios y mostrar la concatenación de su nombre y apellido.
-- Tu respuesta aquí
SELECT CONCAT(nombre," ",apellido) AS id_usuario FROM usuarios_lenguajes;
'Juan Gomez'
'Maria Lopez'
'Carlos Rodriguez'
'Laura Fernandez'
'Pedro Martinez'
'Ana Hernandez'
'Miguel Perez'
'Sofia Garcia'
'Javier Diaz'
'Luis Sanchez'
'Elena Moreno'
'Daniel Romero'
'Paula Torres'
'Alejandro Ruiz'
'Carmen Vega'
'Adrian Molina'
'Isabel Gutierrez'
'Hector Ortega'
'Raquel Serrano'
'Alberto Reyes'


-- Ejercicio 24: Contar cuántos lenguajes diferentes conocen los usuarios mayores de 25 años. 
-- Tu respuesta aquí
SELECT DISTINCT id_usuario, lenguaje FROM usuarios_lenguajes WHERE id_usuario IN (SELECT id_usuario FROM usuarios WHERE edad > 25);
'1', 'Java'
'2', 'JavaScript'
'3', 'Python'
'4', 'C++'
'5', 'Ruby'
'6', 'SQL'
'7', 'PHP'
'8', 'Swift'
'9', 'TypeScript'
'10', 'Go'
'11', 'C#'
'12', 'HTML'
'13', 'CSS'
'14', 'R'
'15', 'Kotlin'
'16', 'Objective-C'
'17', 'Scala'
'18', 'Perl'
'19', 'Shell'
'20', 'VB.NET'


-- Ejercicio 25: Seleccionar los usuarios que tienen exactamente la misma edad.
-- Tu respuesta aquí


-- Ejercicio 26: Encontrar el usuario con el lenguaje con mayor número de carácteres y que tenga una edad menor de 30 años. 
-- Tu respuesta aquí

SELECT * FROM usuarios_lenguajes WHERE edad < 30 ORDER BY LENGTH(lenguaje) DESC LIMIT 1;
'20', 'Alberto', 'Reyes', 'alberto.reyes@example.com', '28', 'VB.NET'


-- Ejercicio 27: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar sus emails.
-- Tu respuesta aquí
SELECT email FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL;
'juan.gomez@example.com'
'maria.lopez@example.com'
'carlos.rodriguez@example.com'
'laura.fernandez@example.com'
'pedro.martinez@example.com'
'ana.hernandez@example.com'
'miguel.perez@example.com'
'sofia.garcia@example.com'
'javier.diaz@example.com'
'luis.sanchez@example.com'
'elena.moreno@example.com'
'daniel.romero@example.com'
'paula.torres@example.com'
'alejandro.ruiz@example.com'
'carmen.vega@example.com'
'adrian.molina@example.com'
'isabel.gutierrez@example.com'
'hector.ortega@example.com'
'raquel.serrano@example.com'
'alberto.reyes@example.com'

-- Ejercicio 28: Contar cuántos usuarios tienen un apellido que comienza con la letra 'G'.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE apellido LIKE 'G%'
'1', 'Juan', 'Gomez', 'juan.gomez@example.com', '28', 'Java'
'8', 'Sofia', 'Garcia', 'sofia.garcia@example.com', '26', 'Swift'
'17', 'Isabel', 'Gutierrez', 'isabel.gutierrez@example.com', '26', 'Scala'



-- Ejercicio 29: Seleccionar los usuarios que tienen lenguajes que empiecen por 'J' y mostrar solo el que tiene menos caracteres. 
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE lenguaje LIKE 'J%' ORDER BY length(lenguaje)LIMIT 1;
'1', 'Juan', 'Gomez', 'juan.gomez@example.com', '28', 'Java'



-- Ejercicio 30: Encontrar el usuario con edad mayor a 30 y que sabe el lenguaje con menos caracteres.
-- Tu respuesta aquí
SELECT nombre, apellido FROM usuarios_lenguajes WHERE edad >30 ORDER BY length(lenguaje)ASC LIMIT 1;
'Ana', 'Hernandez'

-- Ejercicio 31: Seleccionar los usuarios que saben al menos un lenguaje y ordenarlos por nombre de lenguaje. 
-- Tu respuesta aquí
SELECT nombre,apellido,email,edad,lenguaje FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL ORDER BY lenguaje; 
'Elena', 'Moreno', 'elena.moreno@example.com', '29', 'C#'
'Laura', 'Fernandez', 'laura.fernandez@example.com', '30', 'C++'
'Paula', 'Torres', 'paula.torres@example.com', '24', 'CSS'
'Luis', 'Sanchez', 'luis.sanchez@example.com', '27', 'Go'
'Daniel', 'Romero', 'daniel.romero@example.com', '33', 'HTML'
'Juan', 'Gomez', 'juan.gomez@example.com', '28', 'Java'
'Maria', 'Lopez', 'maria.lopez@example.com', '32', 'JavaScript'
'Carmen', 'Vega', 'carmen.vega@example.com', '29', 'Kotlin'
'Adrian', 'Molina', 'adrian.molina@example.com', '34', 'Objective-C'
'Hector', 'Ortega', 'hector.ortega@example.com', '30', 'Perl'
'Miguel', 'Perez', 'miguel.perez@example.com', '28', 'PHP'
'Carlos', 'Rodriguez', 'carlos.rodriguez@example.com', '25', 'Python'
'Alejandro', 'Ruiz', 'alejandro.ruiz@example.com', '28', 'R'
'Pedro', 'Martinez', 'pedro.martinez@example.com', '22', 'Ruby'
'Isabel', 'Gutierrez', 'isabel.gutierrez@example.com', '26', 'Scala'
'Raquel', 'Serrano', 'raquel.serrano@example.com', '32', 'Shell'
'Ana', 'Hernandez', 'ana.hernandez@example.com', '35', 'SQL'
'Sofia', 'Garcia', 'sofia.garcia@example.com', '26', 'Swift'
'Javier', 'Diaz', 'javier.diaz@example.com', '31', 'TypeScript'
'Alberto', 'Reyes', 'alberto.reyes@example.com', '28', 'VB.NET'


-- Ejercicio 32: Contar cuántos usuarios tienen una edad entre 20 y 25 años y saben al menos un lenguaje. 
-- Tu respuesta aquí
SELECT count(*)FROM usuarios_lenguajes WHERE edad BETWEEN 20 AND 25 AND lenguaje IS NOT NULL;

'3'


-- Ejercicio 33: Seleccionar los usuarios que no tienen un lenguaje asociado llamado 'SQL'.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE NOT lenguaje = 'SQL'
'1', 'Juan', 'Gomez', 'juan.gomez@example.com', '28', 'Java'
'2', 'Maria', 'Lopez', 'maria.lopez@example.com', '32', 'JavaScript'
'3', 'Carlos', 'Rodriguez', 'carlos.rodriguez@example.com', '25', 'Python'
'4', 'Laura', 'Fernandez', 'laura.fernandez@example.com', '30', 'C++'
'5', 'Pedro', 'Martinez', 'pedro.martinez@example.com', '22', 'Ruby'
'7', 'Miguel', 'Perez', 'miguel.perez@example.com', '28', 'PHP'
'8', 'Sofia', 'Garcia', 'sofia.garcia@example.com', '26', 'Swift'
'9', 'Javier', 'Diaz', 'javier.diaz@example.com', '31', 'TypeScript'
'10', 'Luis', 'Sanchez', 'luis.sanchez@example.com', '27', 'Go'
'11', 'Elena', 'Moreno', 'elena.moreno@example.com', '29', 'C#'
'12', 'Daniel', 'Romero', 'daniel.romero@example.com', '33', 'HTML'
'13', 'Paula', 'Torres', 'paula.torres@example.com', '24', 'CSS'
'14', 'Alejandro', 'Ruiz', 'alejandro.ruiz@example.com', '28', 'R'
'15', 'Carmen', 'Vega', 'carmen.vega@example.com', '29', 'Kotlin'
'16', 'Adrian', 'Molina', 'adrian.molina@example.com', '34', 'Objective-C'
'17', 'Isabel', 'Gutierrez', 'isabel.gutierrez@example.com', '26', 'Scala'
'18', 'Hector', 'Ortega', 'hector.ortega@example.com', '30', 'Perl'
'19', 'Raquel', 'Serrano', 'raquel.serrano@example.com', '32', 'Shell'
'20', 'Alberto', 'Reyes', 'alberto.reyes@example.com', '28', 'VB.NET'



-- Ejercicio 34: Encontrar el lenguaje con más caracteres entre los usuarios que tienen al menos 30 años.
-- Tu respuesta aquí

SELECT lenguaje FROM usuarios_lenguajes WHERE edad >=30 ORDER BY length(lenguaje) DESC;
'Objective-C'
'JavaScript'
'TypeScript'
'Shell'
'HTML'
'Perl'
'C++'
'SQL'

-- Ejercicio 35: Seleccionar los usuarios y mostrar la diferencia entre su edad y la edad promedio de todos los usuarios
-- Tu respuesta aquí


-- Ejercicio 36: Contar cuántos usuarios tienen un lenguaje asociado que contiene la palabra 'Script'.
-- Tu respuesta aquí
SELECT COUNT(id_usuario) FROM usuarios_lenguajes WHERE lenguaje like '%Script%';
'2'


-- Ejercicio 37: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la longitud de su nombre. 
-- Tu respuesta aquí


-- Ejercicio 38: Encontrar el lenguaje del usuario creado más tarde. 
-- Tu respuesta aquí


-- Ejercicio 39: Seleccionar los usuarios y mostrar la suma de sus edades. 
-- Tu respuesta aquí
SELECT sum(edad) FROM usuarios_lenguajes;
'577'


-- Ejercicio 40: Contar cuántos usuarios tienen un lenguaje asociado que comienza con la letra 'P' y tienen menos de 28 años.
-- Tu respuesta aquí

SELECT lenguaje FROM usuarios_lenguajes WHERE lenguaje LIKE 'P%' AND edad <28; 
'Python'

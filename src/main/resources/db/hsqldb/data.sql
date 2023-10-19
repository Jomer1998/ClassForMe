-- ALUMNOS====================================================================================================================================================================================================================================================================================================================================================================================================================
INSERT INTO alumnos(id,nombre,localidad,provincia,email,descripcion,password,authority,nivel_id,curso) VALUES (1,'Pedro Acosta González','Lora del Río','Sevilla','pacosta@yopmail.com','Estudiante de cosas','4lumN0_a','alumno',2,6);
INSERT INTO alumnos(id,nombre,localidad,provincia,email,descripcion,password,authority,nivel_id,curso) VALUES (2,'Jaime Macías Pérez','El Pedroso','Sevilla','jamaper@yopmail.com','Sólo en clase','4lumN0_b','alumno',2,4);
INSERT INTO alumnos(id,nombre,localidad,provincia,email,descripcion,password,authority,nivel_id,curso) VALUES (3,'Juan Miras López','Jaén','Jaén','jmir36@yopmail.com','Nada que decir','4lumN0_c','alumno',2,2);
INSERT INTO alumnos(id,nombre,localidad,provincia,email,descripcion,password,authority,nivel_id,curso) VALUES (4,'Carlos Alcaraz Vázquez','Almodóvar del Río','Córdoba','alcarlos@yopmail.com','En la línea','4lumN0_d','alumno',3,3);
INSERT INTO alumnos(id,nombre,localidad,provincia,email,descripcion,password,authority,nivel_id,curso) VALUES (5,'Martín Almendro Mora','Palma del Río','Córdoba','martineitor89@yopmail.com','Volveré','4lumN0_e','alumno',3,2);
INSERT INTO alumnos(id,nombre,localidad,provincia,email,descripcion,password,authority,nivel_id,curso) VALUES (6,'Roger Fernández Suiza','Málaga','Málaga','rf20@yopmail.com','Old school','4lumN0_f','alumno',3,4);
INSERT INTO alumnos(id,nombre,localidad,provincia,email,descripcion,password,authority,nivel_id,curso) VALUES (7,'Pepe Martín Torre','Alcalá de Guadaíra','Sevilla','mart1np3p3@yopmail.com','Aprendiendo sobre la marcha','4lumN0_g','alumno',4,2);
INSERT INTO alumnos(id,nombre,localidad,provincia,email,descripcion,password,authority,nivel_id,curso) VALUES (8,'Luis Pérez Mola','Moguer','Huelva','luis-perez@yopmail.com','Hola','4lumN0_h','alumno',5,1);
INSERT INTO alumnos(id,nombre,localidad,provincia,email,descripcion,password,authority,nivel_id,curso) VALUES (9,'Juan Núñez Cruz','Guadix','Granada','juanitonunez24@yopmail.com','Estudiando','4lumN0_i','alumno',6,3);


-- PROFESORES=================================================================================================================================================================================================================================================================================================================================================================================================================
INSERT INTO profesores(id,nombre,localidad,provincia,email,descripcion,password,authority,disponibilidad,modalidad_id) VALUES (1,'Carlos Checa Toro','Constantina','Sevilla','cctoro7@yopmail.com','Acelerando el aprendizaje','pr0f3s0r_a','profesor','Lunes a Jueves, por la tarde',1);
INSERT INTO profesores(id,nombre,localidad,provincia,email,descripcion,password,authority,disponibilidad,modalidad_id) VALUES (2,'Rafael Nadal Paredes','Córdoba','Córdoba','rafnadpar@yopmail.com','Subiendo apuntes a la red','pr0f3s0r_b','profesor','Martes, Jueves y Viernes, de 15:00 a 20:00',2);
INSERT INTO profesores(id,nombre,localidad,provincia,email,descripcion,password,authority,disponibilidad,modalidad_id) VALUES (3,'Rodolfo Fernández Contador','Huelva','Huelva','rudyf05@yopmail.com','Realizando docencia','pr0f3s0r_c','profesor','Miércoles y Sábado, por la mañana',3);

INSERT INTO profesor_niveles(profesor_id,nivel_educativo_id) VALUES (1,2);
INSERT INTO profesor_niveles(profesor_id,nivel_educativo_id) VALUES (2,3);
INSERT INTO profesor_niveles(profesor_id,nivel_educativo_id) VALUES (2,4);
INSERT INTO profesor_niveles(profesor_id,nivel_educativo_id) VALUES (3,5);
INSERT INTO profesor_niveles(profesor_id,nivel_educativo_id) VALUES (3,6);

INSERT INTO profesor_ramas(profesor_id,rama_conocimiento_id) VALUES (1,2);
INSERT INTO profesor_ramas(profesor_id,rama_conocimiento_id) VALUES (1,7);
INSERT INTO profesor_ramas(profesor_id,rama_conocimiento_id) VALUES (2,4);
INSERT INTO profesor_ramas(profesor_id,rama_conocimiento_id) VALUES (2,5);
INSERT INTO profesor_ramas(profesor_id,rama_conocimiento_id) VALUES (2,6);
INSERT INTO profesor_ramas(profesor_id,rama_conocimiento_id) VALUES (3,3);
INSERT INTO profesor_ramas(profesor_id,rama_conocimiento_id) VALUES (3,8);


-- NIVELES EDUCATIVOS=========================================================================================================================================================================================================================================================================================================================================================================================================
INSERT INTO niveles_educativos(id,name) VALUES (1,'Cualquiera');
INSERT INTO niveles_educativos(id,name) VALUES (2,'Primaria');
INSERT INTO niveles_educativos(id,name) VALUES (3,'ESO');
INSERT INTO niveles_educativos(id,name) VALUES (4,'Bachillerato');
INSERT INTO niveles_educativos(id,name) VALUES (5,'FP');
INSERT INTO niveles_educativos(id,name) VALUES (6,'Universitario');


-- MODALIDADES DE CLASE=======================================================================================================================================================================================================================================================================================================================================================================================================
INSERT INTO modalidades_clase(id,name) VALUES (1,'Cualquiera');
INSERT INTO modalidades_clase(id,name) VALUES (2,'Presencial');
INSERT INTO modalidades_clase(id,name) VALUES (3,'Online');


-- RAMAS DE CONOCIMIENTO======================================================================================================================================================================================================================================================================================================================================================================================================
INSERT INTO ramas_conocimiento(id,name) VALUES (1,'Cualquiera');
INSERT INTO ramas_conocimiento(id,name) VALUES (2,'Ciencias');
INSERT INTO ramas_conocimiento(id,name) VALUES (3,'Letras');
INSERT INTO ramas_conocimiento(id,name) VALUES (4,'Ciencias sociales');
INSERT INTO ramas_conocimiento(id,name) VALUES (5,'Humanidades');
INSERT INTO ramas_conocimiento(id,name) VALUES (6,'Arte');
INSERT INTO ramas_conocimiento(id,name) VALUES (7,'Idiomas');
INSERT INTO ramas_conocimiento(id,name) VALUES (8,'Música');


-- CLASES=====================================================================================================================================================================================================================================================================================================================================================================================================================
INSERT INTO clases(id,alumno_id,profesor_id,fecha,hora_inicio,hora_fin,asignaturas,lugar,comentarios_adicionales,estado_solicitud_id,razon_estado,valoracion) VALUES (1,1,1,'2025-11-14','15:00','16:30','Lengua y literatura','Google Meet','Refuerzo de los tipos de novela',3,'No estoy disponible los viernes y esa asignatura no pertenece a mi rama',);
INSERT INTO clases(id,alumno_id,profesor_id,fecha,hora_inicio,hora_fin,asignaturas,lugar,comentarios_adicionales,estado_solicitud_id,razon_estado,valoracion) VALUES (2,2,1,'2023-09-14','15:00','16:30','Matemáticas','Biblioteca Pública Municipal de El Pedroso - José Manuel Lara Bosch','Apoyo números romanos',2,'',10);
INSERT INTO clases(id,alumno_id,profesor_id,fecha,hora_inicio,hora_fin,asignaturas,lugar,comentarios_adicionales,estado_solicitud_id,razon_estado,valoracion) VALUES (3,3,1,'2025-11-12','15:00','16:30','Ciencias Naturales','Discord','Repaso de tipos de accidentes geográficos',1,'',);
INSERT INTO clases(id,alumno_id,profesor_id,fecha,hora_inicio,hora_fin,asignaturas,lugar,comentarios_adicionales,estado_solicitud_id,razon_estado,valoracion) VALUES (4,4,2,'2023-09-12','17:00','18:00','Geografía','Biblioteca Pública Municipal de Almodóvar del Río – Manuel Campanero Camacho','Geografía física de Europa',2,'',9);
INSERT INTO clases(id,alumno_id,profesor_id,fecha,hora_inicio,hora_fin,asignaturas,lugar,comentarios_adicionales,estado_solicitud_id,razon_estado,valoracion) VALUES (5,5,2,'2023-09-12','17:00','18:30','Educación Plástica','Discord','Repaso colores primarios',3,'Lo siento, pero ese día tengo clase reservada a esa hora. Además, no doy clases online. Un saludo',);
INSERT INTO clases(id,alumno_id,profesor_id,fecha,hora_inicio,hora_fin,asignaturas,lugar,comentarios_adicionales,estado_solicitud_id,razon_estado,valoracion) VALUES (6,6,2,'2025-09-12','17:00','18:00','Ética','Biblioteca Pública Municipal de Almodóvar del Río – Manuel Campanero Camacho','Los derechos humanos',1,'',);
INSERT INTO clases(id,alumno_id,profesor_id,fecha,hora_inicio,hora_fin,asignaturas,lugar,comentarios_adicionales,estado_solicitud_id,razon_estado,valoracion) VALUES (7,9,3,'2023-04-22','11:00','13:00','Géneros Literarios','Zoom','Profundización sobre el género lírico. (Asignatura de 3er curso del Grado en Literaturas comparadas)',2,'',7);
INSERT INTO clases(id,alumno_id,profesor_id,fecha,hora_inicio,hora_fin,asignaturas,lugar,comentarios_adicionales,estado_solicitud_id,razon_estado,valoracion) VALUES (8,7,3,'2023-04-20','17:00','19:00','Lengua Castellana y Literatura','Biblioteca Pública Municipal Editor José Manuel Lara (Alcalá de Guadaíra)','Sintaxis de oraciones compuestas',3,'Me es imposible desplazarme allí y no cubro tu nivel educativo',);
INSERT INTO clases(id,alumno_id,profesor_id,fecha,hora_inicio,hora_fin,asignaturas,lugar,comentarios_adicionales,estado_solicitud_id,razon_estado,valoracion) VALUES (9,8,3,'2025-04-20','11:00','13:00','Lengua Castellana y Literatura','Google Meet','Géneros literarios',1,'',);


-- ESTADOS DE SOLICITUD=======================================================================================================================================================================================================================================================================================================================================================================================================
INSERT INTO estados_solicitud(id,name) VALUES (1,'Solicitada');
INSERT INTO estados_solicitud(id,name) VALUES (2,'Aceptada');
INSERT INTO estados_solicitud(id,name) VALUES (3,'Rechazada');
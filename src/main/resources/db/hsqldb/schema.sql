DROP TABLE alumnos IF EXISTS;
DROP TABLE profesor_niveles IF EXISTS;
DROP TABLE profesor_ramas IF EXISTS;
DROP TABLE profesores IF EXISTS;
DROP TABLE niveles_educativos IF EXISTS;
DROP TABLE modalidades_clase IF EXISTS;
DROP TABLE ramas_conocimiento IF EXISTS;
DROP TABLE administradores IF EXISTS;
DROP TABLE clases IF EXISTS;
DROP TABLE estados_solicitud IF EXISTS;

CREATE TABLE alumnos (
	id          INTEGER IDENTITY PRIMARY KEY,
	nombre      VARCHAR(255),
	foto        VARCHAR(255),
	localidad   VARCHAR(80),
	provincia   VARCHAR(80),
	email       VARCHAR(255),
	descripcion VARCHAR(1020),
	password    VARCHAR(255),
	authority   VARCHAR(80),
	nivel_id    INTEGER NOT NULL,
	curso       INTEGER
);
ALTER TABLE alumnos ADD CONSTRAINT fk_alumnos_nivel FOREIGN KEY (nivel_id) REFERENCES niveles_educativos (id);

CREATE TABLE profesores (
	id             INTEGER IDENTITY PRIMARY KEY,
	nombre         VARCHAR(255),
	foto           VARCHAR(255),
	localidad      VARCHAR(80),
	provincia      VARCHAR(80),
	email          VARCHAR(255),
	descripcion    VARCHAR(1020),
	password       VARCHAR(255),
	authority      VARCHAR(80),
	disponibilidad VARCHAR(1020),
	modalidad_id   INTEGER NOT NULL
);
ALTER TABLE profesores ADD CONSTRAINT fk_profesores_modalidad FOREIGN KEY (modalidad_id) REFERENCES modalidades_clase (id);

CREATE TABLE modalidades_clase (
	id INTEGER IDENTITY PRIMARY KEY,
	name VARCHAR(80)
);
CREATE INDEX modalidades_clase_name ON modalidades_clases (name);

CREATE TABLE niveles_educativos (
	id   INTEGER IDENTITY PRIMARY KEY,
	name VARCHAR(80)
);
CREATE INDEX niveles_educativos_name ON niveles_educativos (name);

CREATE TABLE profesor_niveles (
	profesor_id        INTEGER NOT NULL,
	nivel_educativo_id INTEGER NOT NULL
);
ALTER TABLE profesor_niveles ADD CONSTRAINT fk_profesor_niveles_profesores FOREIGN KEY (profesor_id) REFERENCES profesores (id);
ALTER TABLE profesor_niveles ADD CONSTRAINT fk_profesor_niveles_niveles_educativos FOREIGN KEY (nivel_educativo_id) REFERENCES niveles_educativos (id);

CREATE TABLE ramas_conocimiento (
	id   INTEGER IDENTITY PRIMARY KEY,
	name VARCHAR(80)
);
CREATE INDEX ramas_conocimiento_name ON ramas_conocimiento (name);

CREATE TABLE profesor_ramas (
	profesor_id          INTEGER NOT NULL,
	rama_conocimiento_id INTEGER NOT NULL
);
ALTER TABLE profesor_ramas ADD CONSTRAINT fk_profesor_niveles_profesores FOREIGN KEY (profesor_id) REFERENCES profesores (id);
ALTER TABLE profesor_ramas ADD CONSTRAINT fk_profesor_niveles_ramas_conocimiento FOREIGN KEY (rama_conocimiento_id) REFERENCES ramas_conocimiento (id);

CREATE TABLE administradores (
	id             INTEGER IDENTITY PRIMARY KEY,
	nombre         VARCHAR(255),
	foto           VARCHAR(255),
	localidad      VARCHAR(80),
	provincia      VARCHAR(80),
	email          VARCHAR(255),
	descripcion    VARCHAR(1020),
	password       VARCHAR(255),
	authority      VARCHAR(80)
);

CREATE TABLE clases (
	id                      INTEGER IDENTITY PRIMARY KEY,
	alumno_id               INTEGER,
	profesor_id             INTEGER,
	fecha                   DATE,
	hora_inicio             TIME,
	hora_fin                TIME,
	asignaturas             VARCHAR(510),
	lugar                   VARCHAR(510),
	comentarios_adicionales VARCHAR(1020),
	estado_solicitud_id     INTEGER,
	razon_estado            VARCHAR(1020),
	valoracion              INTEGER
);
ALTER TABLE clases ADD CONSTRAINT fk_clases_alumno FOREIGN KEY (alumno_id) REFERENCES alumnos (id);
ALTER TABLE clases ADD CONSTRAINT fk_clases_profesor FOREIGN KEY (profesor_id) REFERENCES profesores (id);
ALTER TABLE clases ADD CONSTRAINT fk_clases_estado_solicitud FOREIGN KEY (estado_solicitud_id) REFERENCES estados_solicitud (id);

CREATE TABLE estados_solicitud (
	id   INTEGER IDENTITY PRIMARY KEY,
	name VARCHAR(80)
);
CREATE INDEX estados_solicitud_name ON estados_solicitud (name);


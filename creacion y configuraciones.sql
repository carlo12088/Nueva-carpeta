USE liga_futbol
go

CREATE USER personal FOR LOGIN personal;

CREATE TABLE equipos (
    id INT IDENTITY(1,1) PRIMARY KEY,  -- Autoincremental
    nombre_club VARCHAR(255) NOT NULL, -- Nombre del club
    fecha_creacion DATETIME DEFAULT GETDATE() NOT NULL, -- Fecha de creación
    fecha_fundacion DATE NULL, -- Fecha opcional de fundación
    fecha_modificacion DATETIME DEFAULT GETDATE() NOT NULL, -- Última modificación
    fecha_inscripcion DATE DEFAULT GETDATE(), -- Fecha de inscripción
    colores VARCHAR(255) NULL, -- Colores del equipo
    imagen VARCHAR(255) NULL, -- Imagen en formato binario
    id_categoria INT NULL -- Relación con otra tabla (clave foránea opcional)
);

ALTER TABLE equipos DROP COLUMN imagen;

ALTER TABLE equipos ADD imagen VARCHAR(255) NULL;

USE liga_futbol;
GRANT INSERT, SELECT, UPDATE, DELETE ON SCHEMA::dbo TO personal;

SELECT name, principal_id, type_desc  
FROM sys.database_principals  
WHERE name = 'personal';


CREATE TABLE catalogo (
    id INT IDENTITY(1,1) PRIMARY KEY,  -- Autoincremental
    tipo VARCHAR(50) NOT NULL,         -- Tipo de registro: 'concepto' o 'sancion'
    detalle VARCHAR(255) NOT NULL,     -- Detalle del concepto o descripción de la sanción
    valor DECIMAL(10, 2) NULL,         -- Valor de la sanción (solo aplica para sanciones)
    CHECK (tipo IN ('concepto', 'sancion')) -- Restricción para asegurar valores válidos
);

CREATE TABLE equipos_catalogo (
    id INT IDENTITY(1,1) PRIMARY KEY,  -- Autoincremental
    id_equipo INT NOT NULL, -- Clave foránea que referencia a la tabla equipos
    id_catalogo INT NOT NULL, -- Clave foránea que referencia a la tabla catalogo
    fecha_aplicacion DATETIME DEFAULT GETDATE() NOT NULL, -- Fecha en que se aplicó la sanción o concepto
    FOREIGN KEY (id_equipo) REFERENCES equipos(id) ON DELETE CASCADE,
    FOREIGN KEY (id_catalogo) REFERENCES catalogo(id) ON DELETE CASCADE
);


GRANT INSERT, SELECT, UPDATE, DELETE ON SCHEMA::dbo TO personal;

ALTER AUTHORIZATION ON DATABASE::liga_futbol TO personal;

REVOKE INSERT, SELECT, UPDATE, DELETE ON SCHEMA::dbo FROM sa;

SELECT name, is_disabled FROM sys.sql_logins WHERE name = 'sa';

ALTER LOGIN sa ENABLE;
ALTER LOGIN sa WITH PASSWORD = 'hello';

CREATE TABLE jugador (
    id INT IDENTITY(1,1) PRIMARY KEY,  -- ID autoincremental
    primer_nombre VARCHAR(100) NOT NULL,  -- Primer nombre obligatorio
    segundo_nombre VARCHAR(100) NULL,  -- Segundo nombre opcional
    primer_apellido VARCHAR(100) NOT NULL,  -- Primer apellido obligatorio
    segundo_apellido VARCHAR(100) NULL,  -- Segundo apellido opcional
    id_equipo INT NOT NULL,  -- ID del equipo obligatorio (Clave foránea)
    edad INT NOT NULL,  -- Edad obligatoria
    sexo CHAR(1) NOT NULL CHECK (sexo IN ('M', 'F')),  -- Sexo obligatorio con restricción
    fecha_nacimiento DATE NOT NULL,  -- Fecha de nacimiento obligatoria
    numero_participacion INT NOT NULL,  -- Número con el que participa obligatorio
    juvenil BIT NOT NULL,  -- Indica si es juvenil (0 o 1)
    url_foto_cedula VARCHAR(255) NULL,  -- URL de la foto de la cédula
    url_foto VARCHAR(255) NULL,  -- URL de la foto del jugador
    fecha_creacion DATETIME DEFAULT GETDATE() NOT NULL,  -- Fecha de creación automática
    fecha_modificacion DATETIME DEFAULT GETDATE() NOT NULL,  -- Fecha de modificación automática
    CONSTRAINT FK_Jugador_Equipo FOREIGN KEY (id_equipo) REFERENCES equipos(id) ON DELETE CASCADE
)

ALTER TABLE jugador ADD cedula VARCHAR(20) NULL;

ALTER TABLE jugador ALTER COLUMN juvenil INT NOT NULL;

ALTER TABLE jugador ADD fecha_inscripcion DATE DEFAULT GETDATE() NULL;
ALTER TABLE jugador ADD codigo_aso int  NULL;

CREATE TABLE categoria (
    id INT IDENTITY(1,1) PRIMARY KEY,          -- Identificador único autoincremental
    nombre_categoria VARCHAR(255) NOT NULL,    -- Nombre de la categoría
    numero_participantes INT NOT NULL          -- Número de participantes en la categoría
);

--resetar 
TRUNCATE TABLE jugador;



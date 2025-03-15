use liga_futbol
go


update equipos set nombre_club = 'RELAMPAGO' where id = 2

UPDATE equipos SET id_categoria = 3 WHERE id_categoria IN (7,8)

UPDATE equipos SET id_categoria = 2 WHERE ID = 40
BEGIN TRAN


INSERT INTO equipos (nombre_club, fecha_creacion, fecha_fundacion, fecha_modificacion,fecha_inscripcion, colores, id_categoria, imagen)
VALUES
   ('ANDINA', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 7, 'andina.png'),
   ('CORDILLERA', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 7, 'cordillera.png'),
   ('HERMANDAD', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 7, 'hermandad.png'),
   ('INTER', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 7, 'inter.png'),
   ('ITALIA', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 7, 'italia.png'),
   ('PENAROL', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 7, 'penarol.png'),
   ('STACHER', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 7, 'stacher.png'),
   ('VELASCO', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 7, 'velasco.png'),
   ('WIGAN', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 7, 'wigan.png'),
   ('ANDES', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 8, 'andes.png'),
   ('DEFENSOR QUITO', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 8, 'defensor_quito.png'),
   ('HTD', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 8, 'htd.png'),
   ('ROJA SAGA', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 8, 'roja_saga.png'),
   ('ROCO AMERICANO', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 8, 'roco_americano.png'),
   ('SANTIAGO', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 8, 'santiago.png'),
   ('TARQUI', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 8, 'tarqui.png'),
   ('TECNICOS', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 8, 'tecnicos.png'),
   ('TORINO', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 8, 'torino.png');
COMMIT TRAN


begin tran
UPDATE jugador SET numero_participacion = 7 WHERE id = 87;
UPDATE jugador SET numero_participacion = 15 WHERE id = 88;
UPDATE jugador SET numero_participacion = 10 WHERE id = 89;
UPDATE jugador SET numero_participacion = 4 WHERE id = 90;
UPDATE jugador SET numero_participacion = 8 WHERE id = 91;
UPDATE jugador SET numero_participacion = 3 WHERE id = 92;
UPDATE jugador SET numero_participacion = 5 WHERE id = 93;
UPDATE jugador SET numero_participacion = 2 WHERE id = 94;
UPDATE jugador SET numero_participacion = 11 WHERE id = 95;
UPDATE jugador SET numero_participacion = 9, primer_nombre = 'CHARLY', segundo_nombre = 'ANTONY', primer_apellido = 'SINCHIRE', segundo_apellido = 'BARROS', edad = 24, fecha_nacimiento = '2001-07-31', cedula = 1724648686, codigo_aso = 89238 WHERE id = 96;
UPDATE jugador SET numero_participacion = 20 WHERE id = 97;
UPDATE jugador SET numero_participacion = 6 WHERE id = 98;
UPDATE jugador SET numero_participacion = 1 WHERE id = 99;

update jugador set cedula = '1721944690' where id = 32




USE [liga_futbol]
GO

/****** Object:  Table [dbo].[jugador_master]    Script Date: 9/3/2025 20:22:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[jugador_master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[primer_nombre] [varchar](100) NOT NULL,
	[segundo_nombre] [varchar](100) NULL,
	[primer_apellido] [varchar](100) NOT NULL,
	[segundo_apellido] [varchar](100) NULL,
	[id_equipo] [int] NOT NULL,
	[edad] [int] NOT NULL,
	[sexo] [char](1) NOT NULL,
	[fecha_nacimiento] [date] NOT NULL,
	[numero_participacion] [int] NOT NULL,
	[juvenil] [int] NULL,
	[url_foto_cedula] [varchar](255) NULL,
	[url_foto] [varchar](255) NULL,
	[fecha_creacion] [datetime] NOT NULL,
	[fecha_modificacion] [datetime] NOT NULL,
	[cedula] [varchar](20) NOT NULL,
	[fecha_inscripcion] [date] NULL,
	[codigo_aso] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[jugador_master] ADD  DEFAULT (getdate()) FOR [fecha_creacion]
GO

ALTER TABLE [dbo].[jugador_master] ADD  DEFAULT (getdate()) FOR [fecha_modificacion]
GO

ALTER TABLE [dbo].[jugador_master] ADD  DEFAULT (getdate()) FOR [fecha_inscripcion]
GO

ALTER TABLE [dbo].[jugador_master]  WITH CHECK ADD  CONSTRAINT [FK_jugador_master_Equipo] FOREIGN KEY([id_equipo])
REFERENCES [dbo].[equipos] ([id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[jugador_master] CHECK CONSTRAINT [FK_jugador_master_Equipo]
GO

ALTER TABLE [dbo].[jugador_master]  WITH CHECK ADD CHECK  (([sexo]='F' OR [sexo]='M'))
GO


use liga_futbol
go

select * from categoria

select * from jugador 
where primer_apellido = 'lastra' and 
fecha_creacion>= '2025-03-09 00:00:00.000'
and id_equipo > 40


select * from jugador 
where primer_apellido = 'lastra' and 
fecha_modificacion>= '2025-03-09 00:00:00.000'
and id_equipo > 40

select * from equipos

update jugador set id_equipo = 19 where id in (68,79,80,82)

select * from jugador 
where primer_apellido = 'lastra' and 
cedula = '1712672771'

select * from jugador 
where primer_apellido = 'lastra' and 
id  >= 554

begin tran
	delete jugador where id  >= 554
commit tran

update jugador set id_equipo = 20 where id =100
update jugador set id_equipo = 20 where id =108

DBCC CHECKIDENT ('jugador', RESEED, 553);

SELECT * INTO jugador_master FROM jugador WHERE 1=0;


use liga_futbol
go

select * from jugador

update jugador set tipo = 'sr'

--inserta nuevos equipos femenino
INSERT INTO equipos (nombre_club, fecha_creacion, fecha_fundacion, fecha_modificacion, fecha_inscripcion, colores, id_categoria, imagen)
VALUES
  ('BAYER', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 5, 'bayer.png'),
  ('BOLIVAR', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 5, 'bolivar.png'),
  ('CORDILLERA', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 5, 'cordillera.png'),
  ('CICLON', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 5, 'ciclon.png'),
  ('GALAXYS', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 5, 'galaxys.png'),
  ('ITALIA', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 5, 'italia.png'),
  ('INTER', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 5, 'inter.png'),
  ('JUVENTUS', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 5, 'juventus.png'),
  ('NACIONAL', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 5, 'nacional.png'),
  ('PEÑAROL', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 5, 'penarol.png'),
  ('PROYECTO 11', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 5, 'proyecto11.png'),
  ('RELAMPAGO', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 5, 'relampago.png'),
  ('ROJA SAGA', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 5, 'rojasaga.png'),
  ('SAN LORENZO', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 5, 'sanlorenzo.png'),
  ('STACHEL', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 5, 'stachel.png'),
  ('TORINO', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 5, 'torino.png'),
  ('UNION JUVENIL', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 5, 'unionjuvenil.png'),
  ('VENCEDORES', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 5, 'vencedores.png'),
  ('WIGAN', GETDATE(), '1966-05-24', GETDATE(), GETDATE(), 'ROJO, AMARILLO', 5, 'wigan.png');

--actualizar el tipo a senor
update jugador set tipo = 'sr' where tipo is null and estado is null

--inserta nuevos jugadores senor
begin tran
INSERT INTO jugador 
(Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Id_Equipo, Edad, Sexo, Fecha_Nacimiento, Numero_Participacion, Juvenil, Url_Foto_Cedula, Url_Foto, cedula, Fecha_Inscripcion, Codigo_Aso) 
VALUES 
('LENIN ', 'ERNESTO', 'LASTRA', 'MENA', '53', '61', 'M', '1963-10-06', 15, 0, '', '', '1707808380', '2025-03-05', 10035),
('JAIME', 'RODRIGO', 'ALMAGRO', 'REMACGE', '42', '51', 'M', '1973-04-29', 1, 0, ' ',' ', '1712672771', '2025-03-05',99057),
('LUIS', 'SANTIAGO', 'SALAZAR ', 'GRIJALVA', '42', '52', 'M', '1972-07-05', 3, 0, ' ',' ', '1710103597', '2025-03-05',98941),
('EDWIN', 'RAMIRO', 'SÁNCHEZ ', 'FIALLO', '42', '47', 'M', '1977-07-08', 4, 0, ' ',' ', '1711661494', '2025-03-05',98595),
('WILLIAN', 'HERNAN', 'FLOR ', 'VELASTEGUI', '42', '49', 'M', '1975-10-10', 6, 0, ' ',' ', '1707783096', '2025-03-05',98590),
('EDWIN', 'RIGOBERTO', 'JÁCOME ', 'ESPINOZA', '42', '55', 'M', '1969-10-28', 7, 0, ' ',' ', '1710376995', '2025-03-05',98940),
('BYRON ', 'PATRICIO', 'NIETO ', 'DAGER', '42', '47', 'M', '1977-11-20', 9, 0, ' ',' ', '1713778056', '2025-03-05',99328),
('DIEGO ', 'GEOVANNY', 'FLOR ', 'VELASTEGUI', '42', '44', 'M', '1980-08-16', 15, 0, ' ',' ', '1712899192', '2025-03-05',12865),
('MARCO ', 'VINIVIO', 'MOYA', 'ULLOA', '42', '49', 'M', '1975-09-29', 16, 0, ' ',' ', '1712452901', '2025-03-05',99896),
('WILLIAN', 'RAMIRO', 'GONZALON ', 'FOLLECO', '42', '43', 'M', '1981-05-17', 19, 0, ' ',' ', '1716112576', '2025-03-05',126856),
('JAIME ', 'RODRIGO', 'PAREDES', 'ORTIZ', '42', '53', 'M', '1971-05-04', 20, 0, ' ',' ', '1708531437', '2025-03-05',12867),
('PAUL', 'ALEXANDER', 'MORA ', 'FLOR', '42', '43', 'M', '1981-09-14', 21, 0, ' ',' ', '1715840110', '2025-03-05',99054),
('CARLOS ', 'EDUARDO', 'ALMAGRO', 'REMACGE', '42', '44', 'M', '1980-09-02', 22, 0, ' ',' ', '1715275051', '2025-03-05',98588),
('SANTIAGO', 'EDUARDO', 'FLOR ', 'VELASTEGUI', '42', '41', 'M', '1983-05-25', 23, 0, ' ',' ', '1714202957', '2025-03-05',98600),
('SEGUNDO', 'HARNALDO', 'CANDO ', 'VERA', '42', '51', 'M', '1973-08-11', 27, 0, ' ',' ', '1711449809', '2025-03-05',98600),
('LUIS', 'ALBERTO', 'ALMAGRO', 'REMACHE', '42', '48', 'M', '1976-12-03', 26, 0, ' ',' ', '1714491709', '2025-03-05',98589),
('GERARDO ', 'ORLANDO', 'FLORES', 'CASTRO', '42', '47', 'M', '1977-07-27', 29, 0, ' ',' ', '1714901343', '2025-03-05',118033),
('EDUARDO', 'ALFONSO', 'PACHECO', 'QUINTEROS', '42', '44', 'M', '1980-12-15', 28, 0, ' ',' ', '802176180', '2025-03-05',126858),
('OSCAR ', 'PATRICIO', 'LARA', 'SUBIA', '42', '47', 'M', '1977-11-28', 2, 0, ' ',' ', '1002104501', '2025-03-05',126859),
('ALEX ', 'JAVIER', 'CAMPO ', 'CALAHORRANO', '42', '48', 'M', '1976-12-03', 13, 0, ' ',' ', '1711927556', '2025-03-05',33332),
('FRANKLIN ', 'AGUSTIN', 'SALAS ', 'NARVAEZ', '42', '43', 'M', '1981-08-30', 11, 0, ' ',' ', '1713422440', '2025-03-05',91467),
('GEOVANNY ', '', 'FLORES', 'VILLAMARIN', '42', '41', 'M', '1983-10-14', 25, 0, ' ',' ', '1716680978', '2025-03-05',98596),
('SEBASTIAN', 'ALBERTO', 'JARA', 'OLIVO', '42', '39', 'M', '1985-07-03', 14, 0, ' ',' ', '1715768154', '2025-03-05',98583),
('RAMIRO', 'GUSTAVO', 'PASTOR', 'CHIRIBOGA', '42', '48', 'M', '1976-10-16', 24, 0, ' ',' ', '1709890519', '2025-03-05',126854),
('DAMIAN ', 'EDUARDO', 'SANCHEZ', 'FRIAS', '42', '43', 'M', '1981-11-10', 30, 0, ' ',' ', '1714543632', '2025-03-05',14136),
('RENAN', 'VLADIMIR', 'SINCHIRE ', 'TAMAY', '43', '42', 'M', '1983-03-09', 2, 0, ' ',' ', '1718806209', '2025-03-05',49209),
('RAUL ', 'HUMBERTO', 'CUJILEMA ', 'POMA', '43', '47', 'M', '1977-11-14', 5, 0, ' ',' ', '0603050204', '2025-03-05',100525),
('JAMES ', 'WILLIAMS', 'IMBAQUINGO', 'LLAUCA', '43', '59', 'M', '1965-12-27', 6, 0, ' ',' ', '1708268733', '2025-03-05',10034),
('IVAN ', 'MARCELO', 'BASTIDAS ', 'PATIÑO', '43', '44', 'M', '1980-04-25', 7, 0, ' ',' ', '1712922572', '2025-03-05',117203),
('LUIS', 'EDUARDO', 'GALLARDO', 'PEREZ', '43', '44', 'M', '1980-04-16', 10, 0, ' ',' ', '1712363553', '2025-03-05',18936),
('DANNY ', 'RAFAEL', 'PUETATE ', 'PRECIADO', '43', '42', 'M', '1982-11-23', 15, 0, ' ',' ', '1500568595', '2025-03-05',67628),
('CESAR', 'PATRICIO', 'TRUJILLO ', 'PINTO', '43', '53', 'M', '1972-03-08', 17, 0, ' ',' ', '1712228228', '2025-03-05',100648),
('EDISON ', 'MAURICIO', 'ZURITA', 'JAMI', '43', '40', 'M', '1984-11-04', 18, 0, ' ',' ', '1720771821', '2025-03-05',126939),
('MARCO', 'ROBERTO', 'MERA ', 'JACOME', '43', '43', 'M', '1981-09-08', 20, 0, ' ',' ', '1713203949', '2025-03-05',5312),
('WILSON ', 'ABEL', 'ASTUDILLO ', 'OLEAS', '43', '52', 'M', '1972-05-09', 22, 0, ' ',' ', '1709400822', '2025-03-05',61855),
('PAUL', 'ANDRES', 'HERRERA ', 'ZUMARRAGA', '43', '41', 'M', '1983-11-14', 33, 0, ' ',' ', '1714563895', '2025-03-05',84377),
('GEOVANNY ', 'PATRICIO', 'GUAMAN ', 'CALI', '43', '44', 'M', '1980-10-28', 25, 0, ' ',' ', '1713035077', '2025-03-05',117205),
('CARLOS', 'ALBERTO', 'ZAMBRANO', 'TOLA', '43', '43', 'M', '1981-10-24', 21, 0, ' ',' ', '1310389489', '2025-03-05',88252),
('KLEBER ', 'VLADIMIR', 'TACURI', 'CRUZ', '43', '44', 'M', '1980-04-14', 15, 0, ' ',' ', '1714562194', '2025-03-05',39764),
('DANNY ', 'JOSE', 'ASTUDILLO ', 'OLEAS', '43', '44', 'M', '1980-09-08', 9, 0, ' ',' ', '1717276743', '2025-03-05',99460),
('MARCO', 'VINICIO', 'SALAS', 'HURTADO', '43', '49', 'M', '1975-06-25', 16, 0, ' ',' ', '1717155145', '2025-03-05',47735),
('EDISON', 'VINICIO', 'COLCHA ', 'PEREZ', '44', '51', 'M', '1973-05-24', 1, 0, ' ',' ', '1710433853', '2025-03-05',36736),
('GABRIEL', 'GABRIEL', 'PUENTE ', 'LUNA', '44', '42', 'M', '1982-11-28', 3, 0, ' ',' ', '1716860547', '2025-03-05',11694),
('LUIS ', 'GONZALO', 'RUBIO ', 'VALLEJO', '44', '44', 'M', '1981-02-07', 6, 0, ' ',' ', '1715477996', '2025-03-05',116993),
('JOSÉ ', 'DAVID', 'NIQUINGA', 'DIAZ', '44', '43', 'M', '1981-07-19', 13, 0, ' ',' ', '1712569787', '2025-03-05',54571),
('RODRIGO ', 'JOSE', 'COLCHA', 'PEREZ', '44', '43', 'M', '1981-04-15', 14, 0, ' ',' ', '1716783574', '2025-03-05',36745),
('ANDRÉS', 'ARTURO', 'SALGADO ', 'DURAN', '44', '41', 'M', '1983-03-27', 16, 0, ' ',' ', '1714562327', '2025-03-05',3288),
('HENRY ', 'RAMIRO', 'MORALES ', 'ROJA', '44', '41', 'M', '1983-03-29', 17, 0, ' ',' ', '1715137889', '2025-03-05',92083),
('JOSE ', 'DIEGO', 'COLCHA ', 'PEREZ', '44', '43', 'M', '1981-04-15', 18, 0, ' ',' ', '1716785561', '2025-03-05',36746),
('IVAN', 'ORLANDO', 'ILLAPA ', 'IDROVO', '44', '45', 'M', '1979-11-27', 19, 0, ' ',' ', '1712548468', '2025-03-05',36743),
('DARWIN ', 'FERNANDO', 'LOPEZ', 'MORETA', '44', '43', 'M', '1981-05-27', 2, 0, ' ',' ', '1715138044', '2025-03-05',85519),
('ROMMEL ', 'FABRICIO', 'POVEA ', 'LOPEZ', '44', '48', 'M', '1976-05-22', 22, 0, ' ',' ', '1712774908', '2025-03-05',89267),
('ALBERTO ', 'GUSTAVO', 'JIRÓN', 'SANTOS', '44', '42', 'M', '1982-04-27', 34, 0, ' ',' ', '1716158033', '2025-03-05',19288),
('MARCELO ', 'WLADIMIR', 'NIETO', 'ECHEVERRIA', '44', '40', 'M', '1984-08-09', 56, 0, ' ',' ', '1719121277', '2025-03-05',127903),
('JORGE ', 'ARMANDO', 'NUÑEZ ', 'PUPIALES', '44', '45', 'M', '1979-04-05', 15, 0, ' ',' ', '1714060967', '2025-03-05',139351),
('CARLOS', 'EDUARDO', 'BENITES ', 'CASA', '44', '42', 'M', '1982-12-20', 12, 0, ' ',' ', '1715124416', '2025-03-05',129350),
('MESIAS', 'VITERVO', 'PAREDES', 'RODRIGUEZ', '45', '60', 'M', '1964-10-18', 29, 0, ' ',' ', '0200911014', '2025-03-05',36233),
('CARLOS', 'ARMANDO', 'LEDESMA', 'SACAN', '45', '41', 'M', '1983-05-07', 17, 0, ' ',' ', '0201865581', '2025-03-05',109428),
('WILLIAN', 'HERNAN', 'VINUEZA', 'ARELLANO', '45', '51', 'M', '1973-08-24', 32, 0, ' ',' ', '0201302643', '2025-03-05',39244),
('RAMIRO', 'VICENTE', 'RIOFRIO', 'CAMPOVERDE', '45', '40', 'M', '1984-03-25', 5, 0, ' ',' ', '1715523906', '2025-03-05',21862),
('EDWIN', 'FERNANDO', 'NAVARRETE', 'LANDAZURI', '45', '43', 'M', '1981-11-17', 10, 0, ' ',' ', '1715732234', '2025-03-05',9007),
('CRISTIAN', 'MARCELO', 'RAMOS', 'MORENO', '45', '40', 'M', '1984-09-03', 7, 0, ' ',' ', '1715657431', '2025-03-05',10081),
('JOSE', 'LUIS', 'LARCO', 'LOPEZ', '45', '42', 'M', '1982-09-08', 13, 0, ' ',' ', '1717679094', '2025-03-05',10095),
('TELMO', 'HOMERO', 'VINUEZA', 'ARELLANO', '45', '48', 'M', '1976-04-16', 34, 0, ' ',' ', '0201543733', '2025-03-05',36230),
('MIGUEL', 'ABELARDO', 'BUÑAY', 'GAVILANES', '45', '44', 'M', '1980-09-21', 14, 0, ' ',' ', '1717181240', '2025-03-05',36232),
('VICTOR', 'HUGO', 'BOLAÑOS', 'ARELLANO', '45', '43', 'M', '1981-11-21', 8, 0, ' ',' ', '1712912912', '2025-03-05',127054),
('MIGUEL', 'ARNULFO', 'VINUEZA', 'ARELLANO', '45', '54', 'M', '1970-03-23', 25, 0, ' ',' ', '0201159852', '2025-03-05',36393),
('WILSON', 'VICENTE', 'PAREDES', 'RODRIGUEZ', '45', '56', 'M', '1968-10-23', 30, 0, ' ',' ', '0201112851', '2025-03-05',26938),
('JULIO', 'CESAR', 'CHAVEZ', 'ROMERO', '46', '59', 'M', '1965-09-30', 1, 0, ' ',' ', '1706572383', '2025-03-05',133178),
('GALO ', 'EDMUNDO', 'MORENO ', 'CHILIG', '46', '65', 'M', '1959-12-27', 3, 0, ' ',' ', '1706281936', '2025-03-05',116289),
('FERNANDO ', 'JAVIER', 'TIPANGUANO ', 'CAMPOS', '46', '45', 'M', '1979-09-12', 8, 0, ' ',' ', '1712647484', '2025-03-05',116294),
('EDDY ', 'ADALBERTO', 'RAMÍREZ ', 'BALCAZAR', '46', '54', 'M', '1971-01-20', 15, 0, ' ',' ', '1712551066', '2025-03-05',116288),
('MANUEL', 'MECIAS', 'CHICAIZA', 'BARRERA', '46', '64', 'M', '1960-12-25', 17, 0, ' ',' ', '1706580188', '2025-03-05',84142),
('JUAN ', 'PABLO', 'ARMAS ', 'CHIRIBOGA', '46', '50', 'M', '1974-05-03', 22, 0, ' ',' ', '1711525103', '2025-03-05',91897),
('VICTOR', 'HUGO', 'GALVEZ', 'CAZA', '46', '60', 'M', '1964-04-20', 23, 0, ' ',' ', '1707796536', '2025-03-05',10029),
('CARLOS', 'RAFAEL', 'PIJAL', 'CAZAR', '46', '42', 'M', '1982-09-14', 28, 0, ' ',' ', '1715882690', '2025-03-05',116290),
('GALO ', 'EFREN', 'MORAN ', 'SOLANO', '46', '52', 'M', '1972-11-17', 32, 0, ' ',' ', '1709549511', '2025-03-05',99332),
('JOSE', 'DAVID', 'QUIMBO', 'COTACACHI', '46', '67', 'M', '1957-04-20', 2, 0, ' ',' ', '1705103156', '2025-03-05',126872),
('WILLIAN ', 'FABIAN', 'BUSTILLOS ', 'ESCOBAR', '46', '51', 'M', '1973-07-29', 4, 0, ' ',' ', '1712688751', '2025-03-05',126869),
('CESAR', 'ALFREDO', 'VILLALTA ', 'QUISPE', '46', '44', 'M', '1980-11-08', 7, 0, ' ',' ', '1203547284', '2025-03-05',126870),
('BALVITON', 'DIRSEO', 'YUNAPANTA', 'MEDINA', '46', '48', 'M', '1976-12-26', 30, 0, ' ',' ', '1710801216', '2025-03-05',126873),
('VÍCTOR', 'IVÁN', 'FERNÁNDEZ', 'GRANJA', '47', '55', 'M', '1969-06-10', 2, 0, ' ',' ', '1709923476', '2025-03-05',99226),
('FRANKLIN', 'GASPAR', 'PROAÑO', ' HARO', '47', '52', 'M', '1973-03-06', 8, 0, ' ',' ', '1712460029', '2025-03-05',105011),
('JUAN', 'CRISTOBAL', 'MONTENEGRO', 'GUANANGA', '47', '61', 'M', '1963-07-22', 10, 0, ' ',' ', '1707784961', '2025-03-05',99224),
('LUIS', 'OMAR', 'DIAZ', 'MORALES', '47', '52', 'M', '1972-10-19', 11, 0, ' ',' ', '1712341153', '2025-03-05',114138),
('JORGE', 'PATRICIO', 'ORTEGA', 'ANDINO', '47', '43', 'M', '1981-05-29', 14, 0, ' ',' ', '1715686364', '2025-03-05',114141),
('SANTIAGO', 'JAVIER', 'PARRA', 'CABEZAS', '47', '42', 'M', '1982-10-28', 16, 0, ' ',' ', '1714857222', '2025-03-05',2013),
('JULIO', 'SANTIAGO', 'CANDO', 'GUERRERO', '47', '41', 'M', '1983-07-17', 18, 0, ' ',' ', '1714975040', '2025-03-05',98667),
('FAUSTO', 'VINICIO', 'GODOY', 'PAREDES', '47', '66', 'M', '1958-11-11', 20, 0, ' ',' ', '170447736', '2025-03-05',117002),
('PABLO', 'ANDRES', 'REDROBAN', 'FUERTES', '47', '41', 'M', '1984-02-16', 21, 0, ' ',' ', '1716167570', '2025-03-05',98436),
('JORGE', '', 'MONTALVAN', 'BOWEN', '47', '43', 'M', '1981-05-13', 26, 0, ' ',' ', '0802132472', '2025-03-05',117673),
('DIEGO', 'FERNANDO', 'GUANOLUISA', 'LOMA', '47', '41', 'M', '1983-08-30', 27, 0, ' ',' ', '1714234323', '2025-03-05',119413),
('OLIVER', 'RICARDO', 'RODRIGUEZ', 'AGUIRRE', '47', '40', 'M', '1984-11-21', 1, 0, ' ',' ', '1718263872', '2025-03-05',126590),
('MARCO', 'IVAN', 'RAMIREZ', 'MORALES', '47', '42', 'M', '1983-02-07', 7, 0, ' ',' ', '1714561741', '2025-03-05',126589),
('GUSTAVO', 'ADOLFO', 'CANDO', 'GUERRERO', '47', '43', 'M', '1981-08-07', 17, 0, ' ',' ', '1714975032', '2025-03-05',126842),
('JORGE', 'LUIS', 'MONTERO', 'BONILLA', '47', '41', 'M', '1984-02-10', 5, 0, ' ',' ', '1717298218', '2025-03-05',126841),
('CRISTHIAN', 'DANIEL', 'POVEDA', 'RIVAS', '47', '42', 'M', '1983-01-02', 19, 0, ' ',' ', '1719288530', '2025-03-05',126840),
('VICTOR', 'HUGO', 'ARMIJOS', 'LIMA', '47', '45', 'M', '1979-08-10', 13, 0, ' ',' ', '1002213963', '2025-03-05',118792),
('SERGIO', 'RAFAEL', 'FERNANDEZ', 'GRANJA', '47', '50', 'M', '1974-05-03', 9, 0, ' ',' ', '1712218717', '2025-03-05',114141),
('JOSE', 'LUIS', 'FUENTES', 'GUANANGA', '47', '43', 'M', '1982-01-15', 22, 0, ' ',' ', '1713719670', '2025-03-05',115054),
('JORGE ', 'WASHINGTON', 'ANDINO ', 'PAGUAY', '48', '46', 'M', '1979-02-23', 4, 0, ' ',' ', '1714412473', '2025-03-05',8456),
('CESAR ', 'AGUSTO', 'SALGUERO', 'DAZA', '48', '48', 'M', '1976-07-05', 55, 0, ' ',' ', '1710879105', '2025-03-05',22119),
('VICTOR ', 'MANUEL', 'OÑATE ', 'GUERRERO', '48', '52', 'M', '1972-07-18', 9, 0, ' ',' ', '1712251790', '2025-03-05',22436),
('JUAN', 'CARLOS', 'SALGUERO ', 'DAZA', '48', '45', 'M', '1980-02-01', 11, 0, ' ',' ', '1713243176', '2025-03-05',8160),
('WILSON ', 'RODRIGO', 'ANDINO ', 'PAGUAY', '48', '48', 'M', '1977-01-06', 12, 0, ' ',' ', '1714013800', '2025-03-05',8173),
('GIOVANNY ', 'EDUARDO', 'ROMERO  ', 'MOROCHO', '48', '49', 'M', '1975-08-21', 14, 0, ' ',' ', '1713779203', '2025-03-05',117073),
('BYRON', 'WLADIMIR', 'ROMERO ', 'BASANTES', '48', '45', 'M', '1980-02-13', 8, 0, ' ',' ', '1716239379', '2025-03-05',111689),
('FAUSTO ', 'ARMANDO', 'CORNEJO', 'AMANTA', '48', '55', 'M', '1969-10-27', 20, 0, ' ',' ', '1710588664', '2025-03-05',25045),
('WILMER', 'ESTALIN', 'ANDINO', 'PAGUAY', '48', '51', 'M', '1974-02-26', 33, 0, ' ',' ', '1710622489', '2025-03-05',18298),
('ALEXIS ', 'LEONARDO', 'MENA', 'GARCIA', '48', '45', 'M', '1979-06-01', 77, 0, ' ',' ', '1715743272', '2025-03-05',8159),
('WILSON ', 'GERMAN', 'ALQUINGA ', 'QUINTEROS', '48', '48', 'M', '1977-02-02', 15, 0, ' ',' ', '1710529262', '2025-03-05',117688),
('WLADIMIR', 'ESTUARDO', 'VELASCO', 'LLUMIQUINGA', '48', '49', 'M', '1975-11-26', 18, 0, ' ',' ', '1712490257', '2025-03-05',118759),
('ORLANDO ', 'JAVIER', 'TORRES', 'GRANDA', '48', '54', 'M', '1970-04-04', 7, 0, ' ',' ', '1713299199', '2025-03-05',8171),
('EDGAR ', 'VINICIO', 'CORNEJO', 'AMANTA', '48', '56', 'M', '1968-03-13', 22, 0, ' ',' ', '0602223406', '2025-03-05',109465),
('FRANCISCO ', 'JAVIER', 'CARRION', 'CASTILLO', '48', '40', 'M', '1984-06-04', 23, 0, ' ',' ', '1716852247', '2025-03-05',8030),
('PATRICIO', 'EDGAR', 'VACA', 'AREQUIPA', '48', '62', 'M', '1963-01-03', 10, 0, ' ',' ', '1707592547', '2025-03-05',78680),
('MILTON', 'RAUL', 'GUANO ', 'LLUMIQUINGA', '49', '52', 'M', '1973-01-31', 3, 0, ' ',' ', '1711479673', '2025-03-05',116986),
('MARCO ', 'ANTONIO', 'TAPIA ', 'CHILUISA', '49', '55', 'M', '1969-08-24', 5, 0, ' ',' ', '1710181072', '2025-03-05',99371),
('EDUARDO', 'ANTONIO', 'MUENTES', 'VERA', '49', '42', 'M', '1982-07-25', 9, 0, ' ',' ', '1719889659', '2025-03-05',36500),
('CARLOS', 'ANIBAL', 'TUAZA ', 'CHICAIZA', '49', '50', 'M', '1975-03-09', 12, 0, ' ',' ', '1713619250', '2025-03-05',72221),
('IVÁN ', 'MARCELO', 'HERNANDEZ ', 'BUENAÑO', '49', '52', 'M', '1972-07-20', 14, 0, ' ',' ', '0602673691', '2025-03-05',79127),
('EDWIN', 'VINICIO', 'PANCHI ', 'TERAN', '49', '48', 'M', '1977-01-15', 15, 0, ' ',' ', '1712480332', '2025-03-05',36450),
('DANIEL', 'FERNANDO', 'MURILLO ', 'FERNANDEZ', '49', '52', 'M', '1973-02-03', 16, 0, ' ',' ', '1712206042', '2025-03-05',126601),
('EDGAR ', 'MARCELO', 'QUISHPILLO ', 'COLCHA', '49', '47', 'M', '1977-06-14', 21, 0, ' ',' ', '0603115833', '2025-03-05',126603),
('LUIS ', 'HERIBERTO', 'TELLO ', 'SUAREZ', '49', '55', 'M', '1969-09-29', 22, 0, ' ',' ', '0501710149', '2025-03-05',53901),
('HENRY ', 'OSWALDO', 'BERNAL', 'BERNAL', '49', '53', 'M', '1972-03-03', 23, 0, ' ',' ', '0401008313', '2025-03-05',1923),
('VICTOR', 'ISAIAS', 'VIZUETE ', 'CORDONES', '49', '49', 'M', '1975-10-03', 47, 0, ' ',' ', '1710554138', '2025-03-05',117206),
('JORGE ', 'OSWALDO', 'CASTILLO ', 'PALADINES', '49', '41', 'M', '1984-02-28', 17, 0, ' ',' ', '1714571591', '2025-03-05',130176),
('JHON', 'WILLIAN', 'CARVAJAL', 'ESPINOSA', '49', '53', 'M', '1971-03-11', 13, 0, ' ',' ', '1711091197', '2025-03-05',133089),
('SANTOS', 'JAIME', 'VERA', 'OVIEDO', '50', '47', 'M', '1977-05-22', 4, 0, ' ',' ', '1103596456', '2025-03-05',106979),
('MILTON ', 'SEGUNDO', 'ANGUETA ', 'SALAZAR', '50', '57', 'M', '1967-08-27', 5, 0, ' ',' ', '0501606305', '2025-03-05',4601),
('SAUL ', 'IVAN', 'VILLAVICENCIO', 'FLORES', '50', '50', 'M', '1974-05-13', 10, 0, ' ',' ', '0916157506', '2025-03-05',89244),
('WILSON ', 'EDUARDO', 'ERAS', 'RODRIGUEZ', '50', '43', 'M', '1981-05-09', 45, 0, ' ',' ', '1717357675', '2025-03-05',114685),
('OMAR ', 'MANUEL', 'VERA ', 'OVIEDO', '50', '43', 'M', '1981-11-13', 13, 0, ' ',' ', '1715834725', '2025-03-05',117377),
('NELSON ', 'VICENTE', 'NAPA ', 'VARGAS', '50', '44', 'M', '1981-03-07', 16, 0, ' ',' ', '1310670565', '2025-03-05',47975),
('MANUEL ', 'MESIAS', 'TAPIA ', 'VELASQUEZ', '50', '61', 'M', '1964-01-28', 17, 0, ' ',' ', '1707581391', '2025-03-05',63286),
('JOSÉ ', 'ARQUIMEDEZ', 'MORALES ', 'BRAVO', '50', '45', 'M', '1979-11-19', 19, 0, ' ',' ', '1204328890', '2025-03-05',114689),
('ALFREDO ', 'ELISALDE', 'VARGAS ', 'CEDEÑO', '50', '46', 'M', '1978-06-20', 21, 0, ' ',' ', '1310042583', '2025-03-05',47977),
('HOLGUER', 'RODRIGO', 'CABRERA ', 'ITAS', '50', '46', 'M', '1978-08-02', 23, 0, ' ',' ', '1715059356', '2025-03-05',10135),
('ANDRES ', 'AVELINO', 'ESTRADA', 'CHINGA', '50', '52', 'M', '1972-04-11', 24, 0, ' ',' ', '1306676329', '2025-03-05',47973),
('LUIS ', 'LAUTARO', 'BERMEO ', 'QUISPE', '50', '52', 'M', '1972-06-19', 30, 0, ' ',' ', '0915272785', '2025-03-05',9921),
('JORGE ', 'WASHINGTON', 'OCHOA ', 'MOPOSITA', '50', '50', 'M', '1975-02-13', 35, 0, ' ',' ', '1712042363', '2025-03-05',126583),
('ELVER', '', 'MEDINA', 'ORDINOLA', '50', '48', 'M', '1976-12-30', 2, 0, ' ',' ', '1723752752', '2025-03-05',133025),
('RENATO', 'PATRICIO', 'SOLIS', 'MORGNER', '50', '41', 'M', '1983-11-26', 8, 0, ' ',' ', '1719623165', '2025-03-05',130513),
('IVAN', 'RODRIGO', 'OCAÑA', 'VIZCAINO', '50', '57', 'M', '1967-10-10', 9, 0, ' ',' ', '1707000426', '2025-03-05',133066),
('CESAR', 'RODRIGO', 'MENA', 'VIZCAINO', '50', '50', 'M', '1974-05-02', 20, 0, ' ',' ', '1711984466', '2025-03-05',133065),
('ALMINCAR', 'ROLANDO', 'RODRIGUEZ', 'CAMACHO', '50', '45', 'M', '1980-01-12', 22, 0, ' ',' ', '1714647441', '2025-03-05',133135),
('ORLANDO', 'VINICIO', 'GUAMAN', 'PILA', '51', '42', 'M', '1982-05-09', 2, 0, ' ',' ', '1718673138', '2025-03-05',133263),
('SERGIO ', 'ADALBERTO', 'QUINLIN ', 'VEALSCO', '51', '40', 'M', '1984-04-27', 3, 0, ' ',' ', '604144568', '2025-03-05',78473),
('DIEGO', 'ERNESTO', 'RAMOS', 'TAPIA', '51', '50', 'M', '1975-02-10', 4, 0, ' ',' ', '1712367174', '2025-03-05',72278),
('JOSÉ', 'EFRAIN', 'PALOMINO ', 'SANCHEZ', '51', '52', 'M', '1972-04-09', 5, 0, ' ',' ', '0602609786', '2025-03-05',48302),
('VICTOR ', 'WARREN', 'CHAVEZ ', 'ESPINOZA', '51', '49', 'M', '1975-09-01', 6, 0, ' ',' ', '1712237948', '2025-03-05',106374),
('JORGE ', 'WASHINGTON', 'MULLO', 'IZA', '51', '50', 'M', '1974-07-22', 7, 0, ' ',' ', '1713141115', '2025-03-05',115927),
('LUIS ', 'AGUSTO', 'JIMÉNEZ ', 'AGUIRRE', '51', '47', 'M', '1977-11-22', 8, 0, ' ',' ', '1715371702', '2025-03-05',89841),
('EDGAR', 'DANIEL', 'PALOMINO ', 'SANCHEZ', '51', '44', 'M', '1981-02-16', 9, 0, ' ',' ', '1715291215', '2025-03-05',9855),
('JUAN ', 'ALFREDO', 'PALOMINO ', 'SANCHEZ', '51', '50', 'M', '1974-03-31', 12, 0, ' ',' ', '0602753006', '2025-03-05',84183),
('RODRIGO ', 'BAYARDO', 'LLOACANA', 'BAÑO', '51', '50', 'M', '1975-03-09', 13, 0, ' ',' ', '1711834539', '2025-03-05',116458),
('JUAN ', 'CLAUDIO', 'RIVERA ', 'YANZA', '51', '45', 'M', '1980-02-22', 15, 0, ' ',' ', '1715682231', '2025-03-05',126578),
('SERGIO ', 'GERMAN', 'GALLO', 'CAZA', '51', '49', 'M', '1975-03-10', 20, 0, ' ',' ', '1706657416', '2025-03-05',9834),
('RAÚL', 'SANTIAGO', 'GALARZA ', 'QUISHPE', '51', '42', 'M', '1982-05-24', 21, 0, ' ',' ', '1715600126', '2025-03-05',101552),
('FREDDY ', 'BOLIVAR', 'CALVOPIÑA ', 'MUÑOZ', '51', '48', 'M', '1977-02-19', 23, 0, ' ',' ', '1716080799', '2025-03-05',99474),
('ANTONIO ', 'GERMANICO', 'HERRERA ', 'NAVARRETE', '51', '50', 'M', '1975-03-07', 25, 0, ' ',' ', '0502133325', '2025-03-05',93237),
('HERNAN ', 'ARMANDO', 'GALLO ', 'CAZA', '51', '49', 'M', '1975-03-12', 26, 0, ' ',' ', '1705548657', '2025-03-05',36290),
('GALO ', '', 'ESPIN', 'VALLEJO', '51', '62', 'M', '1963-01-10', 1, 0, ' ',' ', '1707845267', '2025-03-05',128189),
('JUAN', 'CARLOS', 'POTOSI', 'TOAPANTA', '51', '46', 'M', '1978-06-24', 21, 0, ' ',' ', '1712831229', '2025-03-05',133032),
('LUIS', 'HUMBERTO', 'AMAGUAÑA', 'CAZA', '52', '61', 'M', '1963-06-22', 2, 0, ' ',' ', '1707607725', '2025-03-05',9896),
('EDISON', 'FERNANDO', 'AMAGUAÑA', 'PILLAJO', '52', '40', 'M', '1984-06-04', 3, 0, ' ',' ', '1716088511', '2025-03-05',9899),
('LUIS', 'GONZALO', 'VASQUEZ', 'PILLAJO', '52', '59', 'M', '1965-08-30', 8, 0, ' ',' ', '1706738810', '2025-03-05',9880),
('WILLIAN', 'GUSTAVO', 'MONTAGUANO', 'VÁSQUEZ', '52', '43', 'M', '1981-04-17', 11, 0, ' ',' ', '1715192561', '2025-03-05',9900),
('WILSON', 'PATRICIO', 'GUAYASAMIN', 'MANOVANDA', '52', '52', 'M', '1972-03-30', 12, 0, ' ',' ', '1709886681', '2025-03-05',9892),
('JUAN', 'CARLOS', 'VIERA', 'PILATAXI', '52', '44', 'M', '1980-10-30', 18, 0, ' ',' ', '0502297013', '2025-03-05',9886),
('TEOFILO', 'RODRIGO', 'VASQUEZ', 'PILLAJO', '52', '64', 'M', '1961-01-11', 19, 0, ' ',' ', '1706750492', '2025-03-05',9852),
('FREDDY', 'GIOVANNY', 'AMAGUAÑA', 'CONDE', '52', '43', 'M', '1981-10-26', 42, 0, ' ',' ', '1717260002', '2025-03-05',118518),
('MANUEL', 'ENRIQUE', 'CAIZA', 'AMGUAÑA', '52', '46', 'M', '1979-01-01', 27, 0, ' ',' ', '1712400330', '2025-03-05',18220),
('JUAN', 'CARLOS', 'TENELEMA', 'AMAGUAÑA', '52', '40', 'M', '1984-05-09', 46, 0, ' ',' ', '1719942482', '2025-03-05',127226),
('JORGE', 'LUIS', 'AMAGUAÑA', 'PILLAJO', '52', '39', 'M', '1985-08-21', 20, 0, ' ',' ', '1716088529', '2025-03-05',9903),
('CARLOS', 'ALBERTO', 'MALDONADO ', 'ROBALINO', '53', '50', 'M', '1975-02-03', 2, 0, ' ',' ', '1713811253', '2025-03-05',13535),
('JORGE ', 'MANUEL', 'LALA ', 'TOAPANTA', '53', '65', 'M', '1959-12-30', 4, 0, ' ',' ', '1706291349', '2025-03-05',10375),
('ARTURO', 'LENIN', 'LASTRA', 'TOAPANTA', '53', '40', 'M', '1984-12-02', 5, 0, ' ',' ', '1718481169', '2025-03-05',13542),
('HERMELINDO ', 'FREDICIDE', 'BRIONEZ ', 'RIVERA', '53', '59', 'M', '1965-09-05', 6, 0, ' ',' ', '1709632564', '2025-03-05',69284),
('FREDDY ', 'GERARDO', 'MALDONADO', 'ROBALINO', '53', '44', 'M', '1980-12-22', 9, 0, ' ',' ', '1712926805', '2025-03-05',13547),
('MILTON', 'HUGO', 'LASTRA ', 'MENA', '53', '59', 'M', '1966-01-16', 16, 0, ' ',' ', '1708749161', '2025-03-05',13533),
('EDGAR', 'LEONARDO', 'MALDONADO ', 'ROBALINO', '53', '42', 'M', '1982-09-03', 17, 0, ' ',' ', '1718013699', '2025-03-05',13540),
('KLEBER  ', 'GUSTAVO', 'MALDONADO ', 'ROBALINO', '53', '48', 'M', '1977-01-01', 18, 0, ' ',' ', '1714742721', '2025-03-05',13534),
('LIVINGTON ', 'FABIAN', 'ESTRELLA ', 'MENA', '53', '50', 'M', '1974-09-11', 21, 0, ' ',' ', '1203734056', '2025-03-05',13538),
('ROBERTO ', 'CARLOS', 'ESTRELLA', 'MENA', '53', '46', 'M', '1978-07-23', 3, 0, ' ',' ', '1204240616', '2025-03-05',106703),
('JAVIER ', 'RICARDO', 'AYALA ', 'MENA', '53', '54', 'M', '1970-07-19', 14, 0, ' ',' ', '1710252212', '2025-03-05',13532),
('FARLIN ', 'ESTUARDO', 'MÉNDEZ ', 'GUDIÑO', '53', '45', 'M', '1979-12-16', 7, 0, ' ',' ', '1713178778', '2025-03-05',99239),
('VIRGILIO ', 'ROLANDO', 'PICO ', 'PINCAY', '53', '46', 'M', '1978-03-27', 38, 0, ' ',' ', '1309624847', '2025-03-05',89336),
('EDUARDO', 'GONZALO', 'RON', 'TEJADA', '54', '70', 'M', '1954-12-05', 2, 0, ' ',' ', '1704347416', '2025-03-05',10376),
('DANIEL', 'EDUARDO', 'RON', 'JARAMILLO', '54', '44', 'M', '1980-03-31', 7, 0, ' ',' ', '1716290414', '2025-03-05',10378),
('KLEBER', 'LEONARDO', 'BÁEZ', 'HERRERIA', '54', '49', 'M', '1976-02-26', 11, 0, ' ',' ', '1713570305', '2025-03-05',62215),
('MAURICIO', 'EFRAIN ', 'ALBAN', 'JARAMILLO', '54', '45', 'M', '1979-05-06', 4, 0, ' ',' ', '1715603484', '2025-03-05',62156),
('MARIO', 'ROBERTO', 'QUINALUIZA', 'TOAPANTA', '54', '54', 'M', '1971-03-01', 17, 0, ' ',' ', '1802431070', '2025-03-05',78047),
('JAIME', '', 'IZA', 'CASTRO', '54', '48', 'M', '1976-07-02', 6, 0, ' ',' ', '1712945136', '2025-03-05',90708),
('EDGAR', 'REMBERTO', 'VALENCIA', 'TUQUERES', '54', '58', 'M', '1966-09-30', 9, 0, ' ',' ', '1001667573', '2025-03-05',103555),
('FABRICIO', 'ALEXANDER', 'GUTIÉRREZ', 'ECHEVERRIA', '54', '47', 'M', '1978-02-18', 14, 0, ' ',' ', '0603036609', '2025-03-05',89520),
('ALEX', 'XAVIER', 'OÑA', 'BAUTISTA', '54', '52', 'M', '1972-03-29', 5, 0, ' ',' ', '1711512242', '2025-03-05',98676),
('ROMEL', 'SAMUEL', 'GARCIA', '', '54', '60', 'M', '1964-05-11', 19, 0, ' ',' ', '1102403530', '2025-03-05',116207),
('HENRY', 'FELIPE', 'GOMEZ', 'CHICAIZA', '54', '48', 'M', '1976-04-06', 8, 0, ' ',' ', '0702361973', '2025-03-05',62377),
('JUAN', 'PABLO', 'HARO', 'VIVAR', '54', '49', 'M', '1976-01-14', 16, 0, ' ',' ', '1713444873', '2025-03-05',36702),
('HUGO', 'NICOLAS', 'PROAÑO', 'ROBALINO', '54', '56', 'M', '1968-04-17', 13, 0, ' ',' ', '1709355216', '2025-03-05',15677),
('FERNANDO', 'VLADIMIR', 'HIDALGO', 'BETANCOURT', '54', '42', 'M', '1982-03-16', 1, 0, ' ',' ', '1713378105', '2025-03-05',10371),
('EDISON', 'KLEBER', 'LEÓN', ' TOSCANO', '55', '66', 'M', '1958-12-19', 2, 0, ' ',' ', '1705243036', '2025-03-05',106592),
('JUAN', 'VICENTE', 'VILLAMARIN', 'ORTIZ', '55', '55', 'M', '1969-05-28', 5, 0, ' ',' ', '1708459746', '2025-03-05',10270),
('GEORGE', 'WASHINGTON', 'ROMERO', 'BALLESTEROS', '55', '55', 'M', '1969-09-02', 28, 0, ' ',' ', '1709634974', '2025-03-05',10279),
('SEGUNDO', 'EMILIO', 'CHANGO', 'GUAPISACA', '55', '50', 'M', '1974-07-28', 12, 0, ' ',' ', '1802767697', '2025-03-05',10278),
('SEGUNDO', 'JOSE', 'MINAGUA', 'ILBAY', '55', '44', 'M', '1980-09-03', 13, 0, ' ',' ', '1716071798', '2025-03-05',36599),
('CARLOS', 'FERNANDO', 'CASTELLANOS', 'BALLESTEROS', '55', '52', 'M', '1973-02-16', 15, 0, ' ',' ', '1712141942', '2025-03-05',36207),
('KLEBER', 'WLADIMIR', 'YUGCHA', 'CRUZ', '55', '51', 'M', '1973-08-20', 25, 0, ' ',' ', '1709328809', '2025-03-05',105205),
('GUILLERMO', 'ENRIQUE', 'MAISINCHO', 'MIRANDA', '55', '71', 'M', '1953-11-09', 26, 0, ' ',' ', '1702804830', '2025-03-05',9988),
('MARCO', 'ANTONIO', 'MARTINEZ', 'GALARZA', '55', '62', 'M', '1962-09-02', 19, 0, ' ',' ', '501209647', '2025-03-05',89341),
('WASHINGTON', '', 'CRESPO', 'HERRERA', '55', '60', 'M', '1964-07-03', 20, 0, ' ',' ', '1707613160', '2025-03-05',89397),
('VICENTE', ' POMERIO', 'ZAMBRANO', 'VERGARA', '55', '48', 'M', '1976-12-28', 14, 0, ' ',' ', '1309485504', '2025-03-05',127223),
('CESAR', 'ALCIDES', 'ROMERO', 'GARCIA', '56', '51', 'M', '1973-11-10', 44, 0, ' ',' ', '1712131927', '2025-03-05',106515),
('CARLOS', 'SANTIAGO', 'VARGAS', 'ABRIL', '56', '45', 'M', '1979-12-30', 2, 0, ' ',' ', '1715529739', '2025-03-05',114905),
('JHON', 'LEONARDO', 'PRADO', 'PRADO', '56', '69', 'M', '1955-09-29', 3, 0, ' ',' ', '1709635203', '2025-03-05',36583),
('BYRON', 'IVAN ', 'AREVALO', 'GARCIA', '56', '43', 'M', '1981-10-04', 5, 0, ' ',' ', '0401031398', '2025-03-05',126740),
('OSCAR', 'DAVID', 'NOLIVOS', 'TAMAYO', '56', '42', 'M', '1982-06-27', 7, 0, ' ',' ', '1716906449', '2025-03-05',126727),
('BYRON', 'FERNANDO', 'CALERO', 'BAUTISTA', '56', '45', 'M', '1979-11-23', 12, 0, ' ',' ', '1716336514', '2025-03-05',126741),
('EDISON', 'MARCELO', 'RIVERA', 'TINGO', '56', '43', 'M', '1981-12-25', 13, 0, ' ',' ', '1717778946', '2025-03-05',52349),
('SEGUNDO', 'JUAN', 'AIMACAÑA', 'CHICAIZA', '56', '59', 'M', '1965-11-05', 14, 0, ' ',' ', '1708319072', '2025-03-05',126726),
('ROLANDO', 'GERMAN', 'MAYA', 'YAGUAL', '56', '47', 'M', '1977-12-22', 10, 0, ' ',' ', '0917977431', '2025-03-05',110753),
('VINICIO', 'PATRICIO', 'TAIPE', 'USHIÑA', '56', '39', 'M', '1985-03-19', 99, 0, ' ',' ', '1721221792', '2025-03-05',90313),
('FREDDY', 'ENRIQUE', 'AYALA', 'ALVARO', '56', '49', 'M', '1975-12-09', 4, 0, ' ',' ', '1713029609', '2025-03-05',116444),
('PABLO', 'RENE', 'CHILUISA', 'MEDINA', '56', '50', 'M', '1975-01-22', 17, 0, ' ',' ', '1711402139', '2025-03-05',36655),
('JOSÉ', 'FERNANDO', 'ÁLVAREZ', 'SOSA', '56', '49', 'M', '1975-09-14', 71, 0, ' ',' ', '1307302412', '2025-03-05',84213),
('EDGAR', ' STALIN', 'MENDEZ', 'GARCIA', '56', '49', 'M', '1975-12-01', 8, 0, ' ',' ', '0802076091', '2025-03-05',28191),
('FABIAN', 'ROMEO', 'ORBE', 'SANTOS', '56', '69', 'M', '1955-11-24', 1, 0, ' ',' ', '1704349727', '2025-03-05',103897),
('LUIS', 'PASCUAL', 'LOACHAMIN', 'ONOFA', '56', '48', 'M', '1976-12-21', 9, 0, ' ',' ', '1712052420', '2025-03-05',84719),
('IVAN', 'GONZALO', 'RUBIO', 'GALVEZ', '56', '59', 'M', '1965-04-27', 21, 0, ' ',' ', '1600193591', '2025-03-05',99458),
('VICTOR', 'HUGO', 'PEREZ', 'IZA', '56', '57', 'M', '1967-04-13', 11, 0, ' ',' ', '1714201884', '2025-03-05',133171),
('LINO', 'LEONARDO', 'LOPEZ', 'ARIAS', '56', '43', 'M', '1982-01-21', 16, 0, ' ',' ', '1717155889', '2025-03-05',94753),
('JIMMY', 'JEFFERSON', 'CAGUA', 'CRUEL', '56', '42', 'M', '1983-01-08', 23, 0, ' ',' ', '0802927624', '2025-03-05',133176),
('VICENTE ', 'ALBERTO', 'CHAUCA', 'QUIZHPI', '57', '48', 'M', '1976-09-06', 5, 0, ' ',' ', '1714445325', '2025-03-05',106779),
('HECTOR ', 'GONZALO', 'MONTALUISA', 'CAIZA', '57', '61', 'M', '1963-04-28', 8, 0, ' ',' ', '1707853329', '2025-03-05',10326),
('JORGE', 'RICARDO', 'LIGER ', 'MENA', '57', '54', 'M', '1970-05-24', 12, 0, ' ',' ', '1708024854', '2025-03-05',119216),
('VÍCTOR ', 'GREGORIO', 'ESPINOZA ', 'IZA', '57', '45', 'M', '1979-04-16', 19, 0, ' ',' ', '1712776895', '2025-03-05',115687),
('MILTON ', 'RENE', 'ACHIG ', 'AMAGUAÑA', '57', '50', 'M', '1974-10-02', 18, 0, ' ',' ', '1712057817', '2025-03-05',84908),
('WILLIANS ', 'RICHARD', 'LÓPEZ', 'PILLAJO', '57', '52', 'M', '1972-09-13', 30, 0, ' ',' ', '1711590909', '2025-03-05',10335),
('LUIS ', 'NELSON', 'LOPEZ ', 'CAZA', '57', '62', 'M', '1962-10-07', 34, 0, ' ',' ', '1707263271', '2025-03-05',9841),
('WILSON', 'RAMIRO', 'MONTALUIZA', 'CAIZA', '57', '56', 'M', '1969-02-12', 56, 0, ' ',' ', '1710426949', '2025-03-05',85755),
('LUIS ', 'OSWALDO', 'TIPANTUÑA ', 'CAIZA', '57', '58', 'M', '1967-02-25', 99, 0, ' ',' ', '1709629339', '2025-03-05',10333),
('JORGE ', 'REINALDO', 'RIOS', 'SANGUCHO', '57', '57', 'M', '1968-02-14', 69, 0, ' ',' ', '1710050962', '2025-03-05',114124),
('LUIS ', 'ANGEL', 'LEMA', 'TIPANTUÑA', '57', '51', 'M', '1973-08-09', 90, 0, ' ',' ', '1712631520', '2025-03-05',10319),
('JOSE ATILIO', 'ATILO', 'LOPEZ ', 'PILLAJO', '57', '65', 'M', '1959-08-10', 2, 0, ' ',' ', '1706461587', '2025-03-05',37669),
('FRANKLIN', 'PATRICIO', 'MAILA ', 'RAMIREZ', '57', '46', 'M', '1979-02-19', 10, 0, ' ',' ', '1711891034', '2025-03-05',10334),
('LUIS', 'ANIBAL', 'BARROS', 'ADRIANO', '57', '58', 'M', '1966-07-08', 13, 0, ' ',' ', '1708891682', '2025-03-05',114123),
('WALTER ', 'GUSTAVO', 'LOPEZ ', 'LIQUINCHANA', '57', '41', 'M', '1983-05-31', 3, 0, ' ',' ', '1717293607', '2025-03-05',102224),
('EDGAR', 'ALBERTO', 'LOPEZ', 'VELA', '57', '49', 'M', '1975-08-10', 6, 0, ' ',' ', '1712615911', '2025-03-05',22200),
('FRANCISCO', 'JAVIER', 'OBANDO', 'CASTILLO', '57', '38', 'M', '1986-09-06', 14, 0, ' ',' ', '1720501350', '2025-03-05',18137),
('WILMER', 'SANTIAGO', 'LOPEZ', 'CHULCA', '57', '39', 'M', '1985-10-10', 9, 0, ' ',' ', '1715820146', '2025-03-05',10327),
('MARTIN', 'EDUARDO', 'LOPEZ', 'CELIN', '58', '46', 'M', '1978-06-10', 2, 0, ' ',' ', '0401141379', '2025-03-05',119071),
('ANGEL', 'OSALDO', 'ARRIETA', 'MELENDEZ', '58', '44', 'M', '1980-06-02', 5, 0, ' ',' ', '0501338958', '2025-03-05',78162),
('GABRIEL', 'MARCELO', 'SIMBAÑA', 'MUZO', '58', '47', 'M', '1978-01-26', 15, 0, ' ',' ', '1715336473', '2025-03-05',83749),
('JUAN', '', 'JIJON', 'YUMBO', '58', '42', 'M', '1982-03-28', 20, 0, ' ',' ', '1717111361', '2025-03-05',78078),
('SEGUNDO', 'ALFREDO', 'ANAGO', 'CABRERA', '58', '70', 'M', '1954-08-29', 11, 0, ' ',' ', '1703981090', '2025-03-05',89337),
('CARLOS', 'ALEJANDRO', 'SALAZAR', 'PILATAGSI', '58', '60', 'M', '1965-02-02', 7, 0, ' ',' ', '1708559735', '2025-03-05',106611),
('JORGE', 'LUIS ', 'PANTA', 'ARPI', '58', '44', 'M', '1980-12-27', 17, 0, ' ',' ', '0703845438', '2025-03-05',117276),
('EDWIN', 'MAURICIO', 'GUALPAZ', 'VILLOTA', '59', '44', 'M', '1980-06-10', 3, 0, ' ',' ', '1715298749', '2025-03-05',100580),
('DARWIN', 'DAMIAN', 'GUALPAZ', 'GUERRON', '59', '41', 'M', '1983-04-11', 33, 0, ' ',' ', '1716136278', '2025-03-05',116694),
('WALTER', 'ADALBERTO', 'PAREDES', 'RODRÍGUEZ', '59', '53', 'M', '1971-04-23', 34, 0, ' ',' ', '0201216199', '2025-03-05',36231),
('PULLAS', 'CORREA', 'EDWIN', 'ROBERTO', '59', '51', 'M', '1973-10-04', 36, 0, ' ',' ', '1709329922', '2025-03-05',13785),
('MARCO', 'ENRIQUE', 'OTAÑEZ', ' QUINCHUELA', '59', '47', 'M', '1977-05-20', 38, 0, ' ',' ', '1713476123', '2025-03-05',29128),
('OSCAR', 'ALEXANDRO', 'JUMBO', 'JUMBO', '59', '53', 'M', '1972-02-02', 40, 0, ' ',' ', '1710450329', '2025-03-05',115833),
('MILTON', 'ANSELMO', 'ANDRADE', 'PABON', '59', '44', 'M', '1980-03-31', 41, 0, ' ',' ', '1712644275', '2025-03-05',99346),
('ROMEL', 'AUGUSTO', 'CANDONGA', 'CHINCHIN', '59', '44', 'M', '1981-03-05', 42, 0, ' ',' ', '1714359815', '2025-03-05',10292),
('CARLOS', 'ANIBAL', 'JARAMILLO', 'CAÑIZARES', '59', '53', 'M', '1971-05-19', 43, 0, ' ',' ', '1711593325', '2025-03-05',98299),
('GALO', 'OSWALDO', 'MENDEZ', '', '59', '54', 'M', '1970-05-26', 44, 0, ' ',' ', '1710522028', '2025-03-05',61941),
('LUIS', 'ALBERTO', 'ZAPATA', 'BLANCO', '59', '52', 'M', '1972-03-10', 45, 0, ' ',' ', '1709172355', '2025-03-05',106586),
('ORLANDO', 'PATRICIO', 'TORRES', 'MORENO', '59', '48', 'M', '1976-06-15', 46, 0, ' ',' ', '1710872639', '2025-03-05',9823),
('CARLOS', 'SEGUNDO', 'CHANATAXI', 'CAIZA', '59', '54', 'M', '1970-07-18', 47, 0, ' ',' ', '1710853092', '2025-03-05',98302),
('JAIME', 'ENRIQUE', 'ANDRADE', 'TENORIO', '59', '44', 'M', '1980-08-25', 48, 0, ' ',' ', '1716003841', '2025-03-05',100117),
('RODIAN', 'FRANCISCO', 'VEGA', 'CABANILLA', '59', '59', 'M', '1965-06-17', 50, 0, ' ',' ', '0702180100', '2025-03-05',10344),
('EDWIN', 'BOLÍVAR', 'ESTACIO', 'QUINGA', '59', '48', 'M', '1976-12-24', 51, 0, ' ',' ', '1713024378', '2025-03-05',115708),
('MIGUEL', 'EDUARDO', 'SANTAMARIA', 'NUÑEZ', '59', '53', 'M', '1971-07-12', 52, 0, ' ',' ', '1708539992', '2025-03-05',594),
('HUGO', 'FRANCISCO', 'TOMALA', 'MEDINA', '59', '46', 'M', '1978-11-25', 53, 0, ' ',' ', '1713934808', '2025-03-05',125246),
('QUIMO', 'ROMÁN', 'ANDRADE', 'CHICAIZA', '59', '56', 'M', '1968-11-24', 55, 0, ' ',' ', '1709892069', '2025-03-05',10360),
('CARLOS', 'ARTURO', 'MINA', 'PAZMIÑO', '59', '42', 'M', '1982-06-08', 56, 0, ' ',' ', '1714572060', '2025-03-05',126616),
('FRANKLIN', 'PATRICIO', 'CEPEDA', 'CAIZA', '59', '49', 'M', '1975-05-27', 37, 0, ' ',' ', '1713419115', '2025-03-05',99954),
('SANTIAGO', 'FIDEL', 'NOROÑA', 'VALLEJO', '54', '41', 'M', '1983-04-05', 12, 0, ' ',' ', '1719137414', '2025-03-13',10377),
('FRANCISCO', 'JAVIER', 'VILLA ', 'BERNAL', '54', '43', 'M', '1981-06-27', 54, 0, ' ',' ', '1713425203', '2025-03-13',130180),
('ROBERTO ', 'ENIRQUE', 'MARTINEZ', 'LASSO', '54', '58', 'M', '1967-03-01', 8, 0, ' ',' ', '1709441693', '2025-05-13',133398),
('JORGE', 'EDUARDO', 'SIZA', '', '49', '60', 'M', '1964-10-01', 1, 0, ' ',' ', '1708206295', '2025-07-13',95916),
('HECTOR ', 'RUBEN', 'ARELLANO', 'RUIZ', '49', '47', 'M', '1978-02-27', 6, 0, ' ',' ', '1204291775', '2025-09-13',133199),
('DIEGO', 'JAVIER', 'CARUA', 'LLUMIUXI', '44', '41', 'M', '1983-08-21', 9, 0, ' ',' ', '1716716889', '2025-03-14',122639),
('FLAVIO', 'RAUL', 'SARZOSA', 'CARVAJAL', '44', '43', 'M', '1981-07-01', 23, 0, ' ',' ', '1716157555', '2025-03-14',4440),
('LUIS', 'IVAN', 'GUADALUPE', 'MALDONADO', '46', '40', 'M', '1985-01-18', 2, 0, ' ',' ', '1715797252', '2025-03-14',133343),
('ROBINSON', 'RENATO', 'RAMOS', 'MENDEZ', '46', '39', 'M', '1985-12-05', 10, 0, ' ',' ', '1718565045', '2025-03-14',133342)
commit tran


begin tran
INSERT INTO jugador 
(Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Id_Equipo, Edad, Sexo, Fecha_Nacimiento, Numero_Participacion, Juvenil, Url_Foto_Cedula, Url_Foto, cedula, Fecha_Inscripcion, Codigo_Aso) 
VALUES
('DARWIN', 'ARIEL', 'VILLACRES', 'GALLO', '17', '15', 'M', '2009-10-14', 3, 1, ' ',' ', '1751859602', '2025-03-13',133369),
('ALEXIS', 'DANIEL', 'QUINLLIN', 'QUINLLIN', '17', '17', 'M', '2008-01-10', 4, 1, ' ',' ', '1755460514', '2025-03-13',86097),
('CHRYSTIAN', 'PATRICIO', 'NARANJO', 'ERASO', '17', '31', 'M', '1993-08-14', 12, 0, ' ',' ', '1715066310', '2025-03-13',80433),
('ANDRES', 'EDUARDO', 'VALLEJO', 'INGA', '33', '26', 'M', '1999-03-12', 5, 0, ' ',' ', '1753530748', '2025-03-13',126308),
('SANTIAGO', 'GABRIEL', 'TUMBACO', 'CUENCA', '33', '18', 'M', '2007-01-11', 6, 1, ' ',' ', '1752836419', '2025-03-13',126309),
('JAVIER', 'NICOLAS', 'TUMBACO', 'CUENCA', '33', '18', 'M', '2006-10-26', 18, 0, ' ',' ', '1754309381', '2025-03-13',78848),
('ALEXIS', 'LEONIDAS', 'ORTIZ', 'CASTRO', '33', '37', 'M', '1987-05-09', 20, 0, ' ',' ', '1716479256', '2025-03-13',72279),
('ANTONY', 'EDUARDO', 'CUENCA', 'DELEG', '33', '36', 'M', '1988-06-20', 77, 0, ' ',' ', '1715138259', '2025-03-13',89310),
('JANSID', 'ANDRES', 'JACOME', 'ESPIN', '27', '28', 'M', '1996-12-26', 70, 0, ' ',' ', '1722407002', '2025-03-13',127946),
('CARLOS', 'RONALDO', 'VALLE', 'ARMIJOS', '27', '26', 'M', '1999-02-12', 14, 0, ' ',' ', '1751433903', '2025-03-13',98391),
('SANTIAGO', 'DAVID', 'SILVA', 'HERRERA', '27', '31', 'M', '1993-04-06', 13, 0, ' ',' ', '1722200688', '2025-03-13',115226),
('PABLO', 'ISMAEL', 'OROZCO', 'QUISPE', '27', '26', 'M', '1998-06-29', 80, 0, ' ',' ', '1718489899', '2025-03-13',83967),
('SEGUNDO ', 'XAVIER', 'SALAS', 'DE LA CRUZ', '27', '33', 'M', '1991-04-11', 3, 0, ' ',' ', '1723410823', '2025-03-13',133358),
('GERSSON ', 'DAMIAN', 'TRUJILLO', 'MUÑOZ', '27', '19', 'M', '2005-12-23', 100, 0, ' ',' ', '1750115279', '2025-03-13',133359),
('JEZRAEL', 'ALESSANDRO', 'BENITEZ', 'SUBIA', '27', '15', 'M', '2009-09-15', 30, 1, ' ',' ', '1727520288', '2025-03-13',89783),
('JORGE', 'EDUARDO', 'SIZA', '', '39', '60', 'M', '1964-10-01', 12, 0, ' ',' ', '1708206295', '2025-03-13',95916),
('WILLIAN', 'RICARDO', 'MOLINA', 'PEREZ', '39', '34', 'M', '1990-09-20', 16, 0, ' ',' ', '1721347258', '2025-03-13',133260),
('CRISTIAN', 'GIOVANNY', 'MOROCHO', 'CHAPI', '39', '34', 'M', '1990-10-19', 17, 0, ' ',' ', '1724523632', '2025-03-13',133259),
('JHONNY', 'PATRICIO', 'SIMBAÑA', 'PENEIDA', '39', '31', 'M', '1993-09-17', 24, 0, ' ',' ', '1722196811', '2025-03-13',59108),
('CRISTOPHER', 'ALEX', 'ARIAS', 'REINA', '37', '37', 'M', '1987-10-31', 7, 0, ' ',' ', '0803233691', '2025-03-13',133098),
('VERA', 'ZAMBRANO', 'VICTOR', 'HUGO', '20', '17', 'M', '2008-01-18', 55, 1, ' ',' ', '02350956237', '2025-03-13',133249),
('SANTIAGO', 'EZEQUIEL', 'CAIZA', 'AGURTO', '20', '18', 'M', '2006-04-17', 25, 0, ' ',' ', '1755167549', '2025-03-13',86661),
('MICHAEL', 'ARIEL', 'PONCE ', 'ANCHUNDIA', '20', '17', 'M', '2008-02-01', 56, 1, ' ',' ', '1752062453', '2025-03-13',100543),
('LIZANDRO', 'IVAN', 'BARREIRO', 'GUEVARA', '20', '16', 'M', '2008-08-20', 57, 1, ' ',' ', '2300823719', '2025-03-13',133247),
('MAURO', 'NICOLAY', 'AULESTIA', 'GUEVARA', '20', '27', 'M', '1997-12-22', 24, 0, ' ',' ', '1719150425', '2025-03-13',133250),
('MARCO', 'VINICIO', 'CISNEROS', 'QUITIO', '32', '59', 'M', '1965-10-09', 18, 0, ' ',' ', '0201037215', '2025-03-13',133034),
('WILLIAN', 'MARCELO', 'TANDALIA', 'NOBOA', '32', '35', 'M', '1989-09-18', 25, 0, ' ',' ', '1724554694', '2025-03-13',133033)
commit tran

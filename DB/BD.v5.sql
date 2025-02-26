USE [LubriXpress]
GO
/****** Object:  Table [dbo].[Carros]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carros](
	[placa] [varchar](100) NOT NULL,
	[marca] [varchar](100) NOT NULL,
	[modelo] [varchar](100) NOT NULL,
	[anio] [varchar](10) NOT NULL,
	[motor] [varchar](100) NOT NULL,
	[VIN] [varchar](100) NOT NULL,
	[comentario] [text] NULL,
	[fecha_creacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[placa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Citas]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Citas](
	[id_cita] [int] IDENTITY(1,1) NOT NULL,
	[id_servicio] [int] NULL,
	[nombre_cliente] [varchar](100) NOT NULL,
	[apellidos_cliente] [varchar](100) NOT NULL,
	[telefono_cliente] [varchar](15) NULL,
	[email_cliente] [varchar](100) NULL,
	[direccion] [varchar](100) NULL,
	[fecha_estimada] [varchar](10) NOT NULL,
	[marca_vehiculo] [varchar](100) NOT NULL,
	[modelo_vehiculo] [varchar](100) NOT NULL,
	[placa_vehiculo] [varchar](15) NOT NULL,
	[anio_vehiculo] [varchar](10) NULL,
	[estado_cita] [varchar](10) NULL,
	[fecha_creacion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Resenas]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resenas](
	[id_resena] [int] IDENTITY(1,1) NOT NULL,
	[nombre_cliente] [varchar](100) NOT NULL,
	[apellidos_cliente] [varchar](100) NOT NULL,
	[telefono_cliente] [varchar](15) NOT NULL,
	[email_cliente] [varchar](100) NOT NULL,
	[calificacion] [int] NULL,
	[comentario] [text] NULL,
	[fecha_creacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_resena] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[id_rol] [int] IDENTITY(1,1) NOT NULL,
	[nombre_rol] [varchar](50) NOT NULL,
	[fecha_creacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[id_servicio] [int] IDENTITY(1,1) NOT NULL,
	[nombre_servicio] [varchar](100) NOT NULL,
	[descripcion] [text] NULL,
	[duracion] [varchar](100) NOT NULL,
	[imagen_servicio] [varchar](255) NULL,
	[fecha_creacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_servicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[cedula] [varchar](100) NOT NULL,
	[fecha_nacimiento] [varchar](100) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[contrasena] [varchar](50) NOT NULL,
	[id_rol] [int] NOT NULL,
	[fecha_creacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Carros] ([placa], [marca], [modelo], [anio], [motor], [VIN], [comentario], [fecha_creacion]) VALUES (N'ABC567', N'Honda', N'Civic', N'2022', N'2.0L', N'2HGFC2F59KH123456', N'Cambio de aceite y filtro realizado recientemente', CAST(N'2024-10-09T10:30:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Citas] ON 

INSERT [dbo].[Citas] ([id_cita], [id_servicio], [nombre_cliente], [apellidos_cliente], [telefono_cliente], [email_cliente], [direccion], [fecha_estimada], [marca_vehiculo], [modelo_vehiculo], [placa_vehiculo], [anio_vehiculo], [estado_cita], [fecha_creacion]) VALUES (4, 2, N'Carlos', N'García', N'987654321', N'carlos.garcia@example.com', N'Av. Central 123', N'2024-09-15', N'Ford', N'Focus', N'XYZ987', N'2019', N'pendiente', N'Oct  9 2024  2:00PM')
INSERT [dbo].[Citas] ([id_cita], [id_servicio], [nombre_cliente], [apellidos_cliente], [telefono_cliente], [email_cliente], [direccion], [fecha_estimada], [marca_vehiculo], [modelo_vehiculo], [placa_vehiculo], [anio_vehiculo], [estado_cita], [fecha_creacion]) VALUES (5, 4, N'Carlos', N'García', N'987654321', N'carlos.garcia@example.com', N'Av. Central 123', N'2024-09-15', N'Ford', N'Focus', N'XYZ987', N'2019', N'pendiente', N'Oct  9 2024  2:00PM')
SET IDENTITY_INSERT [dbo].[Citas] OFF
GO
SET IDENTITY_INSERT [dbo].[Resenas] ON 

INSERT [dbo].[Resenas] ([id_resena], [nombre_cliente], [apellidos_cliente], [telefono_cliente], [email_cliente], [calificacion], [comentario], [fecha_creacion]) VALUES (1, N'Ana Rodríguez', N'González', N'8888-5555', N'ana@example.com', 5, N'Excelente servicio, muy puntual y profesional.', CAST(N'2024-09-09T10:46:05.840' AS DateTime))
INSERT [dbo].[Resenas] ([id_resena], [nombre_cliente], [apellidos_cliente], [telefono_cliente], [email_cliente], [calificacion], [comentario], [fecha_creacion]) VALUES (2, N'Andres', N'Pérez', N'1234567890', N'juan.perez@example.com', 5, N'Excelente servicio', CAST(N'2024-10-09T14:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Resenas] OFF
GO
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([id_rol], [nombre_rol], [fecha_creacion]) VALUES (1, N'Administrador  ', CAST(N'2024-09-11T16:47:35.937' AS DateTime))
INSERT [dbo].[Rol] ([id_rol], [nombre_rol], [fecha_creacion]) VALUES (2, N'Técnico', CAST(N'2024-09-11T16:47:35.937' AS DateTime))
SET IDENTITY_INSERT [dbo].[Rol] OFF
GO
SET IDENTITY_INSERT [dbo].[Servicios] ON 

INSERT [dbo].[Servicios] ([id_servicio], [nombre_servicio], [descripcion], [duracion], [imagen_servicio], [fecha_creacion]) VALUES (2, N'Cambio de Aceite Premium', N'Cambio de aceite con revisión de 20 puntos críticos del vehículo', N'45 minutos', N'aceite_pre', CAST(N'2024-10-09T12:00:00.000' AS DateTime))
INSERT [dbo].[Servicios] ([id_servicio], [nombre_servicio], [descripcion], [duracion], [imagen_servicio], [fecha_creacion]) VALUES (4, N'Cambio de Fibras', N'se cambian por nuevas', N'1 hora', N'https://centralderepuestostr.com/wp-content/uploads/2023/02/pastillas-de-freno-repuestos-1080x675.jpeg', CAST(N'2024-10-09T10:30:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Servicios] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([id_usuario], [cedula], [fecha_nacimiento], [nombre], [email], [contrasena], [id_rol], [fecha_creacion]) VALUES (1, N'117020275', N'1998-02-1998', N'Saray Fajardo', N'saryfg@gmail.com', N'Mortadela1', 1, CAST(N'2024-09-20T18:53:09.137' AS DateTime))
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Rol__673CB43531AB8310]    Script Date: 9/20/2024 7:31:22 PM ******/
ALTER TABLE [dbo].[Rol] ADD UNIQUE NONCLUSTERED 
(
	[nombre_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Usuarios__AB6E61647F5C74D8]    Script Date: 9/20/2024 7:31:22 PM ******/
ALTER TABLE [dbo].[Usuarios] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Citas] ADD  DEFAULT ('PENDIENTE') FOR [estado_cita]
GO
ALTER TABLE [dbo].[Rol] ADD  DEFAULT (getdate()) FOR [fecha_creacion]
GO
ALTER TABLE [dbo].[Citas]  WITH CHECK ADD FOREIGN KEY([id_servicio])
REFERENCES [dbo].[Servicios] ([id_servicio])
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Rol] FOREIGN KEY([id_rol])
REFERENCES [dbo].[Rol] ([id_rol])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Rol]
GO
ALTER TABLE [dbo].[Resenas]  WITH CHECK ADD CHECK  (([calificacion]>=(1) AND [calificacion]<=(5)))
GO
/****** Object:  StoredProcedure [dbo].[ActualizarUsuario]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[ActualizarUsuario]
    @id_usuario INT,
    @nombre VARCHAR(100),
    @email VARCHAR(100),
    @contrasena VARCHAR(50),
    @id_rol INT
AS
BEGIN
    UPDATE Usuarios
    SET nombre = @nombre,
        email = @email,
        contrasena = @contrasena,
        id_rol = @id_rol
    WHERE id_usuario = @id_usuario;
END;
GO
/****** Object:  StoredProcedure [dbo].[Crearcarro]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[Crearcarro]
    @placa VARCHAR(100),
	@marca VARCHAR(100),
	@modelo VARCHAR(100),
	@anio VARCHAR(10),
	@motor VARCHAR(100) ,
	@VIN  VARCHAR(100),
	@comentario TEXT,
	@fecha_creacion DATETIME
 
	
AS
BEGIN
	INSERT INTO Carros
		(
		    [placa],
			[marca],
			[modelo],
			[anio],
			[motor],
			[VIN],
		    [comentario],
		    [fecha_creacion]
			
		)
	VALUES
		(
		    @placa,
			@marca,
			@modelo,
		    @anio, 
			@motor,
			@VIN,
			@comentario,
			@fecha_creacion

			
		);
END

GO
/****** Object:  StoredProcedure [dbo].[CrearCita]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[CrearCita] 
    @id_servicio INT,
	@nombre_cliente VARCHAR(100),
	@apellidos_cliente VARCHAR(100),
	@telefono_cliente VARCHAR(15),
	@email_cliente VARCHAR(100) ,
	@direccion VARCHAR(100) ,
	@fecha_estimada   VARCHAR(100),
	@marca_vehiculo VARCHAR(100),
	@modelo_vehiculo VARCHAR(100),
	@placa_vehiculo VARCHAR(100),
	@anio_vehiculo VARCHAR(100),
	@estado_cita VARCHAR(100),
	@fecha_creacion DATETIME
 
	
AS
BEGIN
	INSERT INTO Citas
		(
		    [id_servicio],
		    [nombre_cliente],
			[apellidos_cliente],
			[telefono_cliente],
			[email_cliente],
			[direccion],
			[fecha_estimada],
			[marca_vehiculo],
		    [modelo_vehiculo],
			[placa_vehiculo],
			[anio_vehiculo],
			[estado_cita],
		    [fecha_creacion]
			
		)
	VALUES
		(
	     	@id_servicio,
		    @nombre_cliente,
			@apellidos_cliente,
			@telefono_cliente,
		    @email_cliente, 
			@direccion,
			@fecha_estimada,
			@marca_vehiculo,
			@modelo_vehiculo,
			@placa_vehiculo,
			@anio_vehiculo,
			@estado_cita,
			@fecha_creacion

			
		);
END
GO
/****** Object:  StoredProcedure [dbo].[CrearResena]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE   PROCEDURE [dbo].[CrearResena]
    @nombre_cliente VARCHAR(100),
    @apellidos_cliente VARCHAR(100),
    @telefono_cliente VARCHAR(15),
    @email_cliente VARCHAR(100),
    @calificacion INT,
    @comentario TEXT,
    @fecha_creacion DATETIME
AS
BEGIN
    INSERT INTO Resenas
    (
        nombre_cliente,
        apellidos_cliente,
        telefono_cliente,
        email_cliente,
        calificacion,
        comentario,
        fecha_creacion
    )
    VALUES
    (
        @nombre_cliente,
        @apellidos_cliente,
        @telefono_cliente,
        @email_cliente,
        @calificacion,
        @comentario,
        @fecha_creacion
    );
END;
GO
/****** Object:  StoredProcedure [dbo].[CrearRol]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[CrearRol]
    @nombre_rol VARCHAR(50)
AS
BEGIN
    INSERT INTO Rol (nombre_rol)
    VALUES (@nombre_rol);
END;


GO
/****** Object:  StoredProcedure [dbo].[CrearServicio]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE   PROCEDURE [dbo].[CrearServicio]
    @nombre_servicio VARCHAR(100),
	@descripcion text,
	@duracion VARCHAR(100),
	@imagen_servicio VARCHAR(255), 
	@fecha_creacion DATETIME
 
	
AS
BEGIN
	INSERT INTO Servicios
		(
		    [nombre_servicio],
			[descripcion],
			[duracion],
			[imagen_servicio], 
			[fecha_creacion]
			
		)
	VALUES
		(
		    @nombre_servicio,
			@descripcion,
			@duracion,
		    @imagen_servicio, 
			@fecha_creacion 

			
		);
END
GO
/****** Object:  StoredProcedure [dbo].[CrearUsuario]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE   PROCEDURE [dbo].[CrearUsuario]
    @nombre VARCHAR(100),
    @email VARCHAR(100),
    @contrasena VARCHAR(50),
    @id_rol INT
AS
BEGIN
    INSERT INTO Usuarios (nombre, email, contrasena, id_rol)
    VALUES (@nombre, @email, @contrasena, @id_rol);
END;
GO
/****** Object:  StoredProcedure [dbo].[EditarCitas]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[EditarCitas]
    @id_cita INT,
    @id_servicio INT,
	@nombre_cliente VARCHAR(100),
	@apellidos_cliente VARCHAR(100),
	@telefono_cliente VARCHAR(15),
	@email_cliente VARCHAR(100) ,
	@direccion VARCHAR(100) ,
	@fecha_estimada   VARCHAR(100),
	@marca_vehiculo VARCHAR(100),
	@modelo_vehiculo VARCHAR(100),
	@placa_vehiculo VARCHAR(100),
	@anio_vehiculo VARCHAR(100),
	@estado_cita VARCHAR(100)
AS
BEGIN
    UPDATE Citas
    SET 
        [nombre_cliente] = @nombre_cliente,
        [apellidos_cliente] = @apellidos_cliente,
        [telefono_cliente] = @telefono_cliente, 
        [email_cliente] = @email_cliente,
        [direccion] = @direccion,
        [fecha_estimada] = @fecha_estimada,
		[marca_vehiculo] = @marca_vehiculo,
        [modelo_vehiculo] = @modelo_vehiculo,
		[placa_vehiculo] = @placa_vehiculo,
		[anio_vehiculo] = @anio_vehiculo,
		[estado_cita] = @estado_cita
    WHERE 
        [id_cita] = @id_cita;
END;

GO
/****** Object:  StoredProcedure [dbo].[EditarRol]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[EditarRol]
    @id_rol INT,
    @nombre_rol VARCHAR(50)
AS
BEGIN
    UPDATE Rol
    SET nombre_rol = @nombre_rol
    WHERE id_rol = @id_rol;
END;
GO
/****** Object:  StoredProcedure [dbo].[EditarServicio]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[EditarServicio]
    @id_servicio INT,
    @nombre_servicio VARCHAR(100),
    @descripcion text,
    @duracion VARCHAR(100),
    @imagen_servicio VARCHAR(10), 
   	@fecha_creacion DATETIME
	
 AS
BEGIN
    UPDATE Servicios
    SET 
        [nombre_servicio] = @nombre_servicio,
        [descripcion] = @descripcion,
        [duracion] = @duracion, 
        [imagen_servicio] = @imagen_servicio,
	    [fecha_creacion] = @fecha_creacion
			
   
    WHERE 
        [id_servicio] = @id_servicio;
END;
GO
/****** Object:  StoredProcedure [dbo].[EditCar]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[EditCar]
    @placa VARCHAR(100),
    @marca VARCHAR(100),
    @modelo VARCHAR(100),
    @anio VARCHAR(10),
    @motor VARCHAR(100),
    @VIN VARCHAR(100),
    @comentario TEXT
AS
BEGIN
    UPDATE Carros
    SET 
        [marca] = @marca,
        [modelo] = @modelo,
        [anio] = @anio, 
        [motor] = @motor,
        [VIN] = @VIN,
        [comentario] = @comentario 
    WHERE 
        [placa] = @placa;
END;
GO
/****** Object:  StoredProcedure [dbo].[EliminarCarro]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[EliminarCarro]
	@placa VARCHAR(100)

AS
BEGIN
DELETE FROM Carros
	WHERE [placa] = @placa;

END;
GO
/****** Object:  StoredProcedure [dbo].[EliminarCita]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[EliminarCita]
	@id_cita int

AS
BEGIN
DELETE FROM Citas
	WHERE [id_cita] = @id_cita;

END;
GO
/****** Object:  StoredProcedure [dbo].[EliminarResena]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[EliminarResena]
    @id_resena INT
AS
BEGIN
    DELETE FROM Resenas WHERE id_resena = @id_resena;
END;
GO
/****** Object:  StoredProcedure [dbo].[EliminarRol]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[EliminarRol]
    @id_rol INT
AS
BEGIN
    DELETE FROM Rol
    WHERE id_rol = @id_rol;
END;
GO
/****** Object:  StoredProcedure [dbo].[EliminarServicio]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[EliminarServicio]
	@id_servicio INT

AS
BEGIN
DELETE FROM Servicios
	WHERE [id_servicio] = @id_servicio;

END;
GO
/****** Object:  StoredProcedure [dbo].[EliminarUsuario]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[EliminarUsuario]
    @id_usuario INT
AS
BEGIN
    DELETE FROM Usuarios
    WHERE id_usuario = @id_usuario;
END;
GO
/****** Object:  StoredProcedure [dbo].[IniciarSesion]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create     PROCEDURE  [dbo].[IniciarSesion]
    @email VARCHAR(50),
    @contrasena VARCHAR(50)
AS
BEGIN
    -- Verificar si el Users y contraseña coinciden en la tabla "Usuarios"
    IF EXISTS (
        SELECT 1
        FROM Usuarios
        WHERE email = @email AND contrasena =  @contrasena 
    )
    BEGIN
        -- Si hay una coincidencia, retornar la información del Users
        SELECT U.nombre, U.email, U.id_Rol , R.nombre_rol 
        FROM Usuarios as U
		JOIN Rol as R ON U.id_rol = R.id_rol
        WHERE email = @email;

 
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[Login]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[Login]
    @id_usuario int,
    @contrasena VARCHAR(100)
AS
BEGIN
    -- Verificar si el Users y contraseña coinciden en la tabla "Usuarios"
    IF EXISTS (
        SELECT 1
        FROM Usuarios
        WHERE id_usuario = @id_usuario AND contrasena = @contrasena
    )
    BEGIN
        -- Si hay una coincidencia, retornar la información del Users
        SELECT U.id_usuario,U.cedula, U.nombre, U.fecha_nacimiento, U.email,U.fecha_creacion,U.id_rol , R.nombre_rol
        FROM Usuarios as U
		JOIN Rol as R ON U.id_rol = R.id_rol
        WHERE id_usuario = @id_usuario;

 

    END
END;
GO
/****** Object:  StoredProcedure [dbo].[VerCaros]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[VerCaros]
AS
BEGIN
    SELECT *  FROM
        Carros 
 
END;
GO
/****** Object:  StoredProcedure [dbo].[VerCarroPorPlaca]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[VerCarroPorPlaca]
   @placa VARCHAR(100)                 
AS
BEGIN
    SELECT *  FROM Carros
    WHERE placa = @placa;
END;
GO
/****** Object:  StoredProcedure [dbo].[VerCitas]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[VerCitas]
AS
BEGIN
    SELECT 
        C.id_cita,
        C.nombre_cliente,
        C.apellidos_cliente,
        C.telefono_cliente,
        C.email_cliente,
        C.direccion,
		 S.nombre_servicio AS 'servicio_solicitado',
        C.fecha_estimada,
        C.marca_vehiculo,
        C.modelo_vehiculo,
        C.placa_vehiculo,
        C.anio_vehiculo,
        C.estado_cita,
        C.fecha_creacion
       
       
    FROM 
        Citas C
    INNER JOIN 
        Servicios S ON C.id_servicio = S.id_servicio
    ORDER BY 
        C.fecha_estimada DESC;   
END;
GO
/****** Object:  StoredProcedure [dbo].[VerResenaPorId]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[VerResenaPorId]
    @id_resena INT
AS
BEGIN
    SELECT * FROM Resenas WHERE id_resena = @id_resena;
END;
GO
/****** Object:  StoredProcedure [dbo].[VerResenas]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[VerResenas]
AS
BEGIN
    SELECT * FROM Resenas;
END;
GO
/****** Object:  StoredProcedure [dbo].[VerRoles]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[VerRoles]
AS
BEGIN
    SELECT * FROM Rol;
END;

GO
/****** Object:  StoredProcedure [dbo].[VerRolPorId]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[VerRolPorId]
    @id_rol INT
AS
BEGIN
    SELECT * FROM Rol
    WHERE id_rol = @id_rol;
END;
GO
/****** Object:  StoredProcedure [dbo].[VerServicios]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROCEDURE [dbo].[VerServicios]
AS
BEGIN
    SELECT * FROM Servicios
 
END;
GO
/****** Object:  StoredProcedure [dbo].[VerUsuarioPorId]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[VerUsuarioPorId]
    @id_usuario INT
AS
BEGIN
    SELECT U.id_usuario, U.nombre, U.email, R.nombre_rol, U.fecha_creacion
    FROM Usuarios U
    JOIN Rol R ON U.id_rol = R.id_rol
    WHERE U.id_usuario = @id_usuario;
END;

GO
/****** Object:  StoredProcedure [dbo].[VerUsuarios]    Script Date: 9/20/2024 7:31:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[VerUsuarios]
AS
BEGIN
    SELECT U.id_usuario, U.nombre, U.email, R.nombre_rol, U.fecha_creacion
    FROM Usuarios U
    JOIN Rol R ON U.id_rol = R.id_rol;
END;
GO

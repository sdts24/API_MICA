-- Stored Procedure para Insertar un nuevo registro en la tabla Personas
CREATE PROCEDURE InsertarPersona
    @Nombre VARCHAR(255),
    @Apellido VARCHAR(255),
    @FechaNacimiento DATE,
    @Direccion VARCHAR(255),
    @Telefono VARCHAR(20),
    @Celular VARCHAR(20),
    @Whatsapp BIT,
    @CDL_ID INT,
    @Correo VARCHAR(255)
AS
BEGIN
    INSERT INTO Personas (Nombre, Apellido, FechaNacimiento, Direccion, Telefono, Celular, Whatsapp, CDL_ID, Correo)
    VALUES (@Nombre, @Apellido, @FechaNacimiento, @Direccion, @Telefono, @Celular, @Whatsapp, @CDL_ID, @Correo);
    SELECT SCOPE_IDENTITY();
END;
GO

-- Stored Procedure para Eliminar un registro de la tabla Personas por su ID
CREATE PROCEDURE EliminarPersona
    @ID INT
AS
BEGIN
    DELETE FROM Personas WHERE ID = @ID;
END;
GO

-- Stored Procedure para Actualizar un registro en la tabla Personas
CREATE PROCEDURE ActualizarPersona
    @ID INT,
    @Nombre VARCHAR(255),
    @Apellido VARCHAR(255),
    @FechaNacimiento DATE,
    @Direccion VARCHAR(255),
    @Telefono VARCHAR(20),
    @Celular VARCHAR(20),
    @Whatsapp BIT,
    @CDL_ID INT,
    @Correo VARCHAR(255)
AS
BEGIN
    UPDATE Personas
    SET Nombre = @Nombre,
        Apellido = @Apellido,
        FechaNacimiento = @FechaNacimiento,
        Direccion = @Direccion,
        Telefono = @Telefono,
        Celular = @Celular,
        Whatsapp = @Whatsapp,
        CDL_ID = @CDL_ID,
        Correo = @Correo
    WHERE ID = @ID;
END;
GO

-- Stored Procedure para Leer un registro de la tabla Personas por su ID
CREATE PROCEDURE LeerPersonaPorID
    @ID INT
AS
BEGIN
    SELECT ID, Nombre, Apellido, FechaNacimiento, Direccion, Telefono, Celular, Whatsapp, CDL_ID, Correo
    FROM Personas
    WHERE ID = @ID;
END;
GO

-- Stored Procedure para Leer todos los registros de la tabla Personas
CREATE PROCEDURE LeerTodasPersonas
AS
BEGIN
    SELECT ID, Nombre, Apellido, FechaNacimiento, Direccion, Telefono, Celular, Whatsapp, CDL_ID, Correo
    FROM Personas;
END;
GO
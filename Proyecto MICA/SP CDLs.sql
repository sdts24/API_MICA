-- Stored Procedure para Insertar un nuevo registro en la tabla CDLs
CREATE PROCEDURE InsertarCDL
    @Nombre VARCHAR(255)
AS
BEGIN
    INSERT INTO CDLs (Nombre) VALUES (@Nombre);
    SELECT SCOPE_IDENTITY(); -- Devuelve el último valor de identidad insertado en el mismo ámbito
END;
GO

-- Stored Procedure para Eliminar un registro de la tabla CDLs por su ID
CREATE PROCEDURE EliminarCDL
    @ID INT
AS
BEGIN
    DELETE FROM CDLs WHERE ID = @ID;
END;
GO

-- Stored Procedure para Actualizar el Nombre de un registro en la tabla CDLs
CREATE PROCEDURE ActualizarCDL
    @ID INT,
    @Nombre VARCHAR(255)
AS
BEGIN
    UPDATE CDLs SET Nombre = @Nombre WHERE ID = @ID;
END;
GO

-- Stored Procedure para Leer un registro de la tabla CDLs por su ID
CREATE PROCEDURE LeerCDLPorID
    @ID INT
AS
BEGIN
    SELECT ID, Nombre FROM CDLs WHERE ID = @ID;
END;
GO

-- Stored Procedure para Leer todos los registros de la tabla CDLs
CREATE PROCEDURE LeerTodosCDLs
AS
BEGIN
    SELECT ID, Nombre FROM CDLs;
END;
GO
-- Creación de la tabla Personas en SQL Server
CREATE TABLE Personas (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(255),
    Apellido VARCHAR(255),
    FechaNacimiento DATE,
    Direccion VARCHAR(255),
    Telefono VARCHAR(20),
    Celular VARCHAR(20),
    Whatsapp BIT, -- Usamos BIT para representar booleano (0 o 1)
    CDL_ID INT, -- Clave foránea para relacionar con la tabla CDLs
    Correo VARCHAR(255),
    FOREIGN KEY (CDL_ID) REFERENCES CDLs(ID) -- Define la relación con la tabla CDLs
);
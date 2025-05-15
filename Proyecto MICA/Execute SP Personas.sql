-- Ejemplo de inserción
EXEC InsertarPersona
    @Nombre = 'Starlyng',
    @Apellido = 'Trinidad',
    @FechaNacimiento = '1995-06-24',
    @Direccion = 'Residencial Tierra Llana',
    @Telefono = '809-560-9845',
    @Celular = '809-705-5982',
    @Whatsapp = 1,
    @CDL_ID = 1, -- Reemplaza con el ID de la CDL correspondiente
    @Correo = 'sdts24@gmail.com';

-- Ejemplo de eliminación
EXEC EliminarPersona @ID = 5;

-- Ejemplo de actualización
EXEC ActualizarPersona
    @ID = 1,
    @Nombre = 'Pedro',
    @Apellido = 'Gómez',
    @FechaNacimiento = '1985-10-20',
    @Direccion = 'Avenida Secundaria #456',
    @Telefono = '809-555-1122',
    @Celular = '849-111-2233',
    @Whatsapp = 0,
    @CDL_ID = 2, -- Reemplaza con el nuevo ID de la CDL
    @Correo = 'pedro.gomez@example.com';

-- Ejemplo de lectura por ID
EXEC LeerPersonaPorID @ID = 1;

-- Ejemplo de lectura de todos
EXEC LeerTodasPersonas;
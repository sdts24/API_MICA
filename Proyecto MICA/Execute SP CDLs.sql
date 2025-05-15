
EXEC InsertarCDL @Nombre = 'Nombre del CDL';-- The result will be the ID of the new record
EXEC ActualizarCDL @ID = 1, @Nombre = 'Nuevo Nombre del CDL'; -- Reemplaza 1 con el ID y 'Nuevo Nombre...' con el nuevo nombre
EXEC LeerCDLPorID @ID = 1; -- Reemplaza 1 con el ID del registro a leer
EXEC LeerTodosCDLs;
EXEC EliminarCDL @ID = 1; -- Reemplaza 1 con the ID del registro a eliminar
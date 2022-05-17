

create procedure spEliminarProducto
(
@IDPRODUCTO VARCHAR
)
AS 
DELETE FROM Productos
WHERE Id_Productos=@IDPRODUCTO
RETURN
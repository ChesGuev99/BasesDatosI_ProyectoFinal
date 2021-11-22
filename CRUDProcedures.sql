CREATE DATABASE ProyectoBDI;
GO

USE ProyectoBDI
GO

-- CRUD Pais
-- Create
CREATE PROCEDURE procedure_create_table_pais
AS
BEGIN
	CREATE TABLE Pais (
		ID int primary key identity (1,1), 
		nombre varchar(255),
	)
END
GO

-- Read
CREATE PROCEDURE procedure_query_get_all_pais
AS
BEGIN 
	SELECT * FROM Pais
END
GO

CREATE PROCEDURE procedure_query_get_pais_by_id
@ID int
AS
BEGIN
SELECT * FROM Pais
  WHERE ID = @ID
END
GO

-- Insert
CREATE PROCEDURE procedure_query_insert_pais @nombre varchar(255)
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			INSERT INTO Pais(nombre) values(@nombre)
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- Update
CREATE PROCEDURE procedure_query_update_pais_by_id @ID int, @nombre varchar(255)
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			UPDATE Pais
			SET nombre = @nombre
			WHERE ID = @ID;
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- Delete
CREATE PROCEDURE procedure_query_delete_all_pais
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Pais
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END

GO

CREATE PROCEDURE procedure_query_delete_pais_by_id @ID int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Pais
			WHERE ID = @ID
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END

GO
-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- CRUD Provincia
-- Create
CREATE PROCEDURE procedure_create_table_Provincia
AS
	BEGIN
		CREATE TABLE Provincia (
		ID int primary key identity (1,1), 
		IDPais int constraint fk_provincia_IDPais foreign key (IDPais) references Pais(ID),
		nombre varchar(255)
	)
	END
GO

--Read 
CREATE PROCEDURE procedure_query_get_all_provincia
AS
BEGIN 
	SELECT * FROM Provincia
END

GO

CREATE PROCEDURE procedure_query_get_provincia_by_id
@ID int
AS
BEGIN 
	SELECT * FROM Provincia
		WHERE ID = @ID
END
GO

CREATE PROCEDURE procedure_query_get_provincia_by_pais
@ID int
AS
BEGIN 
	SELECT * FROM Provincia
	WHERE IDPais = @ID
END
GO

-- Insert
CREATE PROCEDURE procedure_query_insert_provincia @nombre varchar(255), @IDPais int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			INSERT INTO Provincia(nombre, IDPais) values(@nombre, @IDPais)
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- Update
CREATE PROCEDURE procedure_query_update_provincia_by_id @ID int, @nombre varchar(255), @IDPais int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			UPDATE Provincia
			SET nombre = @nombre, IDPais = @IDPais
			WHERE ID = @ID;
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- Delete
CREATE PROCEDURE procedure_query_delete_all_provincia
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Provincia
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

CREATE PROCEDURE procedure_query_delete_provincia_by_id @ID int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Provincia
			WHERE ID = @ID
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END

GO

CREATE PROCEDURE procedure_query_delete_all_provincia_by_pais @ID int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Provincia
			WHERE Provincia.IDPais = @ID
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END

GO

-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- CRUD Direccion
-- Create
CREATE PROCEDURE procedure_create_table_direccion
AS
	BEGIN
		CREATE TABLE Direccion (
			ID int primary key identity(1,1),
			descripcion varchar(255),
			IDProvincia int constraint fk_provincia_IDProvincia foreign key (IDProvincia) references Provincia(ID)
		)
	END

GO

-- Read
CREATE PROCEDURE procedure_query_get_all_direccion
AS
BEGIN 
	SELECT * FROM Direccion
END
GO

CREATE PROCEDURE procedure_query_get_direccion_by_id
@ID int
AS
BEGIN 
	SELECT * FROM Direccion
	WHERE ID = @ID
END
GO
 
-- Update

CREATE PROCEDURE procedure_query_insert_direccion @descripcion varchar(255), @IDProvincia int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			INSERT INTO Direccion(descripcion, IDProvincia) values(@descripcion, @IDProvincia)
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

CREATE PROCEDURE procedure_query_update_direccion_by_id @ID int, @descripcion varchar(255), @IDProvincia int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			UPDATE Direccion
			SET descripcion = @descripcion, IDProvincia = @IDProvincia
			WHERE ID = @ID;
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END

GO
	
-- Delete
CREATE PROCEDURE procedure_query_delete_all_direccion
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Direccion
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END

GO

CREATE PROCEDURE procedure_query_delete_direccion_by_id @ID int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Direccion
			WHERE ID = @ID
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- CRUD Impuesto
-- Create
CREATE PROCEDURE procedure_create_table_impuesto
AS
BEGIN
	CREATE TABLE Impuesto (
		ID int primary key identity (1,1), 
		nombre varchar(255),
		porcentaje float
	)
END
GO

-- Read
CREATE PROCEDURE procedure_query_get_all_impuesto
AS
BEGIN 
	SELECT * FROM Impuesto
END
GO

CREATE PROCEDURE procedure_query_get_impuesto_by_id
@ID int
AS
BEGIN
SELECT * FROM Impuesto
  WHERE ID = @ID
END
GO

-- Insert
CREATE PROCEDURE procedure_query_insert_impuesto @nombre varchar(255), @porcentaje float
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			INSERT INTO Impuesto(nombre, porcentaje) values(@nombre, @porcentaje)
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- Update
CREATE PROCEDURE procedure_query_update_impuesto_by_id @ID int, @nombre varchar(255), @porcentaje float
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			UPDATE Impuesto
			SET nombre = @nombre, porcentaje = @porcentaje
			WHERE ID = @ID;
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- Delete
CREATE PROCEDURE procedure_query_delete_all_impuesto
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Impuesto
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END

GO

CREATE PROCEDURE procedure_query_delete_impuesto_by_id @ID int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Impuesto
			WHERE ID = @ID
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END

GO

-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- CRUD Sucursal
-- Create
CREATE PROCEDURE procedure_create_table_sucursal
AS
	BEGIN
		CREATE TABLE Sucursal (
		ID int primary key identity(1,1),
		nombre varchar(255),
		IDDireccion int constraint fk_sucursal_IDDireccion foreign key (IDDireccion) references Direccion(ID)
	)
	END

GO

-- Read
CREATE PROCEDURE procedure_query_get_sucursal_by_id
@ID int
AS
BEGIN 
	SELECT * From Sucursal
    WHERE ID = @ID
END
GO

CREATE PROCEDURE procedure_query_get_all_sucursal
AS
BEGIN 
	SELECT * From Sucursal
END
GO

-- Insert
CREATE PROCEDURE procedure_query_insert_sucursal @nombre varchar(255), @IDDireccion int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			INSERT INTO Sucursal(nombre, IDDireccion) values(@nombre, @IDDireccion)
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- Update
CREATE PROCEDURE procedure_query_update_sucursal_by_id @ID int, @nombre varchar(255), @IDDireccion int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			UPDATE Sucursal
			SET nombre = @nombre, IDDireccion = @IDDireccion
			WHERE ID = @ID;
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END

GO

-- Delete
CREATE PROCEDURE procedure_query_delete_all_sucursal
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Sucursal
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

CREATE PROCEDURE procedure_query_delete_sucursal_by_id @ID int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Sucursal
			WHERE ID = @ID
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END

GO
-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- CRUD Cliente
-- Create
CREATE PROCEDURE procedure_create_table_cliente
AS
	BEGIN
		CREATE TABLE Cliente (
		ID int primary key identity(1,1),
		nombre varchar(255),
		IDDireccion int constraint fk_cliente_IDDireccion foreign key (IDDireccion) references Direccion(ID)
	)
	END
GO

-- Read
CREATE PROCEDURE procedure_query_get_cliente_by_id
@ID int
AS
BEGIN 
	SELECT * From Cliente
    WHERE ID = @ID
END
GO

CREATE PROCEDURE procedure_query_get_all_cliente
AS
BEGIN 
	SELECT * From Cliente
END
GO

-- Insert
CREATE PROCEDURE procedure_query_insert_cliente @nombre varchar(255), @IDDireccion int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			INSERT INTO Cliente(nombre, IDDireccion) values(@nombre, @IDDireccion)
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- Update
CREATE PROCEDURE procedure_query_update_cliente_by_id @ID int, @nombre varchar(255), @IDDireccion int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			UPDATE Cliente
			SET nombre = @nombre, IDDireccion = @IDDireccion
			WHERE ID = @ID;
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END

GO

-- Delete
CREATE PROCEDURE procedure_query_delete_all_cliente
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Cliente
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END

GO

CREATE PROCEDURE procedure_query_delete_cliente_by_id @ID int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Cliente
			WHERE ID = @ID
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END

GO
-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- CRUD Proveedor
-- Create
CREATE PROCEDURE procedure_create_table_proveedor
AS
	BEGIN
		CREATE TABLE Proveedor (
		ID int primary key identity(1,1),
		nombre varchar(255),
		porcentajeGanancia float,
		IDDireccion int constraint fk_proveedor_IDDireccion foreign key (IDDireccion) references Direccion(ID)
	)
	END

GO

-- Read
CREATE PROCEDURE procedure_query_get_proveedor_by_id
@ID int
AS
BEGIN 
	SELECT * From Proveedor
    WHERE ID = @ID
END
GO

CREATE PROCEDURE procedure_query_get_all_proveedor
AS
BEGIN 
	SELECT * From Proveedor
END
GO

-- Insert
CREATE PROCEDURE procedure_query_insert_proveedor @nombre varchar(255), @porcentajeGanancia float, @IDDireccion int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			INSERT INTO Proveedor(nombre, porcentajeGanancia, IDDireccion) values(@nombre, @porcentajeGanancia, @IDDireccion)
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- Update
CREATE PROCEDURE procedure_query_update_proveedor_by_id @ID int, @nombre varchar(255), @IDDireccion int, @porcentajeGanancia float
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			UPDATE Proveedor
			SET nombre = @nombre, IDDireccion = @IDDireccion, porcentajeGanancia = @porcentajeGanancia
			WHERE ID = @ID;
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- Delete
CREATE PROCEDURE procedure_query_delete_all_proveedor
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Proveedor
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END

GO

CREATE PROCEDURE procedure_query_delete_proveedor_by_id @ID int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Proveedor
			WHERE ID = @ID
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END

GO
-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- CRUD Categoria
-- Create
CREATE PROCEDURE procedure_create_table_categoria
AS
	BEGIN
		CREATE TABLE Categoria(
		ID int primary key identity (1,1), 
		nombre varchar(255) not null
	)
	END
GO

-- Read 
CREATE PROCEDURE procedure_query_get_all_categoria
AS
	BEGIN
		SELECT * FROM Categoria
	END
GO

CREATE PROCEDURE procedure_query_get_categoria_by_id @ID int
AS
	BEGIN
		SELECT * FROM Categoria
		WHERE ID = @ID
	END
GO

-- Insert
CREATE PROCEDURE procedure_query_insert_categoria @nombre varchar(255)
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			INSERT INTO Categoria(nombre) values(@nombre)
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- Update
CREATE PROCEDURE procedure_query_update_categoria_by_id @ID int, @nombre varchar(255)
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			UPDATE Categoria
			SET nombre = @nombre
			WHERE ID = @ID;
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- Delete
CREATE PROCEDURE procedure_query_delete_all_categoria
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Categoria
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END

GO

CREATE PROCEDURE procedure_query_delete_categoria_by_id @ID int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Categoria
			WHERE ID = @ID
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END

GO
-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- CRUD Puesto 
-- Create
CREATE PROCEDURE procedure_create_table_puesto
AS
	BEGIN
		CREATE TABLE Puesto(
		ID int primary key identity (1,1), 
		nombre varchar(255) not null
	)
	END	
GO

-- Insert
CREATE PROCEDURE procedure_query_insert_puesto
@nombre varchar(255)
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			INSERT INTO Puesto(nombre) values(@nombre)
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

--READ
CREATE PROCEDURE procedure_query_get_all_puesto
AS
	BEGIN
		SELECT * FROM Puesto
	END
GO

CREATE PROCEDURE procedure_query_get_puesto_by_id @ID int
AS
	BEGIN
		SELECT * FROM Puesto
		WHERE ID = @ID
	END
GO

-- Update
CREATE PROCEDURE procedure_query_update_puesto_by_id 
	@ID int,
	@newName varchar(255)
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;
	BEGIN TRY
		BEGIN
			UPDATE Puesto
			SET nombre = @newName
			WHERE ID = @ID;
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- Delete
CREATE PROCEDURE procedure_query_delete_puesto_by_id
	@ID int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Puesto 
			WHERE ID = @ID;
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
	
GO

CREATE PROCEDURE procedure_query_delete_all_puesto
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Puesto 
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- CRUD metodoPago
-- Create
CREATE PROCEDURE procedure_create_table_metodoPago
AS
	BEGIN
		CREATE TABLE MetodoPago(
		ID int primary key identity (1,1), 
		nombre varchar(255) not null
	)
	END
GO

-- Insert
CREATE PROCEDURE procedure_query_insert_metodoPago
@nombre varchar(255)
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			INSERT INTO MetodoPago(nombre) values(@nombre)
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

--READ
CREATE PROCEDURE procedure_query_get_all_metodoPago
AS
	BEGIN
		SELECT * FROM MetodoPago
	END
GO

CREATE PROCEDURE procedure_query_get_metodoPago_by_id @ID int
AS
	BEGIN
		SELECT * FROM MetodoPago
		WHERE ID = @ID
	END
GO

-- Update
CREATE PROCEDURE procedure_query_update_metodoPago_by_id 
	@ID int,
	@newName varchar(255)
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;
	BEGIN TRY
		BEGIN
			UPDATE MetodoPago
			SET nombre = @newName
			WHERE ID = @ID;
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- Delete
CREATE PROCEDURE procedure_query_delete_metodoPago_by_id
	@ID int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM MetodoPago 
			WHERE ID = @ID;
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
	
GO

CREATE PROCEDURE procedure_query_delete_all_metodoPago
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM MetodoPago 
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- CRUD producto
-- Create
CREATE PROCEDURE procedure_create_table_producto
AS
	BEGIN
		CREATE TABLE Producto (
		ID int primary key identity (1,1), 
		IDCategoria INT CONSTRAINT fk_producto_IDCategoria FOREIGN KEY (IDCategoria)
		REFERENCES Categoria(ID),
		IDProveedor INT CONSTRAINT fk_producto_IDProveedor FOREIGN KEY (IDProveedor)
		REFERENCES Proveedor(ID),
		nombre varchar(255),
		fechaProduccion datetime not null,
		fechaExpiracion datetime not null,
		precioVenta float not null,
	)
	END
GO

-- Insert
CREATE PROCEDURE procedure_query_insert_producto 
@IDCategoria int,
@IDProveedor int,
@nombre varchar(255),
@fechaProduccion datetime,
@fechaExpiracion datetime,
@precioVenta float
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			INSERT INTO Producto(IDCategoria, IDProveedor, nombre, fechaProduccion, fechaExpiracion, precioVenta) 
						values(@IDCategoria, @IDProveedor, @nombre, @fechaProduccion, @fechaExpiracion, @precioVenta)
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

--READ
CREATE PROCEDURE procedure_query_get_all_producto
AS
	BEGIN
		SELECT * FROM Producto
	END
GO

CREATE PROCEDURE procedure_query_get_producto_by_id @ID int
AS
	BEGIN
		SELECT * FROM Producto
		WHERE ID = @ID
	END
GO

-- Update
CREATE PROCEDURE procedure_query_update_producto_by_id 
	@ID int,
	@IDCategoria int,
	@IDProveedor int,
	@nombre varchar(255),
	@fechaProduccion datetime,
	@fechaExpiracion datetime,
	@precioVenta float
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;
	BEGIN TRY
		BEGIN
			UPDATE Producto
			SET nombre = @nombre, IDProveedor = @IDProveedor, IDCategoria = @IDCategoria, 
			fechaProduccion = @fechaProduccion, fechaExpiracion = @fechaExpiracion, precioVenta = @precioVenta
			WHERE ID = @ID;
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- Delete
CREATE PROCEDURE procedure_query_delete_producto_by_id
	@ID int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Producto 
			WHERE ID = @ID;
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

CREATE PROCEDURE procedure_query_delete_all_producto
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Producto 
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- CRUD Empleado
-- Create
CREATE PROCEDURE procedure_create_table_empleado
AS
	BEGIN
		CREATE TABLE Empleado (
		ID int primary key identity (1,1),
		IDSucursal INT CONSTRAINT fk_empleado_IDSucursal FOREIGN KEY (IDSucursal)
		REFERENCES Sucursal(ID),
		IDPuesto INT CONSTRAINT fk_empleado_IDPuesto FOREIGN KEY (IDPuesto)
		REFERENCES Puesto(ID),
		IDEncargado INT CONSTRAINT fk_empleado_IDEncargado FOREIGN KEY (IDEncargado)
		REFERENCES Encargado(ID),
		nombre varchar(255),
		salarioBase float not null,
	)
	END
GO

-- Insert
CREATE PROCEDURE procedure_query_insert_empleado 
@IDSucursal int,
@IDPuesto int,
@IDEncargado int,
@nombre varchar(255),
@salarioBase float
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			INSERT INTO Empleado (IDSucursal, IDPuesto,IDEncargado, nombre, salarioBase) 
						values(@IDSucursal, @IDPuesto, @IDEncargado, @nombre, @salarioBase)
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

--READ
CREATE PROCEDURE procedure_query_get_all_empleado
AS
	BEGIN
		SELECT * FROM Empleado
	END
GO

CREATE PROCEDURE procedure_query_get_empleado_by_id @ID int
AS
	BEGIN
		SELECT * FROM Empleado
		WHERE ID = @ID
	END
GO

-- Update
CREATE PROCEDURE procedure_query_update_empleado_by_id 
	@ID int,
	@IDSucursal int,
	@IDPuesto int,
	@IDEncargado int,
	@nombre varchar(255),
	@salarioBase float
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;
	BEGIN TRY
		BEGIN
			UPDATE Empleado
			SET IDSucursal = @IDSucursal, IDPuesto = @IDPuesto, IDEncargado = @IDEncargado,
				nombre = @nombre, salarioBase = @salarioBase
			WHERE ID = @ID;
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- Delete
CREATE PROCEDURE procedure_query_delete_empleado_by_id
	@ID int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Empleado 
			WHERE ID = @ID;
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

CREATE PROCEDURE procedure_query_delete_all_empleado
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Empleado 
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- CRUD Pedido
-- Create
CREATE PROCEDURE procedure_create_table_pedido
AS
	BEGIN
		CREATE TABLE Pedido (
		ID int primary key identity (1,1),
		IDSucursal INT CONSTRAINT fk_pedido_IDSucursal FOREIGN KEY (IDSucursal)
		REFERENCES Sucursal(ID),
		IDProducto INT CONSTRAINT fk_pedido_IDProducto FOREIGN KEY (IDProducto)
		REFERENCES Producto(ID),
		IDProveedor INT CONSTRAINT fk_pedido_IDProveedor FOREIGN KEY (IDProveedor)
		REFERENCES Proveedor(ID),
		cantidad int,
		fechaProduccion datetime not null,
	)
	END
GO

-- Insert
CREATE PROCEDURE procedure_query_insert_pedido
@IDSucursal int,
@IDProducto int,
@IDProveedor int,
@fechaProduccion datetime,
@cantidad float
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			INSERT INTO Pedido(IDSucursal, IDProducto, IDProveedor, fechaProduccion, cantidad) 
						values(@IDSucursal, @IDProducto, @IDProveedor, @fechaProduccion, @cantidad)
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

--READ
CREATE PROCEDURE procedure_query_get_all_pedido
AS
	BEGIN
		SELECT * FROM Pedido
	END
GO

CREATE PROCEDURE procedure_query_get_pedido_by_id @ID int
AS
	BEGIN
		SELECT * FROM Producto
		WHERE ID = @ID
	END
GO

-- Update
CREATE PROCEDURE procedure_query_update_pedido_by_id 
	@ID int,
	@IDSucursal int,
	@IDProducto int,
	@IDProveedor int,
	@fechaProduccion datetime,
	@cantidad float
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;
	BEGIN TRY
		BEGIN
			UPDATE Pedido
			SET IDSucursal = @IDSucursal, IDProveedor = @IDProveedor, IDProducto = @IDProducto, 
			fechaProduccion = @fechaProduccion, cantidad = @cantidad
			WHERE ID = @ID;
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- Delete
CREATE PROCEDURE procedure_query_delete_pedido_by_id
	@ID int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Pedido 
			WHERE ID = @ID;
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

CREATE PROCEDURE procedure_query_delete_all_pedido
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Pedido 
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- CRUD Compra
-- Create
CREATE PROCEDURE procedure_create_table_compra
AS
	BEGIN
		CREATE TABLE Compra (
		ID int primary key identity (1,1),
		IDSucursal INT CONSTRAINT fk_compra_IDSucursal FOREIGN KEY (IDSucursal)
		REFERENCES Sucursal(ID),
		IDFacturador INT CONSTRAINT fk_compra_IDFacturador FOREIGN KEY (IDFacturador)
		REFERENCES Empleado(ID),
		IDCliente INT CONSTRAINT fk_compra_IDCliente FOREIGN KEY (IDCliente)
		REFERENCES Cliente(ID),
		IDMetodoPago INT CONSTRAINT fk_compra_IDMetodoPago FOREIGN KEY (IDMetodoPago)
		REFERENCES MetodoPago(ID),
		monto int,
		fecha datetime not null,
		tipo int,
	)
	END
GO

-- Insert
CREATE PROCEDURE procedure_query_insert_compra
@IDSucursal int,
@IDFacturador int,
@IDCliente int,
@IDMetodoPago int,
@monto int,
@fecha datetime,
@tipo float
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			INSERT INTO Compra(IDSucursal, IDFacturador, IDCliente, IDMetodoPago, monto, fecha, tipo) 
						values(@IDSucursal, @IDFacturador, @IDCliente, @IDMetodoPago, @monto, @fecha, @tipo)
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

--READ
CREATE PROCEDURE procedure_query_get_all_compra
AS
	BEGIN
		SELECT * FROM Compra
	END
GO

CREATE PROCEDURE procedure_query_get_compra_by_id @ID int
AS
	BEGIN
		SELECT * FROM Compra
		WHERE ID = @ID
	END
GO

-- Update
CREATE PROCEDURE procedure_query_update_compra_by_id 
	@ID int,
	@IDSucursal int,
	@IDFacturador int,
	@IDCliente int,
	@IDMetodoPago int,
	@monto int,
	@fecha datetime,
	@tipo float
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;
	BEGIN TRY
		BEGIN
			UPDATE Compra
			SET IDSucursal = @IDSucursal, IDFacturador = @IDFacturador, IDCliente = @IDCliente, 
			fecha = @fecha, monto = @monto, tipo = @tipo 
			WHERE ID = @ID;
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- Delete
CREATE PROCEDURE procedure_query_delete_compra_by_id
	@ID int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Compra 
			WHERE ID = @ID;
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

CREATE PROCEDURE procedure_query_delete_all_compra
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM Compra 
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- CRUD productoXcompra
-- Create
CREATE PROCEDURE procedure_create_table_productoXcompra
AS
	BEGIN
		CREATE TABLE ProductoXCompra (
		ID int primary key identity (1,1),
		IDCompra INT CONSTRAINT fk_productoCompra_IDCompra FOREIGN KEY (IDCompra)
		REFERENCES Compra(ID),
		IDProducto INT CONSTRAINT fk_productoCompra_IDProducto FOREIGN KEY (IDProducto)
		REFERENCES Producto(ID),
		cantidad int,
	)
	END
GO

-- Insert
CREATE PROCEDURE procedure_query_insert_productoXcompra
@IDCompra int,
@IDProducto int,
@cantidad int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			INSERT INTO ProductoXCompra(IDCompra, IDProducto, cantidad) 
						values(@IDCompra, @IDProducto, @cantidad)
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

--READ
CREATE PROCEDURE procedure_query_get_all_productoXcompra
AS
	BEGIN
		SELECT * FROM ProductoXCompra
	END
GO

CREATE PROCEDURE procedure_query_get_productoXcompra_by_id @ID int
AS
	BEGIN
		SELECT * FROM ProductoXCompra
		WHERE ID = @ID
	END
GO

-- Update
CREATE PROCEDURE procedure_query_update_productoXcompra_by_id 
	@ID int,
	@IDCompra int,
	@IDProducto int,
	@cantidad int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;
	BEGIN TRY
		BEGIN
			UPDATE ProductoXCompra
			SET IDCompra = @IDCompra, IDProducto = @IDProducto, cantidad = @cantidad
			WHERE ID = @ID;
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- Delete
CREATE PROCEDURE procedure_query_delete_productoXcompra_by_id
	@ID int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM ProductoXcompra 
			WHERE ID = @ID;
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

CREATE PROCEDURE procedure_query_delete_all_productoXcompra
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM ProductoXCompra 
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- CRUD productoXsucursal
-- Create
CREATE PROCEDURE procedure_create_table_productoXsucursal
AS
	BEGIN
		CREATE TABLE ProductoXSucursal (
		ID int primary key identity (1,1),
		IDSucursal INT CONSTRAINT fk_productoSucursal_IDSucursal FOREIGN KEY (IDSucursal)
		REFERENCES Sucursal(ID),
		IDProducto INT CONSTRAINT fk_productoSucursal_IDProducto FOREIGN KEY (IDProducto)
		REFERENCES Producto(ID),
		IDImpuesto INT CONSTRAINT fk_productoSucursal_IDImpuesto FOREIGN KEY (IDImpuesto)
		REFERENCES Impuesto(ID),
		cantidad int,
		minimo int,
		maximo int,
		descuento float,
	)
	END
GO

-- Insert
CREATE PROCEDURE procedure_query_insert_productoXSucursal @IDSucursal int, @IDProducto int, @cantidad int, @minimo int,
@maximo int, @IDImpuesto int, @descuento float
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			INSERT INTO ProductoXSucursal(IDSucursal, IDProducto, IDImpuesto, cantidad, minimo, maximo, descuento) 
			values (@IDSucursal, @IDProducto, @IDImpuesto, @cantidad, @minimo, @maximo, @descuento)
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END  
GO  

--READ
CREATE PROCEDURE procedure_query_get_all_productoXsucursal
AS
	BEGIN
		SELECT * FROM ProductoXSucursal
	END
GO

CREATE PROCEDURE procedure_query_get_productoXsucursal_by_id @ID int
AS
	BEGIN
		SELECT * FROM ProductoXSucursal
		WHERE ID = @ID
	END
GO

-- Update
CREATE PROCEDURE procedure_query_update_productoXsucursal_by_id 
	@ID int,
	@IDSucursal int,
	@IDProducto int,
	@minimo int,
	@maximo int,
	@impuesto int,
	@descuento float,
	@cantidad int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;
	BEGIN TRY
		BEGIN
			UPDATE ProductoXSucursal
			SET IDSucursal = @IDSucursal, IDProducto = @IDProducto, minimo = @minimo, maximo = @maximo,
				impuesto = @impuesto, descuento = @descuento, cantidad = @cantidad
			WHERE ID = @ID;
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- Delete
CREATE PROCEDURE procedure_query_delete_productoXsucursal_by_id
	@ID int
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;

	BEGIN TRY
		BEGIN
			DELETE FROM ProductoXSucursal 
			WHERE ID = @ID;
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

CREATE PROCEDURE procedure_query_delete_all_productoXsucursal
AS
BEGIN
	BEGIN TRANSACTION;
	SAVE TRANSACTION BeforeInsert;
	BEGIN TRY
		BEGIN
			DELETE FROM ProductoXSucursal 
		END
	END TRY
	BEGIN CATCH
		BEGIN
			raiserror('Ha ocurrido un error',1,1)
			ROLLBACK TRANSACTION BeforeInsert;
		END
	END CATCH
    COMMIT TRANSACTION
END
GO

-- TABLE Encargado
-- Create
CREATE PROCEDURE procedure_create_table_encargado
AS
	BEGIN
		CREATE TABLE Encargado (
		ID int primary key identity(1,1),
		IDSucursal int constraint fk_sucursal_IDSucursal foreign key (IDSucursal) references Sucursal(ID)
	)
	END
GO
-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
CREATE PROCEDURE procedure_query_productos_by_sucursal @IDSucursal int
AS
BEGIN 
	SELECT Producto.ID, Producto.nombre, ProductoXSucursal.cantidad
	FROM ProductoXSucursal INNER JOIN Producto ON (ProductoXSucursal.IDProducto = Producto.ID)
	WHERE ProductoXSucursal.IDSucursal = @IDSucursal
END
GO

-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- Exec CRUD
-- Sucursal

/*declare @ID int
set @ID = 1
exec procedure_create_table_sucursal @ID*/


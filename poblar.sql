USE ProyectoBDI
GO

EXEC procedure_create_table_pais
GO

EXEC procedure_create_table_Provincia
GO

EXEC procedure_create_table_direccion
GO

EXEC procedure_create_table_impuesto
GO

EXEC procedure_create_table_sucursal
GO

EXEC procedure_create_table_encargado
GO

EXEC procedure_create_table_proveedor
GO

EXEC procedure_create_table_categoria
GO

EXEC procedure_create_table_producto
GO

EXEC procedure_create_table_productoXsucursal
GO

EXEC procedure_create_table_pedido
GO

EXEC procedure_create_table_puesto
GO

EXEC procedure_create_table_empleado
GO

EXEC procedure_create_table_metodoPago
GO

EXEC procedure_create_table_cliente
GO

EXEC procedure_create_table_compra
GO

EXEC procedure_create_table_productoXcompra
GO

insert into Pais (nombre) values ('Argentina');
insert into Pais (nombre) values ('China');
insert into Pais (nombre) values ('Colombia');
insert into Pais (nombre) values ('Bangladesh');
insert into Pais (nombre) values ('Peru');
insert into Pais (nombre) values ('Central African Republic');
insert into Pais (nombre) values ('Indonesia');
insert into Pais (nombre) values ('Ecuador');
insert into Pais (nombre) values ('Madagascar');
insert into Pais (nombre) values ('Thailand');
insert into Pais (nombre) values ('Guatemala');
insert into Pais (nombre) values ('Belice');
insert into Pais (nombre) values ('Ukraine');
insert into Pais (nombre) values ('South Africa');
insert into Pais (nombre) values ('Brazil');
insert into Pais (nombre) values ('Vietnam');
insert into Pais (nombre) values ('Belarus');
insert into Pais (nombre) values ('Spain');
insert into Pais (nombre) values ('Panama');
insert into Pais (nombre) values ('Nicaragua');
GO

insert into Provincia (nombre, IDPais) values ('Wiang Nuea', 5);
insert into Provincia (nombre, IDPais) values ('Mileb', 1);
insert into Provincia (nombre, IDPais) values ('Firminópolis', 5);
insert into Provincia (nombre, IDPais) values ('Pátmos', 7);
insert into Provincia (nombre, IDPais) values ('Senanga', 7);
insert into Provincia (nombre, IDPais) values ('Kinlough', 5);
insert into Provincia (nombre, IDPais) values ('Bojonghaur', 16);
insert into Provincia (nombre, IDPais) values ('Lydenburg', 3);
insert into Provincia (nombre, IDPais) values ('Jimsar', 4);
insert into Provincia (nombre, IDPais) values ('T’aebaek', 18);
insert into Provincia (nombre, IDPais) values ('Campok', 17);
insert into Provincia (nombre, IDPais) values ('Karakulino', 17);
insert into Provincia (nombre, IDPais) values ('Zdiby', 1);
insert into Provincia (nombre, IDPais) values ('Qiping', 5);
insert into Provincia (nombre, IDPais) values ('Laoqiao', 13);
insert into Provincia (nombre, IDPais) values ('Tílisos', 18);
insert into Provincia (nombre, IDPais) values ('Le Mans', 1);
insert into Provincia (nombre, IDPais) values ('Manolo Fortich', 7);
insert into Provincia (nombre, IDPais) values ('Jalal-Abad', 17);
insert into Provincia (nombre, IDPais) values ('Straszyn', 4);
GO

insert into Direccion (IDProvincia, descripcion) values (10, '7978 Old Shore Parkway');
insert into Direccion (IDProvincia, descripcion) values (7, '25 Glacier Hill Junction');
insert into Direccion (IDProvincia, descripcion) values (17, '227 3rd Alley');
insert into Direccion (IDProvincia, descripcion) values (19, '7 Del Sol Point');
insert into Direccion (IDProvincia, descripcion) values (1, '4098 Haas Alley');
insert into Direccion (IDProvincia, descripcion) values (15, '0 Karstens Road');
insert into Direccion (IDProvincia, descripcion) values (13, '518 Mockingbird Court');
insert into Direccion (IDProvincia, descripcion) values (17, '2097 Arkansas Trail');
insert into Direccion (IDProvincia, descripcion) values (16, '8507 Lukken Street');
insert into Direccion (IDProvincia, descripcion) values (12, '8 Forest Alley');
insert into Direccion (IDProvincia, descripcion) values (16, '3 Holmberg Court');
insert into Direccion (IDProvincia, descripcion) values (9, '89 Charing Cross Park');
insert into Direccion (IDProvincia, descripcion) values (9, '95 Autumn Leaf Circle');
insert into Direccion (IDProvincia, descripcion) values (14, '833 Daystar Plaza');
insert into Direccion (IDProvincia, descripcion) values (10, '99783 Crownhardt Street');
insert into Direccion (IDProvincia, descripcion) values (14, '61 Nancy Hill');
insert into Direccion (IDProvincia, descripcion) values (15, '9 Summit Lane');
insert into Direccion (IDProvincia, descripcion) values (6, '86 Westport Park');
insert into Direccion (IDProvincia, descripcion) values (7, '2 Gateway Way');
insert into Direccion (IDProvincia, descripcion) values (7, '321 Ridgeway Trail');
GO

insert into Categoria (nombre) values ('Broom Handle');
insert into Categoria (nombre) values ('Beef - Tongue, Fresh');
insert into Categoria (nombre) values ('Cheese Cheddar Processed');
insert into Categoria (nombre) values ('Yogurt - Strawberry, 175 Gr');
insert into Categoria (nombre) values ('Veal - Insides, Grains');
insert into Categoria (nombre) values ('Wine - Prosecco Valdobiaddene');
insert into Categoria (nombre) values ('Thermometer Digital');
insert into Categoria (nombre) values ('Foie Gras');
insert into Categoria (nombre) values ('Tea Peppermint');
insert into Categoria (nombre) values ('Veal Inside - Provimi');
insert into Categoria (nombre) values ('Burger Veggie');
insert into Categoria (nombre) values ('Rabbit - Saddles');
insert into Categoria (nombre) values ('Cheese - Shred Cheddar / Mozza');
insert into Categoria (nombre) values ('Tea - Mint');
insert into Categoria (nombre) values ('Trout - Hot Smkd, Dbl Fillet');
insert into Categoria (nombre) values ('Tea Leaves - Oolong');
insert into Categoria (nombre) values ('Brownies - Two Bite, Chocolate');
insert into Categoria (nombre) values ('Turnip - White, Organic');
insert into Categoria (nombre) values ('Cheese - Cambozola');
insert into Categoria (nombre) values ('Wine - Penfolds Koonuga Hill');
GO

insert into Proveedor (nombre, idDireccion, porcentajeGanancia) values ('Bioptix, Inc', 2, 6.02);
insert into Proveedor (nombre, idDireccion, porcentajeGanancia) values ('Stryker Corporation', 5, 7.4);
insert into Proveedor (nombre, idDireccion, porcentajeGanancia) values ('Stratasys, Ltd.', 5, 6.48);
insert into Proveedor (nombre, idDireccion, porcentajeGanancia) values ('Aercap Holdings N.V.', 5, 9.51);
insert into Proveedor (nombre, idDireccion, porcentajeGanancia) values ('ADMA Biologics Inc', 1, 4.0);
insert into Proveedor (nombre, idDireccion, porcentajeGanancia) values ('Atlas Financial Holdings, Inc.', 19, 8.01);
insert into Proveedor (nombre, idDireccion, porcentajeGanancia) values ('AC Immune SA', 2, 7.74);
insert into Proveedor (nombre, idDireccion, porcentajeGanancia) values ('Pennsylvania Real Estate Investment Trust', 16, 9.41);
insert into Proveedor (nombre, idDireccion, porcentajeGanancia) values ('Acxiom Corporation', 5, 8.78);
insert into Proveedor (nombre, idDireccion, porcentajeGanancia) values ('NVE Corporation', 13, 0.86);
insert into Proveedor (nombre, idDireccion, porcentajeGanancia) values ('Therapix Biosciences Ltd.', 4, 8.87);
insert into Proveedor (nombre, idDireccion, porcentajeGanancia) values ('Pope Resources', 15, 2.71);
insert into Proveedor (nombre, idDireccion, porcentajeGanancia) values ('Impax Laboratories, Inc.', 7, 5.99);
insert into Proveedor (nombre, idDireccion, porcentajeGanancia) values ('Rexnord Corporation', 7, 2.53);
insert into Proveedor (nombre, idDireccion, porcentajeGanancia) values ('Investar Holding Corporation', 14, 1.79);
insert into Proveedor (nombre, idDireccion, porcentajeGanancia) values ('PhaseRx, Inc.', 10, 6.36);
insert into Proveedor (nombre, idDireccion, porcentajeGanancia) values ('iStar Financial Inc.', 12, 6.06);
insert into Proveedor (nombre, idDireccion, porcentajeGanancia) values ('Bank of America Corporation', 8, 9.06);
insert into Proveedor (nombre, idDireccion, porcentajeGanancia) values ('Wolverine World Wide, Inc.', 18, 4.62);
insert into Proveedor (nombre, idDireccion, porcentajeGanancia) values ('Great Elm Capital Corp.', 14, 3.1);
GO

insert into Producto (idCategoria, IdProveedor, nombre, fechaProduccion, fechaExpiracion, precioVenta) values (15, 20, 'Butcher Twine 4r', '2021-11-10 13:35:32', '2021-10-03 07:08:45', 34.08);
insert into Producto (idCategoria, IdProveedor, nombre, fechaProduccion, fechaExpiracion, precioVenta) values (7, 20, 'Wine - Charddonnay Errazuriz', '2021-11-21 19:44:52', '2021-08-20 09:19:18', 32.15);
insert into Producto (idCategoria, IdProveedor, nombre, fechaProduccion, fechaExpiracion, precioVenta) values (19, 16, 'Smoked Tongue', '2021-11-19 01:33:38', '2021-09-17 18:15:00', 48.57);
insert into Producto (idCategoria, IdProveedor, nombre, fechaProduccion, fechaExpiracion, precioVenta) values (8, 6, 'Wine - Cava Aria Estate Brut', '2021-11-01 21:29:45', '2021-09-08 14:35:12', 78.55);
insert into Producto (idCategoria, IdProveedor, nombre, fechaProduccion, fechaExpiracion, precioVenta) values (9, 11, 'Cake - Bande Of Fruit', '2021-11-06 05:36:26', '2021-08-25 22:23:02', 52.31);
insert into Producto (idCategoria, IdProveedor, nombre, fechaProduccion, fechaExpiracion, precioVenta) values (8, 10, 'Strawberries - California', '2021-11-15 17:47:54', '2021-10-23 18:57:04', 55.45);
insert into Producto (idCategoria, IdProveedor, nombre, fechaProduccion, fechaExpiracion, precioVenta) values (20, 15, 'Oil - Safflower', '2021-11-03 01:41:13', '2021-08-30 01:55:08', 29.95);
insert into Producto (idCategoria, IdProveedor, nombre, fechaProduccion, fechaExpiracion, precioVenta) values (9, 13, 'Soup - Campbells Beef Stew', '2021-11-15 01:08:13', '2021-09-02 12:46:38', 57.48);
insert into Producto (idCategoria, IdProveedor, nombre, fechaProduccion, fechaExpiracion, precioVenta) values (19, 16, 'Island Oasis - Raspberry', '2021-11-11 09:35:23', '2021-09-07 12:22:15', 29.1);
insert into Producto (idCategoria, IdProveedor, nombre, fechaProduccion, fechaExpiracion, precioVenta) values (5, 9, 'Basil - Thai', '2021-11-14 08:54:49', '2021-10-15 15:06:11', 86.26);
insert into Producto (idCategoria, IdProveedor, nombre, fechaProduccion, fechaExpiracion, precioVenta) values (17, 10, 'Apple - Delicious, Golden', '2021-11-18 17:55:30', '2021-10-31 06:23:42', 79.5);
insert into Producto (idCategoria, IdProveedor, nombre, fechaProduccion, fechaExpiracion, precioVenta) values (14, 2, 'Radish - Pickled', '2021-11-05 23:18:48', '2021-09-29 05:58:36', 23.07);
insert into Producto (idCategoria, IdProveedor, nombre, fechaProduccion, fechaExpiracion, precioVenta) values (7, 2, 'Coffee - Frthy Coffee Crisp', '2021-11-06 12:00:38', '2021-10-10 04:13:31', 61.64);
insert into Producto (idCategoria, IdProveedor, nombre, fechaProduccion, fechaExpiracion, precioVenta) values (9, 4, 'Oil - Macadamia', '2021-11-03 06:11:56', '2021-11-20 00:42:57', 94.53);
insert into Producto (idCategoria, IdProveedor, nombre, fechaProduccion, fechaExpiracion, precioVenta) values (12, 3, 'Table Cloth - 53x69 Colour', '2021-11-10 16:36:33', '2021-10-12 01:47:23', 11.31);
insert into Producto (idCategoria, IdProveedor, nombre, fechaProduccion, fechaExpiracion, precioVenta) values (20, 4, 'Coffee - Almond Amaretto', '2021-11-03 01:08:49', '2021-10-02 07:43:26', 43.89);
insert into Producto (idCategoria, IdProveedor, nombre, fechaProduccion, fechaExpiracion, precioVenta) values (19, 16, 'Squeeze Bottle', '2021-11-18 16:31:07', '2021-10-14 09:02:13', 81.77);
insert into Producto (idCategoria, IdProveedor, nombre, fechaProduccion, fechaExpiracion, precioVenta) values (2, 19, 'Coffee Cup 16oz Foam', '2021-11-05 09:11:04', '2021-10-07 04:06:29', 87.2);
insert into Producto (idCategoria, IdProveedor, nombre, fechaProduccion, fechaExpiracion, precioVenta) values (16, 14, 'Quail - Jumbo', '2021-11-16 21:17:21', '2021-11-03 04:13:19', 50.66);
insert into Producto (idCategoria, IdProveedor, nombre, fechaProduccion, fechaExpiracion, precioVenta) values (10, 1, 'Bread Sour Rolls', '2021-11-17 05:34:59', '2021-09-23 16:00:01', 15.57);
GO

insert into Sucursal (idDireccion, nombre) values (1, 'Matcham');
insert into Sucursal (idDireccion, nombre) values (14, 'Weekes');
insert into Sucursal (idDireccion, nombre) values (4, 'Klees');
insert into Sucursal (idDireccion, nombre) values (11, 'Courtier');
insert into Sucursal (idDireccion, nombre) values (16, 'Karran');
insert into Sucursal (idDireccion, nombre) values (12, 'Astin');
insert into Sucursal (idDireccion, nombre) values (1, 'Riddles');
insert into Sucursal (idDireccion, nombre) values (11, 'Pregal');
insert into Sucursal (idDireccion, nombre) values (19, 'McGirr');
insert into Sucursal (idDireccion, nombre) values (14, 'Downing');
insert into Sucursal (idDireccion, nombre) values (17, 'Manueau');
insert into Sucursal (idDireccion, nombre) values (17, 'Anslow');
insert into Sucursal (idDireccion, nombre) values (8, 'Goggan');
insert into Sucursal (idDireccion, nombre) values (17, 'Wren');
insert into Sucursal (idDireccion, nombre) values (8, 'Wakenshaw');
insert into Sucursal (idDireccion, nombre) values (11, 'Rosenau');
insert into Sucursal (idDireccion, nombre) values (8, 'Fotherby');
insert into Sucursal (idDireccion, nombre) values (5, 'Benzies');
insert into Sucursal (idDireccion, nombre) values (16, 'Howieson');
insert into Sucursal (idDireccion, nombre) values (10, 'Oakton');
GO 

insert into Encargado (IDSucursal) values (2);
insert into Encargado (IDSucursal) values (12);
insert into Encargado (IDSucursal) values (3);
insert into Encargado (IDSucursal) values (8);
insert into Encargado (IDSucursal) values (17);
insert into Encargado (IDSucursal) values (1);
insert into Encargado (IDSucursal) values (17);
insert into Encargado (IDSucursal) values (7);
insert into Encargado (IDSucursal) values (16);
insert into Encargado (IDSucursal) values (16);
insert into Encargado (IDSucursal) values (18);
insert into Encargado (IDSucursal) values (11);
insert into Encargado (IDSucursal) values (10);
insert into Encargado (IDSucursal) values (10);
insert into Encargado (IDSucursal) values (12);
insert into Encargado (IDSucursal) values (12);
insert into Encargado (IDSucursal) values (15);
insert into Encargado (IDSucursal) values (8);
insert into Encargado (IDSucursal) values (4);
insert into Encargado (IDSucursal) values (2);
GO

insert into Impuesto (nombre, porcentaje) values ('Capital Goods', 6.39);
insert into Impuesto (nombre, porcentaje) values ('Energy', 6.05);
insert into Impuesto (nombre, porcentaje) values ('Basic Industries', 8.31);
insert into Impuesto (nombre, porcentaje) values ('Technology', 4.78);
insert into Impuesto (nombre, porcentaje) values ('Finance', 2.26);
insert into Impuesto (nombre, porcentaje) values ('Transportation', 3.25);
insert into Impuesto (nombre, porcentaje) values ('Capital Goods', 4.5);
insert into Impuesto (nombre, porcentaje) values ('Basic Industries', 8.95);
insert into Impuesto (nombre, porcentaje) values ('Finance', 9.98);
insert into Impuesto (nombre, porcentaje) values ('n/a', 5.28);
insert into Impuesto (nombre, porcentaje) values ('Capital Goods', 4.11);
insert into Impuesto (nombre, porcentaje) values ('Finance', 7.87);
insert into Impuesto (nombre, porcentaje) values ('n/a', 4.42);
insert into Impuesto (nombre, porcentaje) values ('n/a', 7.22);
insert into Impuesto (nombre, porcentaje) values ('Consumer Services', 4.79);
insert into Impuesto (nombre, porcentaje) values ('Consumer Durables', 5.02);
insert into Impuesto (nombre, porcentaje) values ('Public Utilities', 2.98);
insert into Impuesto (nombre, porcentaje) values ('Finance', 5.27);
insert into Impuesto (nombre, porcentaje) values ('Public Utilities', 6.83);
insert into Impuesto (nombre, porcentaje) values ('n/a', 5.89);
GO

insert into ProductoXSucursal (IDSucursal, IDProducto, IDImpuesto, cantidad, minimo, maximo, descuento) values (2, 20, 13, 50, 3, 100, 8.56);
insert into ProductoXSucursal (IDSucursal, IDProducto, IDImpuesto, cantidad, minimo, maximo, descuento) values (1, 19, 2, 38, 11, 91, 6.46);
insert into ProductoXSucursal (IDSucursal, IDProducto, IDImpuesto, cantidad, minimo, maximo, descuento) values (14, 19, 13, 87, 12, 93, 11.85);
insert into ProductoXSucursal (IDSucursal, IDProducto, IDImpuesto, cantidad, minimo, maximo, descuento) values (16, 1, 7, 61, 8, 95, 5.37);
insert into ProductoXSucursal (IDSucursal, IDProducto, IDImpuesto, cantidad, minimo, maximo, descuento) values (6, 2, 15, 20, 13, 98, 10.02);
insert into ProductoXSucursal (IDSucursal, IDProducto, IDImpuesto, cantidad, minimo, maximo, descuento) values (2, 7, 4, 83, 3, 95, 12.08);
insert into ProductoXSucursal (IDSucursal, IDProducto, IDImpuesto, cantidad, minimo, maximo, descuento) values (2, 6, 11, 81, 6, 88, 5.27);
insert into ProductoXSucursal (IDSucursal, IDProducto, IDImpuesto, cantidad, minimo, maximo, descuento) values (4, 8, 11, 23, 13, 95, 9.37);
insert into ProductoXSucursal (IDSucursal, IDProducto, IDImpuesto, cantidad, minimo, maximo, descuento) values (3, 19, 13, 57, 18, 90, 10.5);
insert into ProductoXSucursal (IDSucursal, IDProducto, IDImpuesto, cantidad, minimo, maximo, descuento) values (9, 13, 6, 26, 12, 99, 5.23);
insert into ProductoXSucursal (IDSucursal, IDProducto, IDImpuesto, cantidad, minimo, maximo, descuento) values (4, 12, 17, 59, 9, 96, 2.03);
insert into ProductoXSucursal (IDSucursal, IDProducto, IDImpuesto, cantidad, minimo, maximo, descuento) values (7, 2, 19, 68, 0, 100, 7.53);
insert into ProductoXSucursal (IDSucursal, IDProducto, IDImpuesto, cantidad, minimo, maximo, descuento) values (12, 17, 13, 23, 20, 95, 1.43);
insert into ProductoXSucursal (IDSucursal, IDProducto, IDImpuesto, cantidad, minimo, maximo, descuento) values (19, 11, 7, 87, 7, 89, 12.35);
insert into ProductoXSucursal (IDSucursal, IDProducto, IDImpuesto, cantidad, minimo, maximo, descuento) values (7, 18, 9, 69, 10, 98, 1.93);
insert into ProductoXSucursal (IDSucursal, IDProducto, IDImpuesto, cantidad, minimo, maximo, descuento) values (14, 6, 8, 48, 13, 100, 0.77);
insert into ProductoXSucursal (IDSucursal, IDProducto, IDImpuesto, cantidad, minimo, maximo, descuento) values (20, 6, 11, 71, 6, 97, 3.72);
insert into ProductoXSucursal (IDSucursal, IDProducto, IDImpuesto, cantidad, minimo, maximo, descuento) values (13, 18, 19, 86, 10, 93, 3.72);
insert into ProductoXSucursal (IDSucursal, IDProducto, IDImpuesto, cantidad, minimo, maximo, descuento) values (16, 12, 17, 32, 12, 93, 10.51);
insert into ProductoXSucursal (IDSucursal, IDProducto, IDImpuesto, cantidad, minimo, maximo, descuento) values (14, 17, 4, 58, 15, 92, 2.22);
GO

insert into Pedido (IDSucursal, IDProducto, IDProveedor, cantidad, fechaProduccion) values (1, 13, 11, 10, '2021-08-14 12:45:31');
insert into Pedido (IDSucursal, IDProducto, IDProveedor, cantidad, fechaProduccion) values (14, 18, 20, 13, '2021-10-07 16:32:42');
insert into Pedido (IDSucursal, IDProducto, IDProveedor, cantidad, fechaProduccion) values (6, 14, 19, 3, '2021-01-30 11:20:50');
insert into Pedido (IDSucursal, IDProducto, IDProveedor, cantidad, fechaProduccion) values (11, 16, 1, 10, '2021-11-14 22:44:22');
insert into Pedido (IDSucursal, IDProducto, IDProveedor, cantidad, fechaProduccion) values (7, 4, 6, 13, '2021-02-05 22:28:14');
insert into Pedido (IDSucursal, IDProducto, IDProveedor, cantidad, fechaProduccion) values (18, 5, 6, 7, '2021-07-19 03:40:55');
insert into Pedido (IDSucursal, IDProducto, IDProveedor, cantidad, fechaProduccion) values (13, 6, 8, 16, '2021-05-31 19:03:25');
insert into Pedido (IDSucursal, IDProducto, IDProveedor, cantidad, fechaProduccion) values (14, 17, 6, 20, '2021-01-26 12:15:40');
insert into Pedido (IDSucursal, IDProducto, IDProveedor, cantidad, fechaProduccion) values (15, 16, 12, 13, '2021-01-02 12:02:55');
insert into Pedido (IDSucursal, IDProducto, IDProveedor, cantidad, fechaProduccion) values (8, 14, 8, 19, '2021-01-25 07:22:46');
insert into Pedido (IDSucursal, IDProducto, IDProveedor, cantidad, fechaProduccion) values (7, 16, 5, 11, '2021-10-05 10:28:37');
insert into Pedido (IDSucursal, IDProducto, IDProveedor, cantidad, fechaProduccion) values (15, 13, 17, 9, '2021-03-14 11:22:59');
insert into Pedido (IDSucursal, IDProducto, IDProveedor, cantidad, fechaProduccion) values (2, 8, 18, 19, '2021-03-16 07:40:15');
insert into Pedido (IDSucursal, IDProducto, IDProveedor, cantidad, fechaProduccion) values (17, 9, 19, 14, '2021-06-06 16:59:02');
insert into Pedido (IDSucursal, IDProducto, IDProveedor, cantidad, fechaProduccion) values (3, 16, 4, 17, '2021-06-20 02:01:57');
insert into Pedido (IDSucursal, IDProducto, IDProveedor, cantidad, fechaProduccion) values (2, 10, 5, 2, '2021-04-20 13:49:52');
insert into Pedido (IDSucursal, IDProducto, IDProveedor, cantidad, fechaProduccion) values (1, 18, 6, 12, '2021-02-16 06:29:04');
insert into Pedido (IDSucursal, IDProducto, IDProveedor, cantidad, fechaProduccion) values (4, 11, 19, 14, '2021-01-08 19:14:58');
insert into Pedido (IDSucursal, IDProducto, IDProveedor, cantidad, fechaProduccion) values (4, 1, 19, 19, '2021-07-15 10:08:37');
insert into Pedido (IDSucursal, IDProducto, IDProveedor, cantidad, fechaProduccion) values (9, 5, 12, 16, '2021-04-27 08:49:38');
GO

insert into Puesto (nombre) values ('Administrador');
insert into Puesto (nombre) values ('Gerente General');
insert into Puesto (nombre) values ('Facturador');
insert into Puesto (nombre) values ('Support');
insert into Puesto (nombre) values ('Legal');
insert into Puesto (nombre) values ('Services');
insert into Puesto (nombre) values ('Product Management');
insert into Puesto (nombre) values ('Analisis');
insert into Puesto (nombre) values ('Services IT');
insert into Puesto (nombre) values ('Services');
insert into Puesto (nombre) values ('Training');
insert into Puesto (nombre) values ('Cooker');
insert into Puesto (nombre) values ('Business Strategy');
insert into Puesto (nombre) values ('Janitor');
insert into Puesto (nombre) values ('Engineering');
insert into Puesto (nombre) values ('Announcer');
insert into Puesto (nombre) values ('Business Development');
insert into Puesto (nombre) values ('Research and Development');
insert into Puesto (nombre) values ('Accounting');
insert into Puesto (nombre) values ('Human Resources');
GO

insert into Empleado (IDSucursal, IDPuesto, IDEncargado, nombre, salarioBase) values (10, 3, 11, 'Barry Cubin', 734.41);
insert into Empleado (IDSucursal, IDPuesto, IDEncargado, nombre, salarioBase) values (2, 5, 17, 'Wendi Ineson', 609.15);
insert into Empleado (IDSucursal, IDPuesto, IDEncargado, nombre, salarioBase) values (18, 5, 3, 'Gloria Nudde', 547.27);
insert into Empleado (IDSucursal, IDPuesto, IDEncargado, nombre, salarioBase) values (5, 8, 13, 'Marisa Galea', 791.86);
insert into Empleado (IDSucursal, IDPuesto, IDEncargado, nombre, salarioBase) values (7, 5, 12, 'Emilee Ablott', 717.13);
insert into Empleado (IDSucursal, IDPuesto, IDEncargado, nombre, salarioBase) values (16, 16, 6, 'Kelsi Downing', 520.91);
insert into Empleado (IDSucursal, IDPuesto, IDEncargado, nombre, salarioBase) values (7, 5, 20, 'Godiva Adey', 950.94);
insert into Empleado (IDSucursal, IDPuesto, IDEncargado, nombre, salarioBase) values (10, 9, 4, 'Fayth Waterhous', 579.77);
insert into Empleado (IDSucursal, IDPuesto, IDEncargado, nombre, salarioBase) values (7, 7, 7, 'Ogdan de Lloyd', 364.9);
insert into Empleado (IDSucursal, IDPuesto, IDEncargado, nombre, salarioBase) values (6, 9, 9, 'Camila Tummasutti', 618.36);
insert into Empleado (IDSucursal, IDPuesto, IDEncargado, nombre, salarioBase) values (20, 11, 9, 'Jarvis Baxster', 504.6);
insert into Empleado (IDSucursal, IDPuesto, IDEncargado, nombre, salarioBase) values (5, 13, 4, 'Broderic Sudy', 698.29);
insert into Empleado (IDSucursal, IDPuesto, IDEncargado, nombre, salarioBase) values (3, 12, 3, 'Caresse Sarra', 639.54);
insert into Empleado (IDSucursal, IDPuesto, IDEncargado, nombre, salarioBase) values (4, 20, 20, 'Hogan Vedekhov', 324.61);
insert into Empleado (IDSucursal, IDPuesto, IDEncargado, nombre, salarioBase) values (19, 20, 4, 'Ursala Episcopio', 389.0);
insert into Empleado (IDSucursal, IDPuesto, IDEncargado, nombre, salarioBase) values (17, 15, 15, 'Iosep Rivalant', 967.69);
insert into Empleado (IDSucursal, IDPuesto, IDEncargado, nombre, salarioBase) values (18, 5, 3, 'Avram Basford', 329.4);
insert into Empleado (IDSucursal, IDPuesto, IDEncargado, nombre, salarioBase) values (8, 10, 19, 'Sherman Spilsted', 805.32);
insert into Empleado (IDSucursal, IDPuesto, IDEncargado, nombre, salarioBase) values (3, 10, 1, 'Tuck Foyle', 381.43);
insert into Empleado (IDSucursal, IDPuesto, IDEncargado, nombre, salarioBase) values (11, 4, 7, 'Gavrielle Ayerst', 596.24);
GO

insert into MetodoPago (nombre) values ('Pound');
insert into MetodoPago (nombre) values ('Kuna');
insert into MetodoPago (nombre) values ('Yuan Renminbi');
insert into MetodoPago (nombre) values ('Dinar');
insert into MetodoPago (nombre) values ('Zloty');
insert into MetodoPago (nombre) values ('Rupiah');
insert into MetodoPago (nombre) values ('Euro');
insert into MetodoPago (nombre) values ('Yuan Renminbi');
insert into MetodoPago (nombre) values ('Peso');
insert into MetodoPago (nombre) values ('Rupiah');
insert into MetodoPago (nombre) values ('Tenge');
insert into MetodoPago (nombre) values ('Euro');
insert into MetodoPago (nombre) values ('Koruna');
insert into MetodoPago (nombre) values ('Yen');
insert into MetodoPago (nombre) values ('Zloty');
insert into MetodoPago (nombre) values ('Yuan Renminbi');
insert into MetodoPago (nombre) values ('Rupiah');
insert into MetodoPago (nombre) values ('Dollar');
insert into MetodoPago (nombre) values ('Yuan Renminbi');
insert into MetodoPago (nombre) values ('Rupiah');
GO

insert into Cliente (nombre, IDDireccion) values ('Kari Bromehed', 12);
insert into Cliente (nombre, IDDireccion) values ('Danika Spaduzza', 2);
insert into Cliente (nombre, IDDireccion) values ('Mile Falconbridge', 14);
insert into Cliente (nombre, IDDireccion) values ('Marisa Parade', 15);
insert into Cliente (nombre, IDDireccion) values ('Catlaina Kinsley', 19);
insert into Cliente (nombre, IDDireccion) values ('Durward Tizard', 16);
insert into Cliente (nombre, IDDireccion) values ('Elicia Robatham', 5);
insert into Cliente (nombre, IDDireccion) values ('Helaine Thurstance', 18);
insert into Cliente (nombre, IDDireccion) values ('Cletus Cow', 9);
insert into Cliente (nombre, IDDireccion) values ('Isac Dakhov', 15);
insert into Cliente (nombre, IDDireccion) values ('Laurette Narrie', 11);
insert into Cliente (nombre, IDDireccion) values ('Jenine Lambis', 19);
insert into Cliente (nombre, IDDireccion) values ('Abigail Riggoll', 15);
insert into Cliente (nombre, IDDireccion) values ('Millicent Balassa', 12);
insert into Cliente (nombre, IDDireccion) values ('Russ Seamark', 7);
insert into Cliente (nombre, IDDireccion) values ('Montague Sugar', 14);
insert into Cliente (nombre, IDDireccion) values ('Dora Schubuser', 4);
insert into Cliente (nombre, IDDireccion) values ('Roy Ivashinnikov', 13);
insert into Cliente (nombre, IDDireccion) values ('Ryon Nardoni', 4);
insert into Cliente (nombre, IDDireccion) values ('Lauree Buist', 14);
GO

insert into Compra (IDSucursal, IDFacturador, IDCliente, IDMetodoPago, monto, fecha, tipo) values (1, 3, 6, 9, 171.33, '2021-09-23 12:20:27', 0);
insert into Compra (IDSucursal, IDFacturador, IDCliente, IDMetodoPago, monto, fecha, tipo) values (6, 4, 18, 12, 73.34, '2021-01-25 04:00:20', 0);
insert into Compra (IDSucursal, IDFacturador, IDCliente, IDMetodoPago, monto, fecha, tipo) values (1, 4, 10, 2, 82.53, '2021-04-22 03:51:12', 1);
insert into Compra (IDSucursal, IDFacturador, IDCliente, IDMetodoPago, monto, fecha, tipo) values (14, 1, 20, 16, 23.08, '2021-10-14 01:53:07', 1);
insert into Compra (IDSucursal, IDFacturador, IDCliente, IDMetodoPago, monto, fecha, tipo) values (10, 2, 12, 1, 189.99, '2021-01-24 12:59:18', 0);
insert into Compra (IDSucursal, IDFacturador, IDCliente, IDMetodoPago, monto, fecha, tipo) values (4, 3, 8, 19, 33.65, '2020-12-20 14:58:25', 0);
insert into Compra (IDSucursal, IDFacturador, IDCliente, IDMetodoPago, monto, fecha, tipo) values (5, 3, 6, 9, 81.81, '2021-10-20 01:23:45', 0);
insert into Compra (IDSucursal, IDFacturador, IDCliente, IDMetodoPago, monto, fecha, tipo) values (5, 2, 13, 6, 25.73, '2021-01-18 22:15:57', 0);
insert into Compra (IDSucursal, IDFacturador, IDCliente, IDMetodoPago, monto, fecha, tipo) values (8, 3, 6, 16, 80.83, '2021-11-09 21:09:18', 0);
insert into Compra (IDSucursal, IDFacturador, IDCliente, IDMetodoPago, monto, fecha, tipo) values (19, 4, 1, 8, 128.79, '2021-10-17 04:50:39', 0);
insert into Compra (IDSucursal, IDFacturador, IDCliente, IDMetodoPago, monto, fecha, tipo) values (19, 2, 14, 9, 136.74, '2021-11-04 22:20:57', 0);
insert into Compra (IDSucursal, IDFacturador, IDCliente, IDMetodoPago, monto, fecha, tipo) values (10, 3, 9, 15, 58.42, '2021-06-02 21:04:46', 0);
insert into Compra (IDSucursal, IDFacturador, IDCliente, IDMetodoPago, monto, fecha, tipo) values (6, 2, 7, 14, 106.02, '2021-07-11 19:42:18', 1);
insert into Compra (IDSucursal, IDFacturador, IDCliente, IDMetodoPago, monto, fecha, tipo) values (10, 2, 1, 12, 170.62, '2020-12-08 22:28:40', 1);
insert into Compra (IDSucursal, IDFacturador, IDCliente, IDMetodoPago, monto, fecha, tipo) values (1, 3, 17, 19, 77.75, '2020-12-08 18:15:32', 0);
insert into Compra (IDSucursal, IDFacturador, IDCliente, IDMetodoPago, monto, fecha, tipo) values (1, 4, 16, 4, 10.12, '2021-11-18 07:03:35', 1);
insert into Compra (IDSucursal, IDFacturador, IDCliente, IDMetodoPago, monto, fecha, tipo) values (1, 4, 15, 11, 131.86, '2021-08-25 21:51:40', 1);
insert into Compra (IDSucursal, IDFacturador, IDCliente, IDMetodoPago, monto, fecha, tipo) values (10, 3, 5, 14, 39.68, '2021-03-29 17:21:17', 0);
insert into Compra (IDSucursal, IDFacturador, IDCliente, IDMetodoPago, monto, fecha, tipo) values (10, 1, 1, 4, 123.51, '2021-01-19 20:17:06', 1);
insert into Compra (IDSucursal, IDFacturador, IDCliente, IDMetodoPago, monto, fecha, tipo) values (10, 3, 20, 5, 136.95, '2020-12-31 08:36:43', 0);
GO

insert into ProductoXCompra (IDCompra, IDProducto, cantidad) values (7, 3, 15.8);
insert into ProductoXCompra (IDCompra, IDProducto, cantidad) values (12, 2, 4.66);
insert into ProductoXCompra (IDCompra, IDProducto, cantidad) values (2, 3, 4.3);
insert into ProductoXCompra (IDCompra, IDProducto, cantidad) values (13, 1, 9.59);
insert into ProductoXCompra (IDCompra, IDProducto, cantidad) values (7, 3, 3.79);
insert into ProductoXCompra (IDCompra, IDProducto, cantidad) values (20, 1, 17.19);
insert into ProductoXCompra (IDCompra, IDProducto, cantidad) values (9, 1, 6.95);
insert into ProductoXCompra (IDCompra, IDProducto, cantidad) values (6, 4, 19.36);
insert into ProductoXCompra (IDCompra, IDProducto, cantidad) values (5, 2, 15.89);
insert into ProductoXCompra (IDCompra, IDProducto, cantidad) values (7, 4, 1.77);
insert into ProductoXCompra (IDCompra, IDProducto, cantidad) values (2, 1, 19.94);
insert into ProductoXCompra (IDCompra, IDProducto, cantidad) values (12, 3, 7.87);
insert into ProductoXCompra (IDCompra, IDProducto, cantidad) values (11, 4, 19.01);
insert into ProductoXCompra (IDCompra, IDProducto, cantidad) values (2, 1, 6.56);
insert into ProductoXCompra (IDCompra, IDProducto, cantidad) values (1, 3, 1.46);
insert into ProductoXCompra (IDCompra, IDProducto, cantidad) values (10, 4, 3.57);
insert into ProductoXCompra (IDCompra, IDProducto, cantidad) values (11, 4, 8.65);
insert into ProductoXCompra (IDCompra, IDProducto, cantidad) values (10, 1, 6.31);
insert into ProductoXCompra (IDCompra, IDProducto, cantidad) values (1, 2, 16.09);
insert into ProductoXCompra (IDCompra, IDProducto, cantidad) values (8, 3, 18.3);
GO



declare @IDSucursal int, @IDProducto int, @cantidad int, @minimo int,@maximo int, @IDImpuesto int,
@descuento float
select @IDSucursal = 1, @IDProducto = 2, @cantidad = 200, @minimo = 50, @maximo = 1000, @IDImpuesto = 1, @descuento=0.10

EXEC procedure_query_insert_productoXSucursal  @IDSucursal, @IDProducto, @cantidad, @minimo, @maximo, @IDImpuesto, @descuento
GO

declare @IDSucursal int
set @IDSucursal = 2
EXEC procedure_query_productos_by_sucursal @IDSucursal
GO

declare @IDPais int
select @IDPais = 7
EXEC procedure_query_delete_pais_by_id @IDPais
GO
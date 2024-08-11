
USE la_gran_oferta;

CREATE TABLE proveedores (
	id_proveedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    Nombre VARCHAR(50) NOT NULL,
    Contacto VARCHAR(50) NULL,
    Dirección VARCHAR(50) NULL,
    Teléfono VARCHAR(50) NULL,
    Email VARCHAR(50) NULL
);

CREATE TABLE productos (
	id_producto INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    descripción VARCHAR(100) NULL,
    precio DECIMAL(7,2) NOT NULL,
    stock INT NULL,
    id_proveedor INT NOT NULL,
    
    PRIMARY KEY (id_producto),
    FOREIGN KEY (id_proveedor) REFERENCES proveedores (id_proveedor)
    );

CREATE TABLE compras (
	id_compra INT NOT NULL,
    fecha DATE,
    id_proveedor INT,
    total DECIMAL,
    
    PRIMARY KEY (id_compra),
    FOREIGN KEY (id_proveedor) REFERENCES proveedores (id_proveedor)
);

CREATE TABLE detalles_de_compras (
	id_detalle INT NOT NULL,
    id_compra INT,
    id_producto INT,
    cantidad INT,
    precio DECIMAL,
    
    PRIMARY KEY (id_detalle),
    FOREIGN KEY (id_compra) REFERENCES compras (id_compra),
    FOREIGN KEY (id_producto) REFERENCES productos (id_producto)
);

INSERT INTO Proveedores 
(id_proveedor, Nombre, Contacto, Dirección, Teléfono, Email) 
VALUES ('1', 'Distribuidora Saxelis', 'María Cabrera', 'Altamira 1452, Lanus', '11 48793665', 'dsaxelis@gmail.com');

INSERT INTO Proveedores 
(id_proveedor, Nombre, Contacto, Dirección, Teléfono, Email) 
VALUES ('2', 'Comercializadora Pradera', 'Gabriel Jhonson', 'Pompeya 148, Martinez', '11 87554128', 'info@pradera.com.ar');

INSERT INTO Proveedores 
(id_proveedor, Nombre, Contacto, Dirección, Teléfono, Email) 
VALUES ('3', 'Martín Cojedes', 'Martin Cojedes', 'Laprida 854, CABA', '11 96351245', 'Mcojedes@hotmail.com');

INSERT INTO Proveedores 
(id_proveedor, Nombre, Contacto, Dirección, Teléfono, Email) 
VALUES ('4', 'Cor', 'Federico Laria', 'Montevideo 8564, San Isidro', '11 45184567', 'ventas@cor.com.ar');

INSERT INTO Proveedores 
(id_proveedor, Nombre, Contacto, Dirección, Teléfono, Email) 
VALUES ('5', 'Siglo XVII', 'Gabriela Paredes', 'Corlinda 784, Quilmes', '11 77522541', 'Siglo17@gmail.com');

INSERT INTO Productos 
(id_producto, Nombre, Descripción, Precio, Stock, ID_Proveedor) 
VALUES ('0001', 'Fineghan', 'Resma de papel A4', 14.50, 1000, 4);

INSERT INTO Productos 
(id_producto, Nombre, Descripción, Precio, Stock, ID_Proveedor) 
VALUES ('0002', 'Blanquita', 'Lavandina', 10, 400, 3);

INSERT INTO Productos 
(id_producto, Nombre, Descripción, Precio, Stock, ID_Proveedor) 
VALUES ('0003', 'Carmelita', 'Azucar AAA', 8, 500, 1);

INSERT INTO Productos 
(id_producto, Nombre, Descripción, Precio, Stock, ID_Proveedor) 
VALUES ('0004', 'Kelly´s', 'pasta de huevo', 11, 700, 2);

INSERT INTO Productos 
(id_producto, Nombre, Descripción, Precio, Stock, ID_Proveedor) 
VALUES ('0005', 'Fresca Mora', 'Jugo natural pasteurizado', 9, 300, 5);

INSERT INTO Compras
(id_compra, Fecha, ID_Proveedor, Total) 
VALUES ('01', '2024-02-04', 1, 2400.00);

INSERT INTO Compras
(id_compra, Fecha, ID_Proveedor, Total) 
VALUES ('02', '2024-03-24', 3, 100.00);

INSERT INTO Compras
(id_compra, Fecha, ID_Proveedor, Total) 
VALUES ('03', '2024-05-15', 4, 6875);

SELECT*FROM proveedores;
SELECT*FROM productos;
SELECT*FROM compras;

INSERT INTO Compras
(id_compra, Fecha, ID_Proveedor, Total) 
VALUES ('04', '2024-06-06', 2, 2232);

INSERT INTO Compras
(id_compra, Fecha, ID_Proveedor, Total) 
VALUES ('05', '2024-06-05', 5, 1598);

INSERT INTO Detalles_De_Compras 
(id_detalle, id_Compra, id_Producto, Cantidad, Precio) 
VALUES (1, 2, 5, 50, 100.00);

INSERT INTO Detalles_De_Compras 
(id_detalle, id_Compra, id_Producto, Cantidad, Precio) 
VALUES (2, 1, 4, 120, 1500.00);

INSERT INTO Detalles_De_Compras 
(id_detalle, id_Compra, id_Producto, Cantidad, Precio) 
VALUES (3, 3, 3, 140, 1850.00);

INSERT INTO Detalles_De_Compras 
(id_detalle, id_Compra, id_Producto, Cantidad, Precio) 
VALUES (4, 5, 2, 130, 1960.00);

INSERT INTO Detalles_De_Compras 
(id_detalle, id_Compra, id_Producto, Cantidad, Precio) 
VALUES (5, 4, 1, 60, 980.00);

SELECT*FROM proveedores;
SELECT*FROM productos;
SELECT*FROM compras;
SELECT*FROM detalles_de_compras;
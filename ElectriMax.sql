CREATE DATABASE ElectriMax;

USE ElectriMax;

CREATE TABLE Proveedores (
    ProveedorID INT auto_increment PRIMARY KEY,
    Nombre varchar(100) not null,
	Telefono varchar(20),
    CorreoElectronico varchar(50),
    Direccion TEXT
);

create table Productos (
    ProductoID int auto_increment primary key,
    Nombre varchar(100) not null,
    Marca varchar(50),
    Categoria varchar(50),
    Precio decimal(10, 2) not null,
    CantidadStock int not null,
    ProveedorID int not null,
    foreign key (ProveedorID) references Proveedores(ProveedorID)
    );
    
create table Ventas (
    VentaID int auto_increment primary key,
    Fecha date not null,
    ClienteNombre varchar(100),
    ClienteIdentificacion varchar(50),
    TotalVenta decimal (10,2)
    );
    
CREATE TABLE DetalleVenta (
    DetalleID INT AUTO_INCREMENT PRIMARY KEY,
    VentaID INT NOT NULL,
    ProductoID INT NOT NULL,
    Cantidad INT NOT NULL,
    SubTotal DECIMAL(10, 2),
    FOREIGN KEY (VentaID) REFERENCES Ventas(VentaID),
    FOREIGN KEY (ProductoID) REFERENCES Productos(ProductoID)
    FOREIGN KEY (ProveedorID) REFERENCES Proveedor(ProveedorID)
    );

INSERT INTO Proveedores (Nombre, Telefono, CorreoElectronico, Direccion)
VALUES
('Samsung', '1234567890', 'contacto@samsung.com', 'Seúl, Corea del Sur'),
('Dell', '9876543210', 'contacto@dell.com', 'Austin, Texas, USA'),
('Logitech', '4567891230', 'contacto@logitech.com', 'Newark, California, USA'),
('Sony', '1122334455', 'contacto@sony.com', 'Tokio, Japón'),
('LG', '6677889900', 'contacto@lg.com', 'Seúl, Corea del Sur'),
('HP', '5544332211', 'contacto@hp.com', 'Palo Alto, California, USA'),
('Asus', '9988776655', 'contacto@asus.com', 'Taipéi, Taiwán'),
('Lenovo', '4433221100', 'contacto@lenovo.com', 'Pekín, China'),
('Acer', '6677884433', 'contacto@acer.com', 'Taipéi, Taiwán'),
('Apple', '9998887776', 'contacto@apple.com', 'Cupertino, California, USA'),
('Microsoft', '5566778899', 'contacto@microsoft.com', 'Redmond, Washington, USA'),
('Razer', '4455667788', 'contacto@razer.com', 'Irvine, California, USA'),
('Huawei', '1231231234', 'contacto@huawei.com', 'Shenzhen, China'),
('Xiaomi', '3213214321', 'contacto@xiaomi.com', 'Pekín, China'),
('Google', '9879876543', 'contacto@google.com', 'Mountain View, California, USA');

INSERT INTO Productos (Nombre, Marca, Categoria, Precio, CantidadStock, ProveedorID)
VALUES
('Televisor Samsung 50"', 'Samsung', 'Televisores', 500.00, 10, 1),
('Laptop Dell XPS 13', 'Dell', 'Laptops', 1200.00, 8, 2),
('Mouse Logitech MX Master 3', 'Logitech', 'Periféricos', 100.00, 15, 3),
('Auriculares Sony WH-1000XM4', 'Sony', 'Auriculares', 350.00, 5, 4),
('Monitor LG UltraGear', 'LG', 'Monitores', 700.00, 20, 5),
('Impresora HP LaserJet', 'HP', 'Impresoras', 250.00, 12, 6),
('Router Asus RT-AX88U', 'Asus', 'Redes', 300.00, 18, 7),
('Tablet Lenovo Tab P11', 'Lenovo', 'Tabletas', 400.00, 9, 8),
('Laptop Acer Aspire 5', 'Acer', 'Laptops', 750.00, 7, 9),
('iPhone 14 Pro', 'Apple', 'Teléfonos', 1300.00, 6, 10),
('Xbox Series X', 'Microsoft', 'Consolas', 500.00, 4, 11),
('Teclado Razer BlackWidow', 'Razer', 'Periféricos', 150.00, 11, 12),
('Smartphone Huawei P50', 'Huawei', 'Teléfonos', 900.00, 13, 13),
('Redmi Note 12', 'Xiaomi', 'Teléfonos', 300.00, 14, 14),
('Google Nest Hub', 'Google', 'Domótica', 100.00, 16, 15);

INSERT INTO Ventas (Fecha, ClienteNombre, ClienteIdentificacion, TotalVenta)
VALUES
('2025-04-01', 'Juan Pérez', '1234567890', 1800.00),
('2025-04-02', 'María Gómez', '0987654321', 700.00),
('2025-04-03', 'Carlos López', '1122334455', 1300.00),
('2025-04-04', 'Ana Martínez', '5566778899', 300.00),
('2025-04-05', 'Luis García', '4455667788', 500.00),
('2025-04-06', 'Sofía Rodríguez', '6677889900', 1200.00),
('2025-04-07', 'Miguel Santos', '7788990011', 800.00),
('2025-04-08', 'Laura Jiménez', '8899001122', 150.00),
('2025-04-09', 'Pedro Romero', '9900112233', 900.00),
('2025-04-10', 'Elena Torres', '2233445566', 600.00),
('2025-04-11', 'Raúl Vargas', '3344556677', 200.00),
('2025-04-12', 'Carla Peña', '4455667788', 450.00),
('2025-04-13', 'Eduardo Díaz', '5566778899', 1100.00),
('2025-04-14', 'Valeria Ruiz', '6677889900', 700.00),
('2025-04-15', 'Diego Herrera', '7788990011', 1600.00);

INSERT INTO DetalleVenta (VentaID, ProductoID, Cantidad, SubTotal)
VALUES
(1, 2, 1, 1200.00),
(1, 3, 6, 600.00),
(2, 5, 1, 700.00),
(3, 10, 1, 1300.00),
(4, 14, 1, 300.00),
(5, 11, 1, 500.00),
(6, 1, 2, 1000.00),
(6, 6, 4, 1000.00),
(7, 9, 1, 800.00),
(8, 3, 1, 150.00),
(9, 13, 1, 900.00),
(10, 4, 2, 600.00),
(11, 12, 2, 200.00),
(12, 7, 3, 450.00),
(13, 8, 2, 800.00);

-- consultas para realizar en nuestra tabla de datos:

-- listar todos los productos disponibles con su cantidad de stock
select nombre, cantidadstock
from productos;

-- Mostrar los productos con bajo stock menores a 5
select nombre, cantidadstock
from productos
where cantidadstock <= 5;

-- consultar todas las ventas realizadas en un periodo de tiempo
select *
from ventas
where fecha between "2025-04-01" and "2025-04-30";

-- obtener los productos suministrados por un proveedor especifico EJEMPLO SAMSUNG
select p.nombre
from productos p
join proveedores pr on p.proveedorid = pr.proveedorid
where pr.nombre = "samsung";

-- ver el total de ventas generadas en un mes
select v.ventaid, v.clientenombre, sum(dv.cantidad * p.precio) as Total_Venta
from ventas v
join detalleventa dv on v.ventaid = dv.ventaid
join productos p on dv.productoid = p.productoid
where month (v.fecha) = 4 and year (v.fecha) = 2025
group by v.ventaid;

-- mostrar los productos vendidos en una venta especifica EJEMPLO: ID 101
select p.nombre, dv.cantidad
from detalleventa dv
join productos p on dv.productoid = p.productoid
where dv.detalleid = 1;

-- clientes que han comprado productos en una categoria especifica EJEMPLO:LAPTOPS
select distinct v.clientenombre
from ventas v 
join detalleventa dv on v.ventaid = dv.ventaid
join productos p on dv.productoid = p.productoid
where p.categoria = "Laptops";

-- productos mas vendido (nombre,  cantidad, total vendido)
select p.nombre, sum(dv.cantidad) as total_vendido
from detalleventa dv
join productos p on dv.productoid = p.productoid
group by p.nombre
order by total_vendido desc;

-- nombre y total gastado por cada cliente
select v.clientenombre, sum(dv.cantidad * p.precio) as total_gastado
from ventas v 
join detalleventa dv on dv.ventaid = v.ventaid
join productos p on dv.productoid = p.productoid
group by v.clientenombre;

-- categoria de productos vendidos mas de 10 veces
select p.categoria, sum(dv.cantidad) as total
from detalleventa dv
join productos p on dv.productoid = p.productoid
group by p.categoria
having total >= 10;

-- proveedor con mayor volumen de ventas
select pr.nombre, sum(dv.cantidad  * p.precio) as proveedor_mayor_ventas
from detalleventa dv
join productos p on dv.productoid = p.productoid
join proveedores pr on dv.proveedorid = pr.proveedorid
group by pr.nombre 
order by proveedor_mayor_ventas;

-- productos con precio mayor al promedio
select nombre, precio
from productos
where precio > (select avg(precio) from productos);

-- ventas con mas de 3 productos distintos
select ventaid
from detalleventa
group by ventaid
having count(distinct productoid)>1;

-- productos que nunca se han vendido

select nombre
from productos
where productoid not in(select distinct productoid from detalleventa);

-- clientes que han comprado productos de mas de una categoria
select v.clientenombre
from ventas v
join detalleventa dv on dv.ventaid = v.ventaid
join productos p on dv.productoid = p.productoid
group by v.clientenombre
having count(p.categoria)>1;

-- producto mas caro comparado en cada venta
select v.ventaid, v.clientenombre, max(p.precio)
from ventas v
join detalleventa dv on dv.ventaid = v.ventaid
join productos p on dv.productoid = p.productoid
group by v.ventaid;

-- clientes que compraron productos de proveedor logitech
select distinct v.clientenombre
from ventas v
join detalleventa dv on v.ventaid = dv.ventaid
join productos p on dv.productoid = p.productoid
join proveedores pr on p.proveedorid = pr.proveedorid
where pr.nombre = "Logitech";

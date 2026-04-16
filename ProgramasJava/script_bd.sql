-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS `BD Practicas U1_U2`;
USE `BD Practicas U1_U2`;

-- Tabla Programa 1: Renta de Autos (C#)
CREATE TABLE IF NOT EXISTS tbl_renta_autos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo_auto VARCHAR(20) NOT NULL,
    dias INT NOT NULL,
    kilometros DOUBLE NOT NULL,
    tarifa_diaria DOUBLE NOT NULL,
    costo_km DOUBLE NOT NULL,
    aumento DOUBLE DEFAULT 0,
    monto_total DOUBLE NOT NULL,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Tabla Programa 2: Venta de Productos (C#)
CREATE TABLE IF NOT EXISTS tbl_venta_productos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    producto VARCHAR(100) NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DOUBLE NOT NULL,
    total DOUBLE NOT NULL,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Tabla Programa 3: Venta de Cuadernos (Java)
CREATE TABLE IF NOT EXISTS tbl_venta_cuadernos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    producto VARCHAR(100) NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DOUBLE NOT NULL,
    subtotal DOUBLE NOT NULL,
    subtotal_acumulado DOUBLE NOT NULL,
    descuento DOUBLE NOT NULL,
    neto DOUBLE NOT NULL,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Tabla Programa 4: Pago Empleados (Java)
CREATE TABLE IF NOT EXISTS tbl_pago_empleados (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_empleado VARCHAR(100) NOT NULL,
    horas INT NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    modalidad VARCHAR(50) NOT NULL,
    pago_hora DOUBLE NOT NULL,
    bonificacion DOUBLE NOT NULL,
    sueldo DOUBLE NOT NULL,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Tabla Programa 5: Recepción Hotel (Java)
CREATE TABLE IF NOT EXISTS tbl_recepcion_hotel (
    id INT PRIMARY KEY AUTO_INCREMENT,
    habitacion VARCHAR(50) NOT NULL,
    dias INT NOT NULL,
    personas INT NOT NULL,
    costo_diario DOUBLE NOT NULL,
    monto_total DOUBLE NOT NULL,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Verificar tablas
SHOW TABLES;
CREACION DE STAGE:
CREATE TABLE Precios(
			Producto VARCHAR(30) NOT NULL,
            Valor FLOAT NOT NULL,
			id_Producto INT NOT NULL);
            
CREATE TABLE Vendedores(
			vendedor VARCHAR(30) NOT NULL,
			mes VARCHAR(30) NOT NULL,
            meta_Mensual FLOAT NOT NULL,
            id_Ejecutivo INT NOT NULL);
            
CREATE TABLE Interacciones(
			id_Vendedor INT NOT NULL,
            mes VARCHAR(30) NOT NULL,
            tipo_Interaccion VARCHAR(30) NOT NULL,
            numero INT NOT NULL);
            
CREATE TABLE Ventas(
			fecha VARCHAR(30) NOT NULL,
            id_Vendedor INT NOT NULL,
            id_Producto INT NOT NULL,
			id_Venta INT NOT NULL,
            cantidad INT NOT NULL);


CREACION DE MODELO DE DATOS:


CREATE TABLE dimProducto(
			id_Producto INT NOT NULL PRIMARY KEY,
            Producto VARCHAR(30) NOT NULL,
            Valor FLOAT NOT NULL);
            
CREATE TABLE dimTiempo(
			fecha VARCHAR(30) NOT NULL PRIMARY KEY,
			dia INT NOT NULL,
            mes INT NOT NULL,
            año INT NOT NULL,
            mes_letras VARCHAR(30) NOT NULL);
            
CREATE TABLE dimVendedor(
			id_Vendedor INT NOT NULL PRIMARY KEY,
            nombre VARCHAR(30) NOT NULL,
            apellido VARCHAR(30) NOT NULL,
            id_Ejecutivo INT NOT NULL);
            
CREATE TABLE dimMeta(
			id_Meta INT NOT NULL PRIMARY KEY,
			id_Vendedor INT NOT NULL,
            mes VARCHAR(30) NOT NULL,
            meta_Mensual FLOAT NOT NULL,
			FOREIGN KEY (id_Vendedor) REFERENCES dimVendedor(id_Vendedor));
            
CREATE TABLE dimInteraccion(
			id_Interaccion INT NOT NULL PRIMARY KEY,
            id_Vendedor INT NOT NULL,
            mes VARCHAR(30) NOT NULL,
            tipo_Interaccion VARCHAR(30) NOT NULL,
            numero INT NOT NULL,
            FOREIGN KEY (id_Vendedor) REFERENCES dimVendedor(id_Vendedor));
            
CREATE TABLE factVentas(
			id_Venta INT NOT NULL PRIMARY KEY,
            fecha VARCHAR(30) NOT NULL,
            id_Vendedor INT NOT NULL,
            id_Producto INT NOT NULL,
            cantidad INT NOT NULL,
            FOREIGN KEY (fecha) REFERENCES dimTiempo(fecha),
            FOREIGN KEY (id_Vendedor) REFERENCES dimVendedor(id_Vendedor),
            FOREIGN KEY (id_Producto) REFERENCES dimProducto(id_Producto));

DROP SCHEMA empresadb;
CREATE SCHEMA empresadb;
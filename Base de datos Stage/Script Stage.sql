
CREATE TABLE stgVentas(
			fecha VARCHAR(30) NOT NULL,
            id_Vendedor INT NOT NULL,
            id_Producto INT NOT NULL,
			id_Venta INT NOT NULL,
            cantidad INT NOT NULL);
            
CREATE TABLE stgVentasRechazados(
			fecha VARCHAR(30),
            id_Vendedor VARCHAR(30),
            id_Producto VARCHAR(30),
			id_Venta VARCHAR(30),
            cantidad VARCHAR(30));
            
CREATE TABLE stgGestion(
			id_Vendedor VARCHAR(30),
            fecha VARCHAR(30),
            id_Venta VARCHAR(30),
            numero_Llamadas VARCHAR(30),
            numero_Correos VARCHAR(30));
            
CREATE TABLE stgGestionRechazados(
            id_Vendedor VARCHAR(30),
            fecha VARCHAR(30),
            id_Venta VARCHAR(30),
            numero_Llamadas VARCHAR(30),
            numero_Correos VARCHAR(30));
            
CREATE TABLE stgPrecios(
			Producto VARCHAR(30) NOT NULL,
            Valor FLOAT NOT NULL,
			id_Producto INT NOT NULL);
            
CREATE TABLE stgVendedores(
			vendedor VARCHAR(30) NOT NULL,
			mes VARCHAR(30) NOT NULL,
            meta_Mensual FLOAT NOT NULL,
            id_Ejecutivo INT NOT NULL);

SELECT * FROM stagedb.stgVentas;

SELECT * FROM stagedb.stgVentasRechazados;

SELECT * FROM stagedb.stgGestion;

SELECT * FROM stagedb.stgGestionRechazados;

SELECT * FROM stagedb.stgPrecios;

SELECT * FROM stagedb.stgVendedores;
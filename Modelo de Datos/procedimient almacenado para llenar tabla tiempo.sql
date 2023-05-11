DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `CargaTiempo2`( fecha_inicio DATE,  fecha_fin DATE)
BEGIN 
    DECLARE var_date DATE DEFAULT fecha_inicio;    
    WHILE var_date <= fecha_fin DO
        INSERT INTO dimTiempo2(id_fecha, fecha, año, mes, dia) 
        VALUES (
            var_date + 0,
            DATE_FORMAT(var_date, '%y-%c-%d'),
            year(var_date),
            month(var_date),
            day(var_date)
        );
        SET var_date := var_date + INTERVAL 1 DAY;
    END WHILE;
END
// DELIMITER ;
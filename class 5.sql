CREATE OR REPLACE PROCEDURE guarda_almacen(my_num_alm IN INTEGER, my_ubicacion IN varchar2)
CONSTRAIN pk_id_almacen PRIMARY KEY (ID_ALMACEN));


AS BEGIN

INSERT INTO almacen VALUES (my_num_alm, my_ubicacion);
end;
/
create table Almacen (

numero_almacen integer, ubicacion_almacen varchar2(50),
          constraint PK_Num_Alm primary key (numero_almacen));   


CREATE OR REPLACE PROCEDURE guarda_almacen(my_num_alm in  INTEGER,
                            my_ubicacion IN varchar2)
                            
AS BEGIN

INSERT INTO almacen VALUES (my_num_alm, my_ubicacion);
end;
/

select * from Almacen
-- probar el procedimiento  con netbeans

-- usaremos un bloque sql para probar que esta bien nuestro procedimiento

begin
guarda_almacen( 321, 'Ecatepec');
end;
/

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



create table Cliente(

numero_cliente integer,
numero_almacen integer,
nombre_cliente varchar2(80),

constraint pk_n_c Primary key (numero_cliente),
constraint Fk1_n_a Foreign key (numero_almacen) references Almacen (numero_almacen));



create table Ventas(

id_ventas integer,
numero_cliente integer,
numero_vendedor integer,
monto_ventas float,


CONSTRAINT	pk_id_v Primary key (id_ventas),
CONSTRAINT	FK1_n_cl Foreign key (numero_cliente) references Cliente (numero_cliente),
CONSTRAINT	FK1_n_ven Foreign key (numero_vendedor) references Vendedor (numero_vendedor));



create table Vendedor(
numero_vendedor integer,
nombre_vendedor varchar(80),
area_ventas varchar(40),

CONSTRAINT	pk_id_vend Primary key (numero_vendedor));




--El ejmeplo de una tabla y su procedimiento para guardar con PK impuesto o artificial

Create table Calificaciones(

Id_calificacion integer,
materia varchar2(80),
valor float,

constraint PK_ID_CAL primary key (Id_calificacion));

--generamos una secuencia

create sequence sec_Calificaciones
start with 1
increment by 1
nomaxvalue;

-- aqui ya viene el procedimiento

create or replace Procedure guardar_calificaciones(

my_id_calificacion out integer,
my_materia varchar2,
my_valor in float
)

As
begin

select sec_Calificaciones.nextval into my_id_calificacion form dual;
Insert into calificaciones  values(my_id_calificacion, my_materia, my_valor);
end;
/
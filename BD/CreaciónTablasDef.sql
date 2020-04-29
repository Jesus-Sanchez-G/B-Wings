
Create table Cliente (

IdCliente int not null,
Nombre Varchar(40) not null,
ApellidoPaterno Varchar(40) not null,
ApellidoMaterno Varchar(40) not null,
Correo Varchar(40) not null,
Telefono int,
Ciudad_Estado Varchar(25),
Calle_Numero Varchar(25),
Contraseña Varchar (20) not null,
Primary key (IdCliente));

Create table Personal (

IdPersonal int not null,
Nombre Varchar(40) not null,
ApellidoPaterno Varchar(40) not null,
ApellidoMaterno Varchar(40) not null,
Cargo Varchar not null,
Correo Varchar(40) not null,
Telefono int not null,
Direccion Varchar(40) not null,
Primary key (IdPersonal));


Create table Inventario (

IdMateriaPrima int not null,
Nombre Varchar(40) not null,
Descripcion Varchar(40) not null,
Caducidad date,
Cantidad float not null,
Imagen Varchar(255) not null, --Guarda la ruta de la imagen
Primary key (IdMateriaPrima));

Create table Sucursal (

IdSucursal int not null,
Nombre Varchar (40) not null,
CalleNumero Varchar (40) not null,
Ciudad Varchar (40) not null,
Estado Varchar (40) not null,
Telefono int not null,
Primary key (IdSucursal));

Create table Promociones (

IdPromocion int not null,
Nombre Varchar(40) not null,
Restricciones Varchar(40) not null,
Imagen Varchar(255) not null, --Guarda la ruta de la imagen
DiasValidos Varchar(40) not null,
FechaIntervalo date,
Descripcion Varchar(40) not null,
IdSucursal int not null,
Primary key (IdPromocion),
CONSTRAINT IdSucursal
Foreign key (IdSucursal)
References Sucursal (IdSucursal)
On DELETE CASCADE
ON UPDATE CASCADE);


Create table Alimento (

IdAlimento int not null,
Nombre Varchar(40) not null,
Descripcion Varchar (40) not null,
Precio float not null,
Imagen Varchar (255),
IdMateriaPrima int not null,
Primary key (IdAlimento),
CONSTRAINT IdMateriaPrima
Foreign key (IdMateriaPrima)
References Inventario (IdMateriaPrima)
On DELETE CASCADE
ON UPDATE CASCADE);

Create table Ventas (

NumVenta int not null,
Costo float not null,
NombreCliente Varchar(40) not null,
Correo Varchar (40) not null,
IdPersonal int not null,
IdAlimento int not null,
IdPromocion int not null,
IdCliente int not null,
Primary key (NumVenta),
CONSTRAINT IdPersonal
Foreign key (IdPersonal)
References Personal (IdPersonal)
On DELETE CASCADE
ON UPDATE CASCADE);

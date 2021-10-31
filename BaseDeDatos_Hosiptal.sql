Create database Hospital;
use Hospital;

create table Genero(
Id_Sexo int primary key identity(1,1) NOT NULL,
Sexo nvarchar(9) NOT NULL
);

insert into Genero (Sexo)values('Masculino');
insert into Genero (Sexo)values('Femenino');

----------------------------------------------------------------

create table DatosPaciente(
IdDatosPaciente int primary key identity(1,1) NOT NULL,
Domiciolio nvarchar(80) NOT NULL,
Municipio nvarchar(50) NOT NULL,
CodPostal nvarchar(50) NOT NULL
);

insert into DatosPaciente (Domiciolio, Municipio, CodPostal) values('Barrio el centro', 'Ojos de Agua','2345');
insert into DatosPaciente (Domiciolio, Municipio, CodPostal) values('Barrio las Flores', 'Ojos de Agua','2345');
insert into DatosPaciente (Domiciolio, Municipio, CodPostal) values('Barrio el Salitre', 'Ojos de Agua','2345');
insert into DatosPaciente (Domiciolio, Municipio, CodPostal) values('Barrio el Calvario', 'Ojos de Agua','2345');
insert into DatosPaciente (Domiciolio, Municipio, CodPostal) values('Barrio el centro', 'Chalatenango','578766');
insert into DatosPaciente (Domiciolio, Municipio, CodPostal) values('El Portillo', 'La Laguna','87634');
insert into DatosPaciente (Domiciolio, Municipio, CodPostal) values('Las Mesas', 'Chalatenango','578766');
insert into DatosPaciente (Domiciolio, Municipio, CodPostal) values('El Sitio', 'Ojos de Agua','2345');
insert into DatosPaciente (Domiciolio, Municipio, CodPostal) values('Barrio el Tule', 'Las Mercerdes','0977');
insert into DatosPaciente (Domiciolio, Municipio, CodPostal) values('Barrio San José', 'Agua Caliente','4672');

---------------------------------------------------------------------------------------------------------------------
create table Telefono(
Id_Telefono int primary key identity(1,1) NOT NULL,
Area nvarchar(5),
N_Telefono Nvarchar(9) NOT NULL
);

insert into Telefono (Area, N_Telefono) values('503','72422374');
insert into Telefono (Area, N_Telefono) values('503','79551515');
insert into Telefono (Area, N_Telefono) values('503','23327014');
insert into Telefono (Area, N_Telefono) values('503','73422374');
insert into Telefono (Area, N_Telefono) values('503','49702345');
insert into Telefono (Area, N_Telefono) values('503','54678923');
insert into Telefono (Area, N_Telefono) values('503','23415678');
insert into Telefono (Area, N_Telefono) values('503','97403745');
insert into Telefono (Area, N_Telefono) values('503','03658542');
insert into Telefono (Area, N_Telefono) values('503','75648975');
insert into Telefono (Area, N_Telefono) values('503','23548561');


-----------------------------------------------------------------------

create table Pacientes(
Numero_Historico_Clinico int primary key identity(1,1) NOT NULL,
Nombre nvarchar(50) NOT NULL,
Apellidos nvarchar(50) NOT NULL,
ISSS nvarchar(50) unique NULL,
IdDatosPaciente int foreign key (IdDatosPaciente) references DatosPaciente(IdDatosPaciente) NOT NULL,
Id_Sexo int foreign key(Id_Sexo) references Genero(Id_Sexo),
Id_Telefono int foreign key (Id_Telefono) references Telefono(Id_Telefono) NOT NULL,
Observaciones nvarchar(200) NULL
);

insert into Pacientes(Nombre, Apellidos, ISSS, IdDatosPaciente, Id_Sexo, Id_Telefono, Observaciones) --No
values('Marcos Alexi','Vides Lopez','876543',1,1,1,'Sin observaciones');
insert into Pacientes(Nombre, Apellidos, ISSS, IdDatosPaciente, Id_Sexo, Id_Telefono, Observaciones) 
values('Blanca Leticia','Vides Lopez','98463',2,2,2,'Tiene sinositis');
insert into Pacientes(Nombre, Apellidos, ISSS, IdDatosPaciente, Id_Sexo, Id_Telefono, Observaciones) 
values('Maria Luz','Lopez Lopez','5467389',3,2,3,'Sin observaciones');
insert into Pacientes(Nombre, Apellidos, ISSS, IdDatosPaciente, Id_Sexo, Id_Telefono, Observaciones) 
values('Sara del Carmen','Navrrete Chinchilla','97247342',4,2,4,'Sin observaciones');
insert into Pacientes(Nombre, Apellidos, ISSS, IdDatosPaciente, Id_Sexo, Id_Telefono, Observaciones) 
values('Miguel Angel','Navrrete Chinchilla','87653',5,1,5,'Sin observaciones');
insert into Pacientes(Nombre, Apellidos, ISSS, IdDatosPaciente, Id_Sexo, Id_Telefono, Observaciones) 
values('Nestor Alexis','Zamora Orellana','222235',6,1,6,'Sin observaciones');
insert into Pacientes(Nombre, Apellidos, ISSS, IdDatosPaciente, Id_Sexo, Id_Telefono, Observaciones) 
values('Daniel Alexander','Tejada Chacon','999756',7,1,7,'Sin observaciones');
insert into Pacientes(Nombre, Apellidos, ISSS, IdDatosPaciente, Id_Sexo, Id_Telefono, Observaciones) 
values('Keni yesenia','Menjivar Lopez','55674',8,2,8,'Sin observaciones');
insert into Pacientes(Nombre, Apellidos, ISSS, IdDatosPaciente, Id_Sexo, Id_Telefono, Observaciones) 
values('Nixon Leonides','Landaverde Suarez','887764',9,1,9,'Sin observaciones');
insert into Pacientes(Nombre, Apellidos, ISSS, IdDatosPaciente, Id_Sexo, Id_Telefono, Observaciones) 
values('Yesi Nohemi','Calderon Chinchilla','886432',10,2,10,'Sin observaciones');

Select*from Pacientes;
----------------------------------------------------------------------------------------------------------
create table Especialidad(
Id_Especialidad int primary key identity (1,1) NOT NULL,
Especialidad nvarchar(100)
);

insert into Especialidad(Especialidad) values('Odontologo');
insert into Especialidad(Especialidad) values('Medico general');
insert into Especialidad(Especialidad) values('Otorrinolaringolo');
insert into Especialidad(Especialidad) values('Nutricionitsa');
insert into Especialidad(Especialidad) values('Cirujano');


-----------------------------------------------------------------------------------------------------------

create table Cargo(
Id_Cargo int primary key identity (1,1) NOT NULL,
Cargo nvarchar(100)
);

insert into Cargo(Cargo) values('Director');
insert into Cargo(Cargo) values('Supervisor');
insert into Cargo(Cargo) values('Consultas diarias');

-------------------------------------------------------------------------------------------------------------

create table Medico(
Codigo_Medico int primary key identity (1,1) NOT NULL,
Nombre nvarchar(50) NOT NULL,
Apellidos nvarchar(50) NOT NULL,
Id_Especialidad int foreign key (Id_Especialidad) references Especialidad(Id_Especialidad) NOT NULL,
Num_Colegiado int NOT NULL,
Id_Cargo int foreign key (Id_Cargo) references Cargo(Id_Cargo) NOT NULL,
Observaciones nvarchar(200)
);

insert into Medico(Nombre, Apellidos, Id_Especialidad, Num_Colegiado, Id_Cargo, Observaciones) 
values('Sigmund','Freud',5,34,1,'');
insert into Medico(Nombre, Apellidos, Id_Especialidad, Num_Colegiado, Id_Cargo, Observaciones) 
values('Salomé','Estupidian',1,456,2,'');
insert into Medico(Nombre, Apellidos, Id_Especialidad, Num_Colegiado, Id_Cargo, Observaciones) 
values('Domingo','Navarrte',2,36543,3,'');
insert into Medico(Nombre, Apellidos, Id_Especialidad, Num_Colegiado, Id_Cargo, Observaciones) 
values('Sir Joseph','Lister',3,251,3,'');
insert into Medico(Nombre, Apellidos, Id_Especialidad, Num_Colegiado, Id_Cargo, Observaciones) 
values('Sara','Chinchilla',4,4676,3,'');

-------------------------------------------------------------------------------------

create table Ubicacion_Paciente(
Id_Ubicacion_Paciente int primary key identity (1,1) NOT NULL,
NumPlanta int NOT NULL,
NumCama nvarchar(10),
);

insert into Ubicacion_Paciente(NumPlanta, NumCama) values(1,'A1');
insert into Ubicacion_Paciente(NumPlanta, NumCama) values(2,'B1');
insert into Ubicacion_Paciente(NumPlanta, NumCama) values(3,'C1');
insert into Ubicacion_Paciente(NumPlanta, NumCama) values(1,'A2');
insert into Ubicacion_Paciente(NumPlanta, NumCama) values(2,'B1');
insert into Ubicacion_Paciente(NumPlanta, NumCama) values(3,'C1');
insert into Ubicacion_Paciente(NumPlanta, NumCama) values(1,'A3');
insert into Ubicacion_Paciente(NumPlanta, NumCama) values(2,'B1');
insert into Ubicacion_Paciente(NumPlanta, NumCama) values(3,'C1');
insert into Ubicacion_Paciente(NumPlanta, NumCama) values(1,'A4');



-------------------------------------------------------------------------------------

Create table Ingresos(
NumeroIngreso int primary key identity (1,1) NOT NULL,
Numero_Historico_Clinico int foreign key (Numero_Historico_Clinico) references Pacientes(Numero_Historico_Clinico) NOT NULL,
FechaIIngreso nvarchar(10) NOT NULL,
Id_Ubicacion_Paciente int foreign key (Id_Ubicacion_Paciente) references Ubicacion_Paciente(Id_Ubicacion_Paciente),
Codigo_Medico int foreign key (Codigo_Medico) references Medico(Codigo_Medico) NOT NULL,
Observaciones Nvarchar(200)
);


insert into Ingresos(Numero_Historico_Clinico, FechaIIngreso, Id_Ubicacion_Paciente, Codigo_Medico, Observaciones) 
values(1,'2021-10-12',1,1,'');
insert into Ingresos(Numero_Historico_Clinico, FechaIIngreso, Id_Ubicacion_Paciente, Codigo_Medico, Observaciones) 
values(2,'2021-10-12',2,2,'');
insert into Ingresos(Numero_Historico_Clinico, FechaIIngreso, Id_Ubicacion_Paciente, Codigo_Medico, Observaciones) 
values(3,'2021-10-12',3,3,'');
insert into Ingresos(Numero_Historico_Clinico, FechaIIngreso, Id_Ubicacion_Paciente, Codigo_Medico, Observaciones) 
values(4,'2021-10-12',4,4,'');
insert into Ingresos(Numero_Historico_Clinico, FechaIIngreso, Id_Ubicacion_Paciente, Codigo_Medico, Observaciones) 
values(5,'2021-10-12',5,5,'');
insert into Ingresos(Numero_Historico_Clinico, FechaIIngreso, Id_Ubicacion_Paciente, Codigo_Medico, Observaciones) 
values(6,'2021-10-12',6,1,'');
insert into Ingresos(Numero_Historico_Clinico, FechaIIngreso, Id_Ubicacion_Paciente, Codigo_Medico, Observaciones) 
values(7,'2021-10-12',7,2,'');
insert into Ingresos(Numero_Historico_Clinico, FechaIIngreso, Id_Ubicacion_Paciente, Codigo_Medico, Observaciones) 
values(8,'2021-10-12',8,3,'');
insert into Ingresos(Numero_Historico_Clinico, FechaIIngreso, Id_Ubicacion_Paciente, Codigo_Medico, Observaciones) 
values(9,'2021-10-12',9,4,'');
insert into Ingresos(Numero_Historico_Clinico, FechaIIngreso, Id_Ubicacion_Paciente, Codigo_Medico, Observaciones) 
values(10,'2021-10-12',10,5,'');
insert into Ingresos(Numero_Historico_Clinico, FechaIIngreso, Id_Ubicacion_Paciente, Codigo_Medico, Observaciones) 
values(1,'2021-10-12',1,1,'');
insert into Ingresos(Numero_Historico_Clinico, FechaIIngreso, Id_Ubicacion_Paciente, Codigo_Medico, Observaciones) 
values(2,'2021-10-12',2,2,'');
insert into Ingresos(Numero_Historico_Clinico, FechaIIngreso, Id_Ubicacion_Paciente, Codigo_Medico, Observaciones) 
values(3,'2021-10-12',3,3,'');
insert into Ingresos(Numero_Historico_Clinico, FechaIIngreso, Id_Ubicacion_Paciente, Codigo_Medico, Observaciones) 
values(4,'2021-10-12',4,4,'');
insert into Ingresos(Numero_Historico_Clinico, FechaIIngreso, Id_Ubicacion_Paciente, Codigo_Medico, Observaciones) 
values(5,'2021-10-12',5,5,'');
insert into Ingresos(Numero_Historico_Clinico, FechaIIngreso, Id_Ubicacion_Paciente, Codigo_Medico, Observaciones) 
values(6,'2021-10-12',6,1,'');
insert into Ingresos(Numero_Historico_Clinico, FechaIIngreso, Id_Ubicacion_Paciente, Codigo_Medico, Observaciones) 
values(7,'2021-10-12',7,2,'');

select*from Ingresos;
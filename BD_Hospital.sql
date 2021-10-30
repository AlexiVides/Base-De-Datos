Create database HospitalBD;
use HospitalBD;

create table Genero(
Id_Sexo int primary key identity(1,1) NOT NULL,
Sexo nvarchar(9) NOT NULL
);

----------------------------------------------------------------

create table DatosPaciente(
IdDatosPaciente int primary key identity(1,1) NOT NULL,
Domiciolio nvarchar(80) NOT NULL,
Municipio nvarchar(50) NOT NULL,
CodPostal nvarchar(50) NOT NULL
);


------------------------------------------------------------------
create table Telefono(
Id_Telefono int primary key identity(1,1) NOT NULL,
Area nvarchar(5),
N_Telefono Nvarchar(9) NOT NULL
);

-------------------------------------

create table Pacientes(
Numero_Historico_Clinico int primary key identity(1,1) NOT NULL,
ISSS nvarchar(50) NULL,
Apellidos nvarchar(50) NOT NULL,
IdDatosPaciente int foreign key (IdDatosPaciente) references DatosPaciente(IdDatosPaciente) NOT NULL,
Id_Sexo int foreign key(Id_Sexo) references Genero(Id_Sexo),
Id_Telefono int foreign key (Id_Telefono) references Telefono(Id_Telefono) NOT NULL,
Observaciones nvarchar(200) NULL
);
----------------------------------------------------------------------------------------------------------
create table Especialidad(
Id_Especialidad int primary key identity (1,1) NOT NULL,
Especialidad nvarchar(100)
);

create table Cargo(
Id_Cargo int primary key identity (1,1) NOT NULL,
Cargo nvarchar(100)
);

create table Medico(
Codigo_Medico int primary key identity (1,1) NOT NULL,
Nombre nvarchar(50) NOT NULL,
Apellidos nvarchar(50) NOT NULL,
Id_Especialidad int foreign key (Id_Especialidad) references Especialidad(Id_Especialidad) NOT NULL,
Num_Colegiado int NOT NULL,
Id_Cargo int foreign key (Id_Cargo) references Cargo(Id_Cargo) NOT NULL,
Observaciones nvarchar(200)
);
-------------------------------------------------------------------------------------

create table Ubicacion_Paciente(
Id_Ubicacion_Paciente int primary key identity (1,1) NOT NULL,
NumPlanta int NOT NULL,
NumCama nvarchar(10),
);

Create table Ingresos(
NumeroIngreso int primary key identity (1,1) NOT NULL,
Numero_Historico_Clinico int foreign key (Numero_Historico_Clinico) references Pacientes(Numero_Historico_Clinico) NOT NULL,
FechaIIngreso date NOT NULL,
Id_Ubicacion_Paciente int foreign key (Id_Ubicacion_Paciente) references Ubicacion_Paciente(Id_Ubicacion_Paciente),
Codigo_Medico int foreign key (Codigo_Medico) references Medico(Codigo_Medico) NOT NULL,
Observaciones Nvarchar(200)
);
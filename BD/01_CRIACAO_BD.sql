CREATE DATABASE Senatur_Manha;
GO

USE Senatur_Manha;
GO

CREATE TABLE Cidades (
	IdCidade INT PRIMARY KEY IDENTITY
	,NomeCidade VARCHAR (50) NOT NULL
); 
GO

CREATE TABLE Pacotes (
	IdPacote    INT PRIMARY KEY IDENTITY 
	,NomePacote VARCHAR (255) NOT NULL
	,Descricao  TEXT NOT NULL
	,DataIda    DATE NOT NULL
	,DataVolta  DATE NOT NULL
	,Valor      DECIMAL(18, 2) NOT NULL
	,Ativo      BIT DEFAULT (1) NOT NULL
	,IdCidade   INT FOREIGN KEY REFERENCES Cidades (IdCidade)
);
GO

CREATE TABLE TiposUsuario (
	IdTipoUsuario INT PRIMARY KEY IDENTITY  
	,Titulo VARCHAR (255) NOT NULL
);
GO

CREATE TABLE Usuarios (
	IdUsuario INT PRIMARY KEY IDENTITY
	,Email VARCHAR (50) NOT NULL
	,Senha VARCHAR (50) NOT NULL
	,IdTipoUsuario INT FOREIGN KEY REFERENCES TiposUsuario (IdTipoUsuario)
);

GO

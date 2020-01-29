CREATE DATABASE Musicas_Tarde;

USE Musicas_Tarde;

CREATE TABLE EstilosMusicais (
	IdEstilos INT PRIMARY KEY IDENTITY,
	Titulo	VARCHAR (200) NOT NULL
);

CREATE TABLE Artistas (
	IdArtistas		INT PRIMARY KEY IDENTITY,
	NomeArtistas	VARCHAR (200) NOT NULL,
	IdEstilos	INT FOREIGN KEY REFERENCES EstilosMusicais (IdEstilos)
);

SELECT * FROM EstilosMusicais;
SELECT * FROM Artistas;

ALTER TABLE EstilosMusicais
ADD Descricao VARCHAR (255);

ALTER TABLE EstilosMusicais
ALTER COLUMN Descricao CHAR(100);

ALTER TABLE EstilosMusicais
DROP COLUMN Descricao;




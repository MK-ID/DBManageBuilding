use master
go
------------------------------------------------------------------------------------------------------------
if exists(select name from sysdatabases where name in('DB_BuildingManage'))
	drop database DB_BuildingManage
go
------------------------------------------------------------------------------------------------------------
create database DB_BuildingManage
go
------------------------------------------------------------------------------------------------------------
use DB_BuildingManage
go

if OBJECT_ID('TPersons','U') is not null
	drop table  TPersons
go 
create table TPersons
(
	TPersonsID UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,
	LastName VARCHAR(255) not null,
	FirstName VARCHAR (255) not null,
	BirthDay DATE not null,
	
)  
go

if OBJECT_ID('TDocument','U') is not null
	drop table  TDocument
go 
create table TDocument
(
	TDocument UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,
	NameDocument VARCHAR(55) not null,
	DescriptionDocument VARCHAR(100) not null,
	FOREIGN KEY (TPersonsID) REFERENCES TPersons
	
)  
go
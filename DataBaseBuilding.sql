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

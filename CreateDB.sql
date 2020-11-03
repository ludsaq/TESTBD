USE master 
go
create database SuiteForGame
on
(
    NAME = SuiteForGame,  
    FILENAME = 'E:\DBSuiteForGame\SuiteForGame.mdf'
)
LOG ON  
(   
    NAME = SuiteForGame_log,  
    FILENAME = 'E:\DBSuiteForGame\SuiteForGame.ldf'
) 
go

USE SuiteForGame 
go
create table Game
(
	Name_Game varchar(500) PRIMARY KEY not null,
	Name_Studio varchar(500) not null,
	Platform varchar(500) not null,
	Date_Realiz date not null
)

create table Users
(
	Login varchar(500) PRIMARY KEY not null,
	First_Name varchar(500) not null,
	Last_Name varchar(500)
)

create table Estimation
(
	Name_Game varchar(500) not null,
	Login varchar(500) not null,
	Estimate int not null,
	CONSTRAINT PK_Name_Game FOREIGN KEY (Name_Game)
		 REFERENCES Game (Name_Game),
	CONSTRAINT FK_Login FOREIGN KEY (Login)
  		 REFERENCES Users ([Login]),
	check(Estimate <= 10)
)
go
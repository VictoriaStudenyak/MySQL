CREATE DATABASE HotelsDB;
USE HotelsDB;

CREATE TABLE Cities
(
cityID int primary key not null auto_increment,
cityName varchar(20)
);

CREATE TABLE HOTELS
(
hotelID  int primary key not null auto_increment,
hotelName varchar(20),
starsCounts int not null,
creationDate date,
cityId int,
foreign key (cityId) references Cities (cityID)
);

CREATE TABLE Rooms
(
roomID int primary key not null auto_increment,
comfortLevel varchar(20),
hotelID int,
foreign key (hotelID) references Hotels(hotelID)
);

CREATE TABLE Clients
(
clientID int primary key not null auto_increment,
clientName varchar(50),
clientNumber long
);

CREATE TABLE Orders
(
orderID int primary key not null auto_increment,
clientID int,
roomId int,
foreign key (clientID) references Clients(clientID),
foreign key (roomId) references Rooms(roomID)
);
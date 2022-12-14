--CREATE DATABASE  DrawingApp 
use DrawingApp
---------------Создание БД-------------------------

CREATE TABLE UserType (
	userType_id int IDENTITY(1,1),
	userType_name varchar(255),
	PRIMARY KEY(userType_id)
);
CREATE TABLE Level (
	level_id int IDENTITY(1,1),
	level_name varchar(255),
	PRIMARY KEY(level_id)
);
CREATE TABLE Status (
	status_id int IDENTITY(1,1),
	status_name varchar(255),
	PRIMARY KEY(status_id)
);
CREATE TABLE FileType (
	fileType_id int IDENTITY(1,1),
	fileType_name varchar(255),
	PRIMARY KEY(fileType_id)
);

CREATE TABLE Users (
	Users_id int IDENTITY(1,1),
	login varchar(255) NOT NULL,
	password varchar(255) NOT NULL,
	UserName varchar(255) NOT NULL,
	userType_id int FOREIGN KEY REFERENCES UserType(userType_id),
	level_id int FOREIGN KEY REFERENCES Level(level_id),
	PRIMARY KEY(Users_id)
);

CREATE TABLE Picture (
	picture_id int IDENTITY(1,1),
	title varchar(255) NOT NULL,
	date_create date NOT NULL,
	fileType_id int FOREIGN KEY REFERENCES FileType(fileType_id),
	status_id int FOREIGN KEY REFERENCES Status(status_id),
	PRIMARY KEY(picture_id)
);

CREATE TABLE UserJobLog (
	log_id int IDENTITY(1,1),	
	picture_id int FOREIGN KEY REFERENCES Picture(picture_id),
	Users_id int FOREIGN KEY REFERENCES Users(Users_id),
	PRIMARY KEY(picture_id)
);


INSERT INTO UserType(userType_name) values('Обычный пользователь');
INSERT INTO UserType(userType_name) values('Преподователь');

INSERT INTO Level(level_name) values('Новичок');
INSERT INTO Level(level_name) values('Средний уровень');
INSERT INTO Level(level_name) values('Мастер');
INSERT INTO Level(level_name) values('Проффесионал');

INSERT INTO Status(status_name) values('Завершено');
INSERT INTO Status(status_name) values('Заброшено');
INSERT INTO Status(status_name) values('В процессе');

INSERT INTO FileType(fileType_name) values('PNG');
INSERT INTO FileType(fileType_name) values('JPG');
INSERT INTO FileType(fileType_name) values('JPEG');
INSERT INTO FileType(fileType_name) values('ICO');
INSERT INTO FileType(fileType_name) values('SVG');

INSERT INTO Users(login,password,UserName,userType_id,level_id) values('89001981222','93764862','Tartaglia',1,1);
INSERT INTO Users(login,password,UserName,userType_id,level_id) values('89999999999','7777777','Kli',1,3);
INSERT INTO Users(login,password,UserName,userType_id,level_id) values('87652882814','parol','Keya',1,4);
INSERT INTO Users(login,password,UserName,userType_id,level_id) values('84638254878','d8bj22843','Jin',2,4);
INSERT INTO Users(login,password,UserName,userType_id,level_id) values('84628657636','8572834','XiAo',1,4);
INSERT INTO Users(login,password,UserName,userType_id,level_id) values('64732728467','Sayu_2010','Sayu',1,2);
INSERT INTO Users(login,password,UserName,userType_id,level_id) values('89090909090','547289167IMAGOD','Tartaglia',1,2);
INSERT INTO Users(login,password,UserName,userType_id,level_id) values('89087365173','Kamisato','Ayaka',2,4);

INSERT INTO Picture(title,date_create,fileType_id,status_id) values('kjsdhf','2022-12-14',1,1)
INSERT INTO Picture(title,date_create,fileType_id,status_id) values('MyLife','2022-12-14',1,1)
INSERT INTO Picture(title,date_create,fileType_id,status_id) values('Flor','2022-10-14',2,1)
INSERT INTO Picture(title,date_create,fileType_id,status_id) values('day','2004-08-30',2,2)
INSERT INTO Picture(title,date_create,fileType_id,status_id) values('cats','2022-10-14',3,2)
INSERT INTO Picture(title,date_create,fileType_id,status_id) values('dog','2022-11-14',3,2)
INSERT INTO Picture(title,date_create,fileType_id,status_id) values('kitsune','2022-10-14',4,3)
INSERT INTO Picture(title,date_create,fileType_id,status_id) values('Raiden','2022-12-14',4,1)
INSERT INTO Picture(title,date_create,fileType_id,status_id) values('YaeMiko','2022-11-14',5,3)
INSERT INTO Picture(title,date_create,fileType_id,status_id) values('Hamster','2022-12-14',5,3)

INSERT INTO UserJobLog(picture_id,Users_id) values(2,1)
INSERT INTO UserJobLog(picture_id,Users_id) values(3,2)
INSERT INTO UserJobLog(picture_id,Users_id) values(4,3)
INSERT INTO UserJobLog(picture_id,Users_id) values(5,4)
INSERT INTO UserJobLog(picture_id,Users_id) values(6,5)
INSERT INTO UserJobLog(picture_id,Users_id) values(7,6)
INSERT INTO UserJobLog(picture_id,Users_id) values(8,7)
INSERT INTO UserJobLog(picture_id,Users_id) values(9,8)
INSERT INTO UserJobLog(picture_id,Users_id) values(10,3)
INSERT INTO UserJobLog(picture_id,Users_id) values(11,6)

UPDATE Level SET level_name = 'Новичок' 
WHERE level_name = 'Новичек';

DELETE Users WHERE UserName = 'XiAo';

-------------------------------------------------



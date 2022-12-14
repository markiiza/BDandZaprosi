use DrawingApp

--Запросы--

--1 Вывести список всех пользователей
select * from Users
--2 Вывести список работ отсортированных по возрастанию 
select * from Picture order by title asc
--3 Вывести список работ отсортированных по убыванию 
select * from Picture order by title desc
--4 Вывести список работ и их авторов
select Users.UserName, Picture.title from UserJobLog
join Users on UserJobLog.Users_id=Users.Users_id
join Picture on Picture.picture_id=UserJobLog.picture_id

--5 Вывести список работ и их авторов
select Users.UserName, Picture.title from UserJobLog
join Users on UserJobLog.Users_id=Users.Users_id
join Picture on Picture.picture_id=UserJobLog.picture_id

--6 Вывести уровень всех пользователей
select UserName,Level.level_name from Users
join Level on Level.level_id=Users.level_id

--7 Вывести всех проффесионалов
select UserName,Level.level_name from Users
join Level on Level.level_id=Users.level_id
where level_name='Проффесионал'
--8 Вывести всех мастеров
select UserName,Level.level_name from Users
join Level on Level.level_id=Users.level_id
where level_name='Мастер'

--9 Вывести всех учителей
select UserName, UserType.userType_name from Users
join UserType on UserType.userType_id=Users.userType_id
where UserType.userType_name='Преподователь'

--10 Вывести всех обычных пользователей
select UserName, UserType.userType_name from Users
join UserType on UserType.userType_id=Users.userType_id
where UserType.userType_name='Обычный пользователь'

--11 Вывести всех работы с типом PNG
select Picture.title, FileType.fileType_name from Picture
join FileType on Picture.fileType_id=FileType.fileType_id
where FileType.fileType_name='PNG'

--12 Вывести всех работы с типом JPEG
select Picture.title, FileType.fileType_name from Picture
join FileType on Picture.fileType_id=FileType.fileType_id
where FileType.fileType_name='JPEG'

--13 Вывести всех работы с типом ICO
select Picture.title, FileType.fileType_name from Picture
join FileType on Picture.fileType_id=FileType.fileType_id
where FileType.fileType_name='ICO'

--14 Вывести все работы с типом и отсортировоных по названию работы 
select Picture.title, FileType.fileType_name from Picture
join FileType on Picture.fileType_id=FileType.fileType_id
order by Picture.title ASC

--15 Вывести все работы Keya
select Users.UserName, Picture.title from UserJobLog
join Users on UserJobLog.Users_id=Users.Users_id
join Picture on Picture.picture_id=UserJobLog.picture_id
where Users.UserName='Keya'

--16 Вывести все работы Kli
select Users.UserName, Picture.title from UserJobLog
join Users on UserJobLog.Users_id=Users.Users_id
join Picture on Picture.picture_id=UserJobLog.picture_id
where Users.UserName='Kli'

--17 Вывести все завершенные работы
select Picture.title, Status.status_name from Picture
join Status on Status.status_id=Picture.status_id
where Status.status_name='Завершено'

--18 Вывести все работы которые находятся в процессе
select Picture.title, Status.status_name from Picture
join Status on Status.status_id=Picture.status_id
where Status.status_name='В процессе'

--19 Вывести все заброшенные работы
select Picture.title, Status.status_name from Picture
join Status on Status.status_id=Picture.status_id
where Status.status_name='Заброшено'



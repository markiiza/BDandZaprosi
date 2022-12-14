use DrawingApp

--�������--

--1 ������� ������ ���� �������������
select * from Users
--2 ������� ������ ����� ��������������� �� ����������� 
select * from Picture order by title asc
--3 ������� ������ ����� ��������������� �� �������� 
select * from Picture order by title desc
--4 ������� ������ ����� � �� �������
select Users.UserName, Picture.title from UserJobLog
join Users on UserJobLog.Users_id=Users.Users_id
join Picture on Picture.picture_id=UserJobLog.picture_id

--5 ������� ������ ����� � �� �������
select Users.UserName, Picture.title from UserJobLog
join Users on UserJobLog.Users_id=Users.Users_id
join Picture on Picture.picture_id=UserJobLog.picture_id

--6 ������� ������� ���� �������������
select UserName,Level.level_name from Users
join Level on Level.level_id=Users.level_id

--7 ������� ���� ��������������
select UserName,Level.level_name from Users
join Level on Level.level_id=Users.level_id
where level_name='������������'
--8 ������� ���� ��������
select UserName,Level.level_name from Users
join Level on Level.level_id=Users.level_id
where level_name='������'

--9 ������� ���� ��������
select UserName, UserType.userType_name from Users
join UserType on UserType.userType_id=Users.userType_id
where UserType.userType_name='�������������'

--10 ������� ���� ������� �������������
select UserName, UserType.userType_name from Users
join UserType on UserType.userType_id=Users.userType_id
where UserType.userType_name='������� ������������'

--11 ������� ���� ������ � ����� PNG
select Picture.title, FileType.fileType_name from Picture
join FileType on Picture.fileType_id=FileType.fileType_id
where FileType.fileType_name='PNG'

--12 ������� ���� ������ � ����� JPEG
select Picture.title, FileType.fileType_name from Picture
join FileType on Picture.fileType_id=FileType.fileType_id
where FileType.fileType_name='JPEG'

--13 ������� ���� ������ � ����� ICO
select Picture.title, FileType.fileType_name from Picture
join FileType on Picture.fileType_id=FileType.fileType_id
where FileType.fileType_name='ICO'

--14 ������� ��� ������ � ����� � �������������� �� �������� ������ 
select Picture.title, FileType.fileType_name from Picture
join FileType on Picture.fileType_id=FileType.fileType_id
order by Picture.title ASC

--15 ������� ��� ������ Keya
select Users.UserName, Picture.title from UserJobLog
join Users on UserJobLog.Users_id=Users.Users_id
join Picture on Picture.picture_id=UserJobLog.picture_id
where Users.UserName='Keya'

--16 ������� ��� ������ Kli
select Users.UserName, Picture.title from UserJobLog
join Users on UserJobLog.Users_id=Users.Users_id
join Picture on Picture.picture_id=UserJobLog.picture_id
where Users.UserName='Kli'

--17 ������� ��� ����������� ������
select Picture.title, Status.status_name from Picture
join Status on Status.status_id=Picture.status_id
where Status.status_name='���������'

--18 ������� ��� ������ ������� ��������� � ��������
select Picture.title, Status.status_name from Picture
join Status on Status.status_id=Picture.status_id
where Status.status_name='� ��������'

--19 ������� ��� ����������� ������
select Picture.title, Status.status_name from Picture
join Status on Status.status_id=Picture.status_id
where Status.status_name='���������'



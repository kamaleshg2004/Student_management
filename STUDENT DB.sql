create database StudentDB; -- for creating the database
use StudentDB;

-- creating the student table
create table Students(
StudentID int primary key auto_increment,
Name varchar(50) not null,
DOB date not null,
Email varchar(50) unique not null,
Phone varchar(15) unique not null,
DepartmentID int);

-- creating the department table
create table Department(
DepartmentID int primary key,
DepartmentName varchar(50));

-- Creating the faculty table
create table Faculty(
FacultyID int primary key,
Name varchar(50) not null,
Email varchar(50) unique not null,
Phone varchar(15) unique not null,
Age int,
Designation varchar(25),
DepartmentID int);

-- creating the course table
create table Course(
CourseID int primary key,
Course_Name varchar(50) not null,
Credits int not null,
DepartmentId int not null,
FacultyID int not null);

-- creating the Enrollment table
create table Enrollment(
EnrollmentID int primary key,
StudentID int unique not null,
CourseID int,
Year int);

-- creating the grade table
create table Grade(
StudentId int,
CourseID int,
Grade char(1));

-- Enter data into the table Students
insert into Students(Name,DOB,Email,Phone,DepartmentID)
values('Abilash','2003-10-08','abilash08@gmail.com',9876453412,1),
('Abishek','2003-11-14','abishekperk@gmail.com',6789354109,2),
('Barath','2001-05-21','barathg@gmail.com',8076553421,3),
('Rohini','2005-05-25','rohini25@gmail.com',9208553710,4),
('Kamalesh','2004-06-10','kamaleshg@gmail.com',9080672023,1),
('Shalini','2005-07-23','shalini23@gmail.com',9080799133,5),
('Vijayan','2002-10-03','vijayan10@gmail.com',8602597155,3),
('Yuvaraj','2001-03-12','yuva12@gmail.com',9878674534,2),
('Kishore','2003-12-25','kishore12@gmail.com',8459012894,1),
('Ranjitha','2004-05-31','ranjitha31@gmail.com',8701928347,1),
('Kaviya','2006-08-10','kaviya10@gmail.com',9344284044,5),
('Srimathi','2002-09-01','srimathi01@gmail.com',9860276541,2),
('Harish','2003-11-30','harish30@gmail.com',8924315678,4),
('Kirubai','2002-02-24','kirubai02@gmail.com',9102308896,7),
('Adchaya','2004-03-14','adchaya14@gmail.com',6319204389,7),
('Arun','2005-07-29','arun143@gmail.com',8096543091,6),
('Anbuselvan','2004-01-28','anbu28@gmail.com',9157465064,5),
('Santhosh','2004-04-15','santhosh04@gmail.com',9230887501,3),
('Ravi','2005-07-18','ravi07@gmail.com',6780223176,6),
('Karthi','2001-12-25','karthi12@gmail.com',8993647210,2),
('Akash','2000-09-10','akash10@gmail.com',9390768421,6),
('Archanna','2001-06-20','archanna06@gmail.com',8934625409,4),
('Gopi','2006-06-08','gopi06@gmail.com',9704558391,6),
('Vinodhini','2000-09-28','vino0928@gmail.com',8098452176,7),
('Parthipan','2001-02-18','parthi18@gmail.com',9340287654,2);

-- view table Students
select*from Students;

-- insert data into department table
insert into Department(DepartmentID,DepartmentName)
values(1,'CSE'),
(2,'MCA'),
(3,'ECE'),
(4,'CS'),
(5,'IT'),
(6,'BCA'),
(7,'AIML');

-- view department table
select*from Department;

-- insert data into faculty table
insert into Faculty(FacultyID,Name,Email,Phone,Age,Designation,DepartmentId)
values(1,'Sridhar','sridharcse@gmail.com',9807432516,40,'Professor',1),
(2,'Lalitha','lalithamca@gmail.com',8967453901,27,'Assistant Professor',2),
(3,'Naveen','naveenece@gmail.com',9420186548,35,'Associate Professor',3),
(4,'Hemalatha','hemacs@gmail.com',6914369143,30,'Assistant Professor',4),
(5,'Sasikala','sasikalait@gmail.com',7804573691,33,'Associate Professor',5),
(6,'Meena','meenacse@gmail.com',9647547892,29,'Assistant Professor',1),
(7,'Selvam','selvanbca@gmail.com',8045691259,35,'Professor',6),
(8,'Srinivasan','sriniaiml@gmail.com',7569341290,34,'Associate Professor',7),
(9,'Sri Kowsalya','kowsalyait@gmail.com',8567454460,28,'Assistant Professor',5),
(10,'Kavishree','kavishreeece@gmail.com',9806945626,31,'Assistant Professor',3);

-- to view faculty table
select*from Faculty;

-- insert data into course table
insert into Course(CourseID,Course_Name,Credits,DepartmentID,FacultyID)
values(01,'DSA',4,1,1),
(02,'OS',4,1,6),
(03,'Microprocessor',3,3,3),
(04,'Microcontroller',4,3,10),
(05,'Compiler Design',3,2,2),
(06,'Data Analytics',4,5,9),
(07,'SDLC',3,5,5),
(08,'Deep learning',4,7,8),
(09,'IOT',3,6,7),
(10,'Cyber Scurity',4,4,4),
(11,'Ethical hacking',3,4,4),
(12,'DBMS',3,1,1),
(13,'Blockchain',4,5,5),
(14,'Oops',3,2,2),
(15,'Web technology',3,5,9);

-- to view the course table
select*from Course;

-- insert data into enrollment table
insert into Enrollment
values(1,1,2,2019),
(2,2,5,2019),
(3,3,3,2020),
(4,4,11,2020),
(5,5,1,2020),
(6,6,7,2020),
(7,7,4,2020),
(8,8,14,2020),
(9,9,2,2021),
(10,10,1,2021),
(11,11,13,2021),
(12,12,5,2021),
(13,13,10,2021),
(14,14,8,2022),
(15,15,8,2022),
(16,16,9,2022),
(17,17,6,2022),
(18,18,3,2023),
(19,19,9,2023),
(20,20,5,2023),
(21,21,9,2023),
(22,22,11,2024),
(23,23,9,2024),
(24,24,8,2024),
(25,25,14,2024);

-- to view enrollment table
select* from Enrollment;

-- insert data into grades table
insert into Grade
values(1,2,'A'),
(2,5,'A'),
(3,3,'B'),
(4,11,'C'),
(5,1,'B'),
(6,7,'A'),
(7,4,'C'),
(8,14,'B'),
(9,2,'A'),
(10,1,'U'),
(11,13,'A'),
(12,5,'A'),
(13,10,'B'),
(14,8,'C'),
(15,8,'B'),
(16,9,'A'),
(17,6,'C'),
(18,3,'B'),
(19,9,'C'),
(20,5,'U'),
(21,9,'A'),
(22,11,'B'),
(23,9,'C'),
(24,8,'B'),
(25,14,'A');

-- to view grade table
select*from Grade;

-- to create view for studentdetails
create view StudentDetails as
select s.StudentID, s.Name, s.DOB, s.Email, s.Phone, d.DepartmentName 
from Students s
join Department d on s.DepartmentID = d.DepartmentID;
select*from StudentDetails;

-- create view for faculty details
create view FacultyDetails as
select f.FacultyID, f.Name, f.Email, f.Phone, f.Age, f.Designation, d.DepartmentName 
from Faculty f
join Department d on f.DepartmentID = d.DepartmentID;
select*from FacultyDetails;

create view CourseDetails as
select c.CourseID, c.Course_Name, c.Credits, d.DepartmentName, f.Name as FacultyName
from Course c
join Department d on c.DepartmentID = d.DepartmentID
join Faculty f on c.FacultyID = f.FacultyID;
select*from CourseDetails;

create view StudentEnrollment as
select e.EnrollmentID, s.Name as StudentName, c.Course_Name, e.Year
from Enrollment e
join Students s on e.StudentID = s.StudentID
join Course c on e.CourseID = c.CourseID;
select * from StudentEnrollment;

create view StudentGrades as
select g.StudentID, s.Name as StudentName, c.Course_Name, g.Grade
from Grade g
join Students s on g.StudentID = s.StudentID
join Course c on g.CourseID = c.CourseID;
select*from StudentGrades;

-- create stored procedure to add a student
delimiter //
create procedure AddStudent(
    in sName varchar(50),
    in sDOB date,
    in sEmail varchar(50),
    in sPhone varchar(15),
    in deptID int
)
begin
    insert into Students (Name, DOB, Email, Phone, DepartmentID)
    values (sName, sDOB, sEmail, sPhone, deptID);
end //
delimiter ;

-- to call the stored procedure
call AddStudent('John', '2003-10-10', 'john@gmail.com', '9876543210', 1);
select*from students;

delete from Students where StudentID = 26;

delimiter //
create procedure CountStudentsByDepartment()
begin
    select d.DepartmentName, count(s.StudentID) as TotalStudents
    from Department d
    left join Students s on d.DepartmentID = s.DepartmentID
    group by d.DepartmentID;
end //
delimiter ;
call CountStudentsByDepartment();
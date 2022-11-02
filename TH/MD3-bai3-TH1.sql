create database InputData;
use inputdata;
create table Class(
Class_ID int primary key auto_increment,
Class_Name varchar(20) not null,
StarDate date not null,
Status bit not null
);
create table Student(
Student_ID int primary key auto_increment,
Student_Name varchar(20) not null,
Address varchar(50) not null,
Phone int ,
Status bit not null,
ClassID int ,
Foreign key(ClassId) references Class(Class_ID)
);
create table Subject(
Sub_ID int primary key auto_increment,
Sub_Name varchar(20) not null,
Credit int not null,
Status bit not null
);
create table Mark(
Mark_ID int primary key auto_increment,
SubID int,
StudentID int,
Mark int not null,
ExamTimes int not null,
Foreign key(SubID) references Subject(Sub_ID),
Foreign key(StudentID) references Student(Student_ID)
);
insert into class(Class_Name,StarDate,Status)values
('A1','2022-02-4',1),
('A2','2020-06-4',1),
('A3','2021-08-4',0);
insert into student(Student_Name,Address,Phone,StatusStudent,ClassID)values
('VIỆT ANH','HẢI PHÒNG',0942595229,1,1),
('JONY TIỆP','HÀ NỘI',0987654321,0,2),
('THANH PC','NAM TỪ LIÊM',0912345678,0,3);
select * from student;
insert into subject(Sub_Name,Credit,StatusSub)values
('CF',5,1),
('LOL',3,0),
('VLR',4,1),
('GG',23,0);
select * from subject;
insert into Mark(SubID,StudentID,Mark,ExamTimes)values
(1,3,10,2),
(3,3,5,2),
(4,1,7,1),
(2,1,6,3),
(2,2,5,1)
;
select * from mark;
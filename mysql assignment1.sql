CREATE DATABASE Programs;
USE Programs;

CREATE Table Student ( RegNumber int,Name varchar(50), email varchar(50), Phone char(10), Primary Key (RegNumber));
CREATE Table Instructor ( EmpID int,Name varchar(50), email varchar(50), Phone char(10), Designation varchar(50),Primary Key (EmpID));
CREATE Table Course ( InstID int, Name varchar(50), CourseID varchar(60),ContactHours int, Primary Key (CourseID),FOREIGN KEY(InstID)REFERENCES Instructor(EmpID));
CREATE Table Take (StudentID int, CourseID varchar(60),Grade varchar(20), Primary Key (StudentID),  FOREIGN KEY (CourseID) REFERENCES Course(CourseID),FOREIGN Key(StudentID) REFERENCES Student(RegNumber));

INSERT INTO Student (RegNumber,Name, email, Phone )VALUES( 127913,"Imaad Salim","imaad@yahoo.com",7462623069);
INSERT INTO Student (RegNumber,Name, email, Phone )VALUES( 124153,"Nidhi","nidhi@yahoo.com",9781045235);
INSERT INTO Instructor (EmpID,Name, email, Phone,Designation)VALUES(54482,"Meera Namas","meerad@yahoo.com",5289358452,"Professor");
INSERT INTO Instructor (EmpID,Name, email, Phone,Designation)VALUES(22851,"Preethi Nair","preethi@yahoo.com",798923128,"Associate Professor");
INSERT INTO Course(InstID, Name, CourseID,ContactHours)values(54482,"BDA","12038926",1203);
INSERT INTO Course(InstID, Name, CourseID,ContactHours)values(22851,"BDA","12486967",1203);
INSERT INTO Take(StudentID, CourseID,Grade)values(127913,"12038926","A");
INSERT INTO Take(StudentID, CourseID,Grade)values(124153,"12486967","A");

CREATE Table NewCourse ( InstID int, Name varchar(50), CourseID varchar(60),ContactHours int, Primary Key (InstID));

INSERT INTO NewCourse ( InstID, Name , CourseID ,ContactHours)SELECT * from Course;
select * from student;
select * from instructor;
select * from newcourse;
select * from take;
select * from course;
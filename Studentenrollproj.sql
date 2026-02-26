-- Creating and Using the Database db:
Create database db;
use db;

-- Creating table student1:
Create table student1(
	StdID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Dept VARCHAR(50)
);

-- Creating table Course:
Create TABLE Course(
	Cid INT PRIMARY KEY,
    CName Varchar(50),
    Credits INT
);

-- Creating table Enrollment:
Create table Enrollment(
	StdID INT,
    Cid INT,
    Grade CHAR(2),
    PRIMARY KEY(StdID,Cid),
    FOREIGN KEY(StdID) REFERENCES Student1(StdID),
    FOREIGN KEY(Cid) REFERENCES Course(Cid)
);

-- Inserting Records into Student1 table:
INSERT INTO Student1 VALUES(1,'Ravi',20,'CSE');
INSERT INTO Student1 VALUES(2,'Anita',21,'ECE');

-- Inserting Records into Course table:
INSERT INTO Course VALUES(101,'DBMS',4);
INSERT INTO Course VALUES(102,'OS',3);

-- Inserting Records into Enrollment table:
INSERT INTO Enrollment VALUES(1,101,'A');
INSERT INTO Enrollment VALUES(2,102,'B');

-- Selecting the Tables:
SELECT * FROM STUDENT1;
SELECT * FROM Course;
SELECT * FROM Enrollment;

-- Find Students Enrolled in course DBMS:
Select s.Name 
from student1 s 
join Enrollment e on s.StdID = e.StdID 
join course c on e.Cid = c.Cid 
where CName = 'DBMS';

-- Find Students Enrolled in course OS:
Select s.Name 
from student1 s 
join Enrollment e on s.StdID = e.StdID 
join course c on e.Cid = c.Cid 
where CName = 'OS';

-- Find Students who have A grade:
Select Name 
from student1 s 
join Enrollment e on s.StdID = e.StdID 
where Grade = 'A';

-- Find Students who have B grade:
Select Name 
from student1 s 
join Enrollment e on s.StdID = e.StdID 
where Grade = 'B';

-- Find the Average of the Student's Age:
Select Round(AVG(Age),2) as Average_Age 
from Student1;


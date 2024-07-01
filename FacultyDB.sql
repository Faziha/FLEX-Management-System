
use FacultyDB;

CREATE TABLE Faculty(
	teacherID INT NOT NULL,
	userName VARCHAR(100) NOT NULL,
	userPass VARCHAR(50) NOT NULL,
	
	PRIMARY KEY(teacherID,userName,userPass),

	teacherName VARCHAR(255) NOT NULL,
	contact VARCHAR(12),
	email VARCHAR(100),
	officeNum VARCHAR(20)
)

insert into Faculty values(123,'aftabZ123','aft123','Aftab','03368851717','aftab@nu.edu.pk','C-205');
insert into Faculty values(333,'zab231','zab123','Zaheer','03005331344','zab@nu.edu.pk','C-204');
insert into Faculty values(555,'rob332','rob332','Robin','03455176014','rob@nu.edu.pk','C-203');

select * from Faculty;

CREATE TABLE Course(
	courseID VARCHAR(20) NOT NULL PRIMARY KEY,
	courseName VARCHAR(100) NOT NULL,
	creditHours INT
)


insert into Course values('MT-1002','Stats Modelling',3);
insert into Course values('CS-2002','Programming Fundamentals',3);
insert into Course values('CS-2000','Object Oriented Programming',3);

select * from Course;

CREATE TABLE teachCourse(
	courseID VARCHAR(20) NOT NULL,
	teacherID INT NOT NULL,
	section Varchar(20) not NULL,
	FOREIGN KEY(courseID) REFERENCES Course(courseID),
	
	PRIMARY KEY(courseID, teacherID, section)
)

insert into teachCourse values('CS-2002',123,'CS-D');
insert into teachCourse values('MT-1002',333,'CS-E');
insert into teachCourse values('CS-2000',555,'CS-E');
insert into teachCourse values('CS-2002',333,'CS-A');

select * from teachCourse;

-- Test Query to check Info of a teacher Teaching a specific Course
select f.* from Faculty f
join teachCourse tc on f.teacherID=tc.teacherID
join Course c on c.courseID=tc.courseID
where c.courseID like 'CS-2002';

CREATE TABLE Student(

	studentID VARCHAR(9) NOT NULL PRIMARY KEY,
	studentName VARCHAR(255) NOT NULL,
	section VARCHAR(20),
	marks int,
	grade VARCHAR(4)
)

insert into Student values('i20-0744','Sawaira Fatima','CS-D',89,'-');
insert into Student values('i20-0745','Eman Fatima','CS-D',92,'-');
insert into Student values('i20-0746','Meher Fatima','CS-D',82,'-');

select * from Student;

CREATE TABLE Evaluation(
	
	evalID INT NOT NULL,
	courseID VARCHAR(20) NOT NULL,
	evalType VARCHAR(255),
	weightage int,
	FOREIGN KEY(courseID) REFERENCES Course(courseID),
		
	PRIMARY KEY(evalID,courseID),
	CONSTRAINT checkWeightage CHECK (weightage >= 0 and weightage <=100)
) 

CREATE TABLE Attendance(
	
	courseID VARCHAR(20) NOT NULL,
	studentID VARCHAR(9) NOT NULL,
	attDate DATE NOT NULL,
	attStatus VARCHAR(10),
	
	FOREIGN KEY(courseID) REFERENCES Course(courseID),
	FOREIGN KEY(studentID) REFERENCES Student(studentID),
	
	PRIMARY KEY(courseID, studentID, attDate)
)

CREATE TABLE EnrolledInCourse(
	
	courseID VARCHAR(20) NOT NULL,
	studentID VARCHAR(9) NOT NULL,

	FOREIGN KEY(courseID) REFERENCES Course(courseID),
	FOREIGN KEY(studentID) REFERENCES Student(studentID),
	
	PRIMARY KEY(courseID, studentID)

)


CREATE TABLE CourseFeedback(
	courseID VARCHAR(20) NOT NULL,
	studentID VARCHAR(9) NOT NULL,
	feedback VARCHAR(255),
	FOREIGN KEY(courseID) REFERENCES Course(courseID),
	FOREIGN KEY(studentID) REFERENCES Student(studentID),
	
	PRIMARY KEY(courseID, studentID)

)

insert into CourseFeedback values('CS-2002','i20-0744','I liked this Course Very Much');
insert into CourseFeedback values('CS-2002','i20-0745','Very Confusing Course');
insert into CourseFeedback values('CS-2000','i20-0745','Was a fun experience');
insert into CourseFeedback values('MT-1002','i20-0746','Really Boring Subject');

-- To see the Course and Section assigned to a specific Teacher (Courses Assigned)
select tc.courseID,(select courseName from Course where courseID=tc.courseID) as 'Course Name',tc.Section from teachCourse tc
join Faculty f on f.teacherID=tc.teacherID
where f.teacherID=333;

-- To generate report of feedback for a particular Course (Feedback Report)
select cf.courseID,(Select courseName from Course where courseID=cf.courseID) as 'Course Name',cf.studentID,(Select studentname from Student where studentID=cf.studentID) as 'Student ID'
,cf.feedback from CourseFeedback cf 
where courseID='CS-2002';

-- To generate Evaluation Reports (Evaluation Report)
select * from Student;

-- To generate Count of Grades in a particular section(Grade Count Report)
select distinct grade,count(*) as 'Number' from Student
where section='CS-D'
group by grade;

UPDATE student
SET grade = 
    CASE
        WHEN marks >= 90 THEN 'A'
        WHEN marks >= 80 THEN 'B'
        WHEN marks >= 70 THEN 'C'
        WHEN marks >= 60 THEN 'D'
        ELSE 'F'
    END;
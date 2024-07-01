Create database s;
use s;


CREATE TABLE Students (
  studentID INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  contactNumber VARCHAR(15) NOT NULL,
  password VARCHAR(20) NOT NULL,
);

insert into students values(200473,'Faziha','admin123@gmail.com','033333333','admin123');

CREATE TABLE GPA(
	studentID INT FOREIGN KEY References Students(studentID),
	semester VARCHAR(30),
	cgpa NUMERIC(5),
);



insert into GPA values(200473,'spring 2022',3.2);
insert into GPA values(200473,'fall 2022',3.7);
insert into GPA values(200473,'spring 2020',3.0);
insert into GPA values(200473,'fall 2021',3.9);
insert into GPA values(200473,'spring 2021',3.4);




CREATE TABLE Attendence(
	studentID INT FOREIGN KEY References Students(studentID),
	courseID  VARCHAR(20) FOREIGN KEY References Courses(courseID),
	attendence INT,
);


insert into Attendence values (200473,'123',80);
insert into Attendence values (200473,'456',90);
insert into Attendence values (200473,'789',100);
insert into Attendence values(200473,'122',78);
insert into Attendence values (200473,'103',96);

CREATE TABLE Courses (
  courseID VARCHAR(20) PRIMARY KEY,
  courseName VARCHAR(50) NOT NULL,
  instructorName VARCHAR(50) NOT NULL,
  creditHours INT,
  semester VARCHAR(20),
);



insert into courses values('123','AI','ABC',3,'Spring 2020');
insert into courses values('456','Calculus','CDA',3,'Fall 2022');
insert into courses values('789','Software Engineering','DEF',1,'Spring 2022');
insert into courses values('122','Discrete','PQR',3,'Fall 2020');
insert into courses values('103','Numerical','XYZ',1,'Spring 2021');



CREATE TABLE Marks(
	StudentID INT FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
	courseID  VARCHAR(20) FOREIGN KEY References Courses(courseID),
	semesterID VARCHAR(20), 
	marksID INT Primary Key,
	assignmentObtMarks INT,
	assignmentTotalMarks INT,
	quizObtMarks INT,
	quizTotalMarks INT, 
	sessionalTotalMarks INT,
	sessionalObtMarks INT,
	projectTotalMarks INT,
	projectObtMarks INT,
	finalTotalMarks INT,
	finalObtMarks INT,
);


insert into Marks values(200473,'123','spring 2022',1021,10,10,10,10,15,15,10,10,40,25);
insert into Marks values(200473,'456','spring 2022',1022,8,10,10,10,15,15,10,10,40,30);
insert into Marks values(200473,'789','spring 2022',1023,9,10,10,10,15,15,10,10,40,20);
insert into Marks values(200473,'122','spring 2022',1024,7,10,10,10,15,15,10,10,40,32);
insert into Marks values(200473,'103','spring 2022',1025,10,10,10,10,15,15,10,10,40,22);

select * from Marks;

CREATE table transcript(
	StudentID INT FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
	semester VARCHAR(20),
	courseID  VARCHAR(20) FOREIGN KEY References Courses(courseID),
	chrs NUMERIC(5),
	grade VARCHAR(5),
	sgpa FLOAT(5),
);

insert into transcript values(200473,'spring 2022','123',1,'A+',3.7);
insert into transcript values(200473,'spring 2022','123',3,'B+',3.7);
insert into transcript values(200473,'spring 2022','123',1,'A',3.7);
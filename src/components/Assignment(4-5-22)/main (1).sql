CREATE TABLE students (

  PersonID int PRIMARY KEY,

  Name varchar(255) ,

  Address varchar(255)

 );



INSERT INTO students VALUES (1, 'sai','rjy');

INSERT INTO students VALUES (2, 'Sunny','chennai');

INSERT INTO students VALUES (3, 'govind','vizag');

INSERT INTO students VALUES (4, 'madhu','kkd');

INSERT INTO students VALUES (5, 'kalyan','rjy');

INSERT INTO students VALUES (6, 'suresh','vjy');



SELECT * FROM students ORDER BY Name 

SELECT * FROM students ORDER BY Name DESC

SELECT * FROM students ORDER BY Name ASC ,Address DESC

SELECT DISTINCT Name from students

SELECT COUNT(DISTINCT Name) from students

SELECT * FROM students WHERE Name='govind'

SELECT * FROM students WHERE Name='sai' AND Address='rjy'

SELECT * FROM students WHERE Name='govind' OR Address='vizag'

SELECT * FROM students WHERE NOT Address='rjy'

SELECT * FROM students WHERE Name IS NULL

UPDATE students SET Name='madhu' WHERE PersonID=4;

SELECT * FROM students

CREATE TABLE employee (EmpID int primary KEY,
                      Empname varchar(50),
                      Empdept varchar(50));
                      

INSERT INTO employee VALUES (1,"suresh","Testing");
INSERT INTO employee VALUES (2,"Ramesh","Developing");

SELECT * FROM employee


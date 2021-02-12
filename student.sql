SELECT * FROM student.user;
use student;

CREATE TABLE stu_details (
	stu_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME varchar(25),
    Middle_NAME varchar(25),
	LAST_NAME varchar(25),
	course varchar(15),
    gender varchar(20),
    phone int(10),
    address varchar(300),
    email varchar(100),
    pass varchar(100)
);

SELECT * FROM student.stu_details;

CREATE TABLE staff_details (
	stu_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME varchar(25),
	LAST_NAME varchar(25),
	department varchar(15),
    gender varchar(20),
    email varchar(100),
    pass varchar(100),
    address varchar(300),
    phone_no varchar(10)
);

SELECT * FROM student.staff_details;










INSERT INTO stu_details 
	(FIRST_NAME,Middle_name, LAST_NAME, course,gender,phone,address,email,pass,con_pass) VALUES
		('Monika', 'kumari','Arora', 'bca', 'female', 85246514,'jhs','mm@gmail.com','123','123'),
		('Niharika', '','Verma', 'b.tech', 'female', 52463258,'jhs','nn@gmail.com','1234','1234');
        
 ALTER TABLE staff_details  MODIFY phone_no varchar(50) ;
 
 ALTER TABLE staff_details  add con_pass varchar(100) ;
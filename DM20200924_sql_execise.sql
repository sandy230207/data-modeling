CREATE TABLE college (
	id int(11) NOT NULL,
	name varchar(100) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE department (
	id int(11) NOT NULL,
	name varchar(100) NOT NULL,
	cog_id int(11) NOT NULL,
	PRIMARY KEY (id),
    FOREIGN KEY (cog_id) REFERENCES college(id)
);

CREATE TABLE professor (
	id int(11) NOT NULL,
	name varchar(100) NOT NULL,
	birthday varchar(255),
	phone_number varchar(100),
	dept_id int(11) NOT NULL,
	PRIMARY KEY (id),
    FOREIGN KEY (dept_id) REFERENCES department(id)
);

CREATE TABLE course (
	id int(11) NOT NULL,
	name varchar(100) NOT NULL,
	credit int(11) NOT NULL,
	pro_id int(11) NOT NULL,
	PRIMARY KEY (id),
    FOREIGN KEY (pro_id) REFERENCES professor(id)
);

CREATE TABLE student (
	id int(11) NOT NULL,
	name varchar(100) NOT NULL,
	birthday varchar(255),
	phone_number varchar(100),
	dept_id int(11) NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (dept_id) REFERENCES department(id)
);

CREATE TABLE student_select (
	id int(11) NOT NULL,
	std_id int(11) NOT NULL,
	course_id int(11) NOT NULL,
	score int(11),
	PRIMARY KEY (id),
	FOREIGN KEY (std_id) REFERENCES student(id),
    FOREIGN KEY (course_id) REFERENCES course(id)
);


INSERT INTO college VALUES (101, 'Management');
INSERT INTO college VALUES (102, 'Technology');
INSERT INTO college VALUES (103, 'Foreign Languages');

INSERT INTO department VALUES (201, 'Information Management', 101);
INSERT INTO department VALUES (202, 'Accounting', 101);
INSERT INTO department VALUES (203, 'Business Administration', 101);
INSERT INTO department VALUES (204, 'Computer Science', 102);
INSERT INTO department VALUES (205, 'Electrical Engineering', 102);
INSERT INTO department VALUES (206, 'English', 103);
INSERT INTO department VALUES (207, 'Japanese Language', 103);
INSERT INTO department VALUES (208, 'French Language', 103);

INSERT INTO professor (id ,name, birthday, phone_number, dept_id) VALUES (301,'Sandy Ke', '1950-07-30','09123456789', 201);
INSERT INTO professor (id ,name, birthday, phone_number, dept_id) VALUES (302,'Emily Tsai', '1973-08-28', '0901234567', 201);
INSERT INTO professor (id ,name, dept_id) VALUES (303,'Peggy Wu', 201);
INSERT INTO professor (id ,name, dept_id) VALUES (304,'Meggy Chen', 202);
INSERT INTO professor (id ,name, dept_id) VALUES (305,'Eric Li', 203);
INSERT INTO professor (id ,name, dept_id) VALUES (306,'Jim Hong', 204);
INSERT INTO professor (id ,name, dept_id) VALUES (307,'Sunny Yu', 205);
INSERT INTO professor (id ,name, dept_id) VALUES (308,'Vincent Lin', 206);
INSERT INTO professor (id ,name, dept_id) VALUES (309,'Yvonne Kao', 207);
INSERT INTO professor (id ,name, dept_id) VALUES (310,'Ray Hu', 208);

INSERT INTO course VALUES (401,'Database', 3, 301);
INSERT INTO course VALUES (402,'Database', 3, 302);
INSERT INTO course VALUES (403,'Accounting', 3, 304);
INSERT INTO course VALUES (404,'Japanese Culture', 2, 309);
INSERT INTO course VALUES (405,'English', 2, 308);
INSERT INTO course VALUES (406,'Programming', 4, 306);
INSERT INTO course VALUES (407,'Programming', 4, 301);


INSERT INTO student (id ,name, birthday, phone_number, dept_id) VALUES (501,'Jason Chi', '1998-02-07','09123456789',202);
INSERT INTO student (id ,name, birthday, phone_number, dept_id) VALUES (502,'Raymond Liu', '1997-11-07', '0901234567',208);
INSERT INTO student (id ,name, dept_id) VALUES (503,'Hsin Liu',202);
INSERT INTO student (id ,name, dept_id) VALUES (504,'Ruby Yang',204);
INSERT INTO student (id ,name, dept_id) VALUES (505,'Simon Chang',201);
INSERT INTO student (id ,name, dept_id) VALUES (506,'Gary Chen',206);
INSERT INTO student (id ,name, dept_id) VALUES (507,'Harrison Peng',205);
INSERT INTO student (id ,name, dept_id) VALUES (508,'Tina Tsai',207);
INSERT INTO student (id ,name, dept_id) VALUES (509,'Linda Ho', 203);
INSERT INTO student (id ,name, birthday, dept_id)  VALUES (510,'Winney Tseng', '1998-02-19', 204);

INSERT INTO student_select VALUES (601, 501, 401, 80);
INSERT INTO student_select (id ,std_id, course_id) VALUES (602, 501, 406);
INSERT INTO student_select VALUES (603, 501, 405, 85);
INSERT INTO student_select VALUES (604, 502, 403, 77);
INSERT INTO student_select (id ,std_id, course_id) VALUES (605, 502, 402);
INSERT INTO student_select VALUES (606, 502, 401, 90);
INSERT INTO student_select (id ,std_id, course_id) VALUES (607, 503, 405);
INSERT INTO student_select (id ,std_id, course_id) VALUES (608, 503, 404);
INSERT INTO student_select VALUES (609, 503, 401, 59);
INSERT INTO student_select (id ,std_id, course_id) VALUES (610, 504, 403);
INSERT INTO student_select (id ,std_id, course_id) VALUES (611, 505, 405);
INSERT INTO student_select (id ,std_id, course_id) VALUES (612, 506, 401);
INSERT INTO student_select VALUES (613, 506, 404, 73);
INSERT INTO student_select (id ,std_id, course_id) VALUES (614, 506, 406);
INSERT INTO student_select (id ,std_id, course_id) VALUES (615, 507, 401);
INSERT INTO student_select VALUES (616, 508, 401, 86);
INSERT INTO student_select VALUES (617, 509, 401, 97);
INSERT INTO student_select VALUES (618, 510, 401, 85);

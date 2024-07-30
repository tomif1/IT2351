-------------------------------------------------------
-- Tomi Fayomi IT2351
-------------------------------------------------------

DROP DATABASE IF EXISTS assignment_08;
CREATE DATABASE assignment_08;

USE assignment_08;

create table grades	(
student_id				int				not null 	auto_increment,
name					varchar(50),
missed_classes			int,
grade					float,
missing_assignments		int,
primary key (student_id)
);

create table final_project (
student_id			int					not null		auto_increment,
grade				float,
hours_spent			float,
passed				bit					not null,
primary key (grade),
foreign key (student_id) references grades(student_id)
);

create table other_classes	(
student_id		int						not null		auto_increment,
major			varchar(50),
gpa				decimal(4,2),
credits_taken	decimal(4,2),
foreign key (student_id) references grades(student_id)
);

insert into grades	values
(1, 'Ingolf Valarie', 0, 92.5, 1),
(2, 'Alwin Eveline', 3, 91, 0),
(3, 'Anara Tomislav', 2, 84, 3),
(4, 'Hamid Amato', 5, 85, 2),
(5, 'Goran Jamin', 1, 97.3, 0),
(6, 'Kellen Leroi', 4, 72.3, 5);

insert into final_project values
(1 ,87.2, 10.5, 1),
(2 ,91.4, 14, 1),
(3 ,82.9, 10,1 ),
(4 ,77.6, 8, 1),
(5 ,95.8, 19, 1),
(6 ,0, 0, 0);

insert into other_classes values
(1,'Video Game Design',3.52, 18),
(2,'Geochemistry',3.80, 15.5),
(3,'Nematology',3.27, 16),
(4,'Complexity Economics', 3.79,15),
(5,'Nuclear Physics', 4.0, 19),
(6,'Materials Engineering', 1.53, 13.5);
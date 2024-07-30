DROP DATABASE IF EXISTS assignment_07;
CREATE DATABASE assignment_07;

USE assignment_07;

create table game (
product_id 			int					not null			auto_increment,
name 				varchar(50),
version_number 		float(20,2),
rating 				varchar(10),
rating_description 	varchar(255),
primary key(product_id)
);

create table author (
author_id 			int				not null,
name 				varchar(50),
mailing_address		varchar(250),
email_address		varchar(50),
foreign key (author_id) references game(product_id)
);

insert into game values	
	(1, "Chronicles of the Rebirth", 1.2, "T", "T for Teen"),
		(2, "Castle Excalibur", 1.53, "E", "E for Everyone"),
		(3, "Desert of Blades", 2.12, "18+", "18+ is adults only");

insert into author values	
	(1,"Arjun Estes","9469 Euclid Street Hazleton, PA 18201","l6ers2eozmf@msn.com"),
		(2,"Maisy Trevino","823 Elm Lane Mount Holly, NJ 08060","dr77ppeaq3cyo2@yahoo.com"),
        (2,"Walter David","908 Linden Ave Eden Prairie, MN 55347","4av9ntv70v4n@aol.com"),
		(3,"Imran Lloyd","8070 Depot Road Wethersfield, CT 06109","dqyf2meht2@comcast.net");
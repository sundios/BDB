#creating Database
CREATE DATABASE dbart;

#Creating murals Table 
CREATE table murals (
m_id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
title varchar(255) NOT NULL, 
imageurl varchar(255) NOT NULL,
about varchar(255) NOT NULL,
year INT(4),
a_id INT(11),
l_id INT(11),
FOREIGN KEY (a_id) REFERENCES artist(a_id),
FOREIGN KEY (l_id) REFERENCES location(l_id)
);

#Creating Location Table 
Create TABLE location(
l_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
country varchar(255)
city varchar(255) NOT NULL 
address varchar(255),
a_number int(10),
zipcode int(5)
)

#Creating Location Artist
Create TABLE artist(
a_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
name varchar(255) NOT NULL   
)


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
FOREIGN KEY a_id REFERENCES artist(a_id),
FOREIGN KEY l_id REFERENCES location(l_id),
)

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


#quering add the ids?


 select *
 from murals, location , artist
 where country LIKE '%$search%'	city LIKE '%$search%' OR 
 address LIKE '%$search%' OR a_number LIKE '%$search%' OR
 zipcode LIKE '%$search%' OR title LIKE '%$search%'	OR 
 imageurl LIKE '%$search%' OR about LIKE '%$search%' OR
 LIKE '%$search%' year



#this is the code for searching on multiple tables. (https://stackoverflow.com/questions/6574564/php-mysql-search-multiple-tables-using-a-keyword)


 "(SELECT content, title, 'msg' as type FROM messages WHERE content LIKE '%" . 
           $keyword . "%' OR title LIKE '%" . $keyword ."%') 
           UNION
           (SELECT content, title, 'topic' as type FROM topics WHERE content LIKE '%" . 
           $keyword . "%' OR title LIKE '%" . $keyword ."%') 
           UNION
           (SELECT content, title, 'comment' as type FROM comments WHERE content LIKE '%" . 
           $keyword . "%' OR title LIKE '%" . $keyword ."%')";


# ![alt text][logo]
[logo]:http://www.komahats.com/Koma_logo_bear.jpg

# Databases
# Authors
- Margaret Sant 
- Konrad Burchardt



## Table of Contents (Optional)

- [1. Tables Print out](#1tables-print-out)
- [2. Mysql queries  and Outputs](#2-mysql-queries-and-outputs)
- [3. Extras](#3extras)


## Project Queries

* Submit (i) a printout of all your tables and (ii) the MySQL log of your queries run against your database.

### 1.Tables Print out 

**Database name:** dbart2
![Timeline](http://kburchardt.com/dbcs/dbart.png)

**Table name**: Artist

#### Structure
![Timeline](http://kburchardt.com/dbcs/artists.png)
#### Values
![Timeline](http://kburchardt.com/dbcs/artist_val.png)

**Table name**: location

#### Structure
![Timeline](http://kburchardt.com/dbcs/location.png)
#### Values
![Timeline](http://kburchardt.com/dbcs/location_val.png)

**Table name**: murals

#### Structure
![Timeline](http://kburchardt.com/dbcs/murals.png)

#### Values
![Timeline](http://kburchardt.com/dbcs/murals_val.png)

### 2. Mysql Queries and outputs

#### Adding Values to our tables

* Adding Values to artist
```mysql
INSERT INTO Artist
VALUES
(name,DOB)
('Banksy');
```
* Adding Values to locations
```mysql
Insert Into location
(country,city,address,a_number)
VALUES
('USA',	'Los Angeles','Westwood Blvd','1116'),
('USA','Los Angeles','S Broadway','917'),
('USA','Los Angeles','Melrose & Orange Ave','696'),
('USA','Los Angeles','Hollywood','666'),
('USA','Los Angeles','Somewhere','666'),
('USA','Los Angeles','Somewhere','666'),
('USA','Los Angeles','Somewhere','666'),
('England','London','Somewhere','666'),
('England','London','Somewhere','666'),
('England','London','A4018','666');
('England','London','Leak St','8'),
('England','London','Chalk Farm Rd','49'),
('England','London','Anywhere','85'),
('England','London','High Rd','342'),
('England','London','Clipstone St','129');
```
* Adding values to murals
```mysql
INSERT INTO murals 
(title,imageurl,about,year,a_id,l_id)
VALUES 
('Crayon Boy','https://cdn.shopify.com/s/files/1/1003/7610/files/Banksy-child-soldier.jpg?13187111832134195628','In this piece of art there is a little boy standing up like a soldier with a submachine gun. He is surrounded by colorful flowers and butterflies. However, what shocks us the most is the color of the bullet','2011','1','1'),
('Swing Girl','https://cdn.shopify.com/s/files/1/1003/7610/files/Banksy-Swing-Girl.jpg?15240558570508503617','Located in a car park on Broadway, Downtown LA, Swing Girl is another example of Banksy making use of what was already there.','2010','1','3'),
('I’m Out Of Bed Rat','https://cdn.shopify.com/s/files/1/1003/7610/files/Banksy-Im-Out-Of-Bed-Rat.jpg?5919085270002948646','Often people will go to extraordinary lengths to preserve a Banksy artwork and in the case of the ‘I’m Out Of Bed Rat’ this is particularly tru','2002','1','4'),
('Aerial Flower Girl','https://cdn.shopify.com/s/files/1/1003/7610/files/Banksy-Flower-Aerial_596c7a77-1c8c-4253-8dd6-adbe89547175.jpg?10390612518635165247','Flower Aerial Girl, in Los Angeles, features a young girl in silouhette tending a television aerial in the same manner as one would a pot of flower.','2010','1','5'),
('Old Woman (You Looked Better On MySpace)','https://cdn.shopify.com/s/files/1/1003/7610/files/Old-Woman-You-looked-better-on-Myspace_d9b74a96-9f49-4eb8-b1f8-36c96af24f40.jpg?4823298307112422000','This tongue in cheek piece appeared in Los Angeles in 2006 and clearly pokes fun at the large numbers of girls on MySpace who used flattering angles and photo editing to make themselves appear more attractiv','2006','1','6'),
('Better Out than in','https://cdn.shopify.com/s/files/1/1003/7610/files/Banksy-Better-Out-Than-In.jpg?12597876642204314338','Banksy’s Better Out Than In is believed to be something of a preview created to promote his New York Residency of the same name the following month.','2000','1','7'),
('Laugh Now','https://cdn.shopify.com/s/files/1/1003/7610/files/Banksy-Laugh-Now_765e44d7-7e61-4462-a1cf-f7e08fe6b4fd.jpg?9318552693457565551','“Laugh Now” first appeared in 2002 and featured a Monkey wearing a sandwich board proclaiming ‘Laugh now, but one day we’ll be in charge’','2008','1','8'),
('Steam Roller Traffic Warden ','https://cdn.shopify.com/s/files/1/1003/7610/files/Banksy-steam-roller-traffic-warden.jpg?4059624363505583511','The Steam Roller Traffic Warden appeared on a steam roller parked at the kerbside in Lewisham, London in 2009 and is less thought-provoking, more plain amusin','2009','1','9'),
('Soldiers Painting CND Sign','https://cdn.shopify.com/s/files/1/1003/7610/files/Banksy-Soldiers-Painting-Peace-Sign.jpg?16381050152911180238','Originally painted close to the Houses of Parliament in London, the original version of Banksy’s Soldiers Painting the CND sign was confiscated for allegedly breaking laws.','2007','1','10'),
('Man Hanging from Window','https://cdn.shopify.com/s/files/1/1003/7610/files/Banksy-Man-Hanging-From-Window.jpg?15462249851633323291','This is perhaps one of the most famous of all Banksy pieces and shows a man hanging from a window after his clandestine affair looks set to be discovered by his mistress‚Its husband.','2009','1','11');
('Snorting Copper','https://cdn.shopify.com/s/files/1/1003/7610/files/Banksy-Snorting-Copper-Photo.jpg?5516731841857925526','This “Snorting Copper” stencil began appearing from 2005 in several places in London.','2005','1','12'),
('Sweep it Under the Carpet','https://cdn.shopify.com/s/files/1/1003/7610/files/banksy-maid-sweeping-under-carpet.jpg?7313450758672209523','Possibly the most recognisable Banksy artworks,This piece appeared on a wall on Chalk Farm Road','2006','1','13'),
('Guantanamo Bay Detainee','https://cdn.shopify.com/s/files/1/1003/7610/files/banksy-guantanemo-bay.jpg?4356330913310122456','The war on terror was declared soon after 9/11. This piece is intended to highlight war on terror','2006','1','14'),
('No Ball Games','https://cdn.shopify.com/s/files/1/1003/7610/files/banksy-graffiti-no-ball-games.jpg?7509656426208613714','“No Ball Games” first appeared in Turnpike Lane, North London, in 2009. But then in 2013 was removed','2009','1','15'),
('If Graffiti Changed Anything – It Would be Illegal','https://cdn.shopify.com/s/files/1/1003/7610/files/Banksy-if-graffiti-changed-anything-it-would-be-illegal.jpg?2454548900970017578','One of Banksy’s more ‘meaningful’ artworks, this was discovered in Fitzrovia (London) in April 2011.','2011','1','16');

```

#### Queries examples for retrieving data of our application

A user wants to search all murals that are located in Los Angeles
```mysql
Select a.name, m.title, m.imageurl, m.year, l.city,l.address,l.a_number
from murals m, location l, artist a
where m.l_id = l.l_id and a.a_id = m.a_id
having l.city = "Los Angeles";
```
###### Output
![Timeline](http://kburchardt.com/dbcs/LA.png)

A user wants to check all murals on all cities
```mysql
SELECT m.title , l.city
FROM murals m 
INNER JOIN location l
ON m.l_id=l.l_id;
```
###### Output
![Timeline](http://kburchardt.com/dbcs/citymurals.png)

A user wants to check all murals by a specific artist

```mysql
SELECT a.name , m.title, m.title, m.imageurl, m.year
FROM artist a 
INNER JOIN murals m
ON a.a_id=m.a_id
```
###### Output
![Timeline](http://kburchardt.com/dbcs/artistmurals.png)

A user wants to check the number of mural results for their search. 

** _Note: We will use a php element that will help giving us this on our application. This query is only an example._ ***

```mysql
Select count(m.title)
from murals m
```
###### Output
![Timeline](http://kburchardt.com/dbcs/count.png)

A user wants to check max year of the murals.
```mysql
SELECT
    MAX(year) 
FROM
    murals;
```
###### Output
![Timeline](http://kburchardt.com/dbcs/max.png)

A user wants to check minimum year of murals
```mysql
SELECT
    MIN(year) 
FROM
    murals;
```
###### Output
![Timeline](http://kburchardt.com/dbcs/min.png)

This will our primary code for our search bar. Users will be able to search by: 
- title
- year
- about
- artist name
- city
- country
```mysql
SELECT * from murals m 
INNER JOIN artist a  
on a.a_id = m.a_id 
INNER JOIN location l 
on l.l_id = m.l_id 
WHERE title LIKE '%$search%' 
OR year LIKE '%$search%' 
OR about LIKE '%$search%'
OR name LIKE '%$search%' 
OR city LIKE '%$search%' 
OR country LIKE '%$search%' 
GROUP BY title
```
###### Output
No possible output because `%search%` is not a real value.

### 3.Extras

We will calculate the amount of results using the following
```php
mysqli_num_rows()
```
#We will calculate the amount of time the sql query took using the following

```php
#start
microtime(true);
#end
microtime(true);
#querytime		
number_format(end, 10);
```

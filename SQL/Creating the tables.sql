#Creating the tables

CREATE TABLE artwork (
	a_id INT(11) not null PRIMARY KEY AUTO_INCREMENT,
    a_title varchar(256) not null,
    a_artist varchar(256) not null,
    a_location varchar(256) not null);


#Adding data to tableS

    INSERT INTO artwork (a_title, a_artist, a_location)
VALUE ('Girl with ballon' , 'Bansky', 'London','https://c1.staticflickr.com/4/3519/3989510611_5b1e70e459_b.jpg')
VALUE ('Love is in the air' , 'Bansky', 'London','https://upload.wikimedia.org/wikipedia/en/f/fe/Love_is_in_the_Bin.jpg')
VALUE ('Pacman' , 'Space invader', 'London','https://londoncallingblogdotnet.files.wordpress.com/2016/04/p1400130.jpg?w=920')

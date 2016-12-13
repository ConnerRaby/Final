DROP DATABASE finalgroup;


CREATE DATABASE finalgroup;


USE finalgroup;


CREATE TABLE state (
    state_id int NOT NULL,
    state_name VARCHAR(15) NOT NULL,
    PRIMARY KEY (state_id)
);


INSERT INTO state(state_id, state_name)
VALUES(1, 'Missouri'); 


INSERT INTO state(state_id, state_name)
VALUES(2, 'Kansas');


CREATE TABLE city (
    city_id int NOT NULL,
    city_name VARCHAR(25) NOT NULL,
    state_id int NOT NULL,
    PRIMARY KEY (city_id),
    FOREIGN KEY (state_id) REFERENCES state(state_id)
);


INSERT INTO city(city_id, city_name, state_id)
VALUES(1, 'Kansas City', 1);


INSERT INTO city(city_id, city_name, state_id)
VALUES(2, 'Raymore', 1);


INSERT INTO city(city_id, city_name, state_id)
VALUES(3, 'Overland Park', 2);


CREATE TABLE street_address (
    address_id int NOT NULL,
    street_address VARCHAR(225) NOT NULL,
    city_id int NOT NULL,
    PRIMARY KEY (address_id),
    FOREIGN KEY (city_id) REFERENCES city(city_id)
);


INSERT INTO street_address(address_id, street_address, city_id)
VALUES (1, '1405 Young Circle', 2);


INSERT INTO street_address(address_id, street_address, city_id)
VALUES (2, '14102 Cody', 3);


INSERT INTO street_address(address_id, street_address, city_id)
VALUES (3, '101 E 134th Street', 1); 




CREATE TABLE student (
    fname VARCHAR (25) NOT NULL,
    lname VARCHAR (25) NOT NULL,
    student_id int NOT NULL,
    address_id int NOT NULL,
    PRIMARY KEY (student_id),
    FOREIGN KEY (address_id) REFERENCES street_address (address_id)
);


INSERT INTO student(fname, lname, student_id, address_id)
VALUES ('Anthony', 'Kammerer', 1, 3);


INSERT INTO student(fname, lname, student_id, address_id)
VALUES ('Kyle', 'Ruark', 2, 2);


INSERT INTO student(fname, lname, student_id, address_id)
VALUES ('Conner', 'Raby', 3, 1);


CREATE TABLE phone_number (
    phone_id int NOT NULL,
    Phone_number VARCHAR(12) NOT NULL,
    student_id int NOT NULL,
    PRIMARY KEY (phone_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);


INSERT INTO phone_number(phone_id, Phone_number, student_id)
VALUES (1, '8162136356', 1);


INSERT INTO phone_number(phone_id, Phone_number, student_id)
VALUES (2, '9137481641', 2);


INSERT INTO phone_number(phone_id, Phone_number, student_id)
VALUES (3, '8167218855', 3);

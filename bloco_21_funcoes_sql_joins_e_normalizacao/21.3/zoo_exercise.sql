DROP DATABASE IF EXISTS Zoo;

CREATE DATABASE Zoo;

USE Zoo;

CREATE TABLE Zoo.location(
    location_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    location VARCHAR(50)
);

CREATE TABLE Zoo.animal(
    animal_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    specie VARCHAR(50) NOT NULL,
    age INT UNSIGNED NOT NULL,
    location_id INT NOT NULL,
    FOREIGN KEY (location_id) REFERENCES location (location_id)
);

CREATE TABLE Zoo.caretaker(
    caretaker_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    manager_id INT NOT NULL,
    FOREIGN KEY (manager_id) REFERENCES manager (manager_id)
);

CREATE TABLE Zoo.manager(
    manager_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);

CREATE TABLE Zoo.`caretaker_animal`(
    caretaker_id INT NOT NULL,
    animal_id INT NOT NULL
    PRIMARY KEY (caretaker_id, animal_id)
    FOREIGN KEY (carataker_id) REFERENCES caretaker(caretaker_id),
    FOREIGN KEY (animal_id) REFERENCES animal (animal_id)
);
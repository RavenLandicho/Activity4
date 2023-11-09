CREATE DATABASE veterinary;
CREATE TABLE owners (

ownerid INT,
ofirstname VARCHAR(50),
olastname VARCHAR(50),
address VARCHAR(100),
phone VARCHAR(100),
email VARCHAR(100),
PRIMARY KEY (ownerid)
);
CREATE TABLE IF NOT EXISTS public.animals
(
animalid INT NOT NULL,
name VARCHAR(50) NOT NULL,
species VARCHAR(50) NOT NULL,
breed VARCHAR(50) NOT NULL,
dateofbirth DATE NOT NULL,
gender VARCHAR(10) NOT NULL,
color VARCHAR(50) NOT NULL,
ownerid INT NOT NULL,
PRIMARY KEY(animalid),
FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);

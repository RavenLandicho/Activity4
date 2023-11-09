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

CREATE TABLE appointments (

appointid INT,
animalid INT,
appointdate DATE,
reason VARCHAR(255),
PRIMARY KEY (appointid),
FOREIGN KEY animalid REFERENCES animals(animalid)

);

CREATE TABLE IF NOT EXISTS public.doctors
(
doctorid INT NOT NULL,
dfirstname VARCHAR(50) NOT NULL,
dlastname VARCHAR(50) NOT NULL,
speciality VARCHAR(100) NOT NULL,
phone VARCHAR(15) NOT NULL,
email VARCHAR(100) NOT NULL,
PRIMARY KEY (doctorid)
);

CREATE TABLE invoices (

invoicesid INT,
appointid INT,
totalamount NUMERIC(10,2),
paymentdate TIME,
PRIMARY KEY (invoiceid),
FOREIGN KEY appointid REFERENCES appointments(appointid)

);
CREATE TABLE IF NOT EXISTS public.medicalrecords
(
	record_id INT NOT NULL,
	animal_id INT NOT NULL,
	record_date TIMESTAMP NOT NULL,
	doctor_id INT NOT NULL,
	diagnosis TEXT NOT NULL,
	prescription TEXT NOT NULL,
	notes TEXT NOT NULL,
	PRIMARY KEY (record_id),
	FOREIGN KEY (animal_id) REFERENCES animals(animal_id),
	FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

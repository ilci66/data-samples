create table car (
	car_uid UUID NOT NULL PRIMARY KEY,
  make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19, 2) NOT NULL NOT NULL CHECK (price > 0)
);

create table person (
	person_uid UUID NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	gender VARCHAR(50) NOT NULL,
	email VARCHAR(100),
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50) NOT NULL,
  car_uid UUID REFERENCES car(car_uid),
  UNIQUE(car_uid),
  UNIQUE(email)
);

insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Amalle', 'Sherringham', 'asherringham0@indiegogo.com', 'Male', '2021-04-09', 'Afghanistan');
insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Nicola', 'Shorie', 'nshorie1@theglobeandmail.com', 'Non-binary', '2021-08-19', 'Afghanistan');
insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Rae', 'Foggo', 'rfoggo2@apple.com', 'Polygender', '2021-07-31', 'Afghanistan');


insert into car (car_uid, make, model, price) values (uuid_generate_v4(), 'Hyundai', 'Accent', '10329.59');
insert into car (car_uid, make, model, price) values (uuid_generate_v4(), 'Toyota', 'Avalon', '29041.34');
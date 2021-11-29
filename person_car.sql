create table car (
	id BIGSERIAL NOT NULL PRIMARY KEY,
  make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19, 2) NOT NULL
);

create table person (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(50),
	gender VARCHAR(50) NOT NULL,
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50) NOT NULL,
  car_id BIGINT REFERENCES car (id),
  UNIQUE(car_id)
);

insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Amalle', 'Sherringham', 'asherringham0@indiegogo.com', 'Male', '2021-04-09', 'Afghanistan');
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Nicola', 'Shorie', 'nshorie1@theglobeandmail.com', 'Non-binary', '2021-08-19', 'Afghanistan');
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Rae', 'Foggo', 'rfoggo2@apple.com', 'Polygender', '2021-07-31', 'Afghanistan');


insert into car (make, model, price) values ('Hyundai', 'Accent', '10329.59');
insert into car (make, model, price) values ('Toyota', 'Avalon', '29041.34');

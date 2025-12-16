create database airline_db;
use  airline_db;

create table airlines(
   airline_id int primary key auto_increment,
   airline_name varchar(100),
   country varchar(50)
);

create table airports(
   airport_id int primary key auto_increment,
   airport_code varchar(10),
   city varchar(50),
   country varchar(50)
);

CREATE TABLE flights (
    flight_id INT PRIMARY KEY AUTO_INCREMENT,
    airline_id INT,
    source_airport INT,
    destination_airport INT,
    flight_date DATE,
    delay_minutes INT,
    status VARCHAR(20),
    FOREIGN KEY (airline_id) REFERENCES airlines(airline_id),
    FOREIGN KEY (source_airport) REFERENCES airports(airport_id),
    FOREIGN KEY (destination_airport) REFERENCES airports(airport_id)
);

create table passengers(
  passenger_id int primary key auto_increment,
  passenger_name varchar(100),
  gender varchar(10)
);

create table bookings(
   booking_id int primary key auto_increment,
   passenger_id int,
   flight_id int,
   ticket_price decimal(10,2),
   foreign key (passenger_id) references passengers(passenger_id),
   foreign key (flight_id)   references flights(flight_id)
);


















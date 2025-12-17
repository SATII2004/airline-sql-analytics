use airline_db;

insert into airlines(airline_name,country) values ('Indigo','India'),
('Air India','India'),('Vistara','India');

insert into airports(airport_code,city,country) values ('DEL','Delhi','India'),
('BLR','Bangalore','India'),('BOM','Mumbai','India');

insert into passengers(passenger_name,gender) values ('Rahul Sharma','Male'),
('Ankita Verma','Female'),('Karan Singh','Male');

insert into flights 
(airline_id,source_airport,destination_airport,flight_date,delay_minutes,status) values
(1, 1, 2, '2025-01-10', 15, 'Delayed'),
(2, 2, 3, '2025-01-11', 0, 'On Time'),
(3, 1, 3, '2025-01-12', 30, 'Delayed');

insert into bookings(passenger_id,flight_id,ticket_price) values
(1,1,5500),
(2,2,7200),
(3,3,6800);


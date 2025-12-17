use airline_db;

select f.flight_id,sum(b.ticket_price) as total_revenue 
from bookings b
join flights f on b.flight_id=f.flight_id
group by f.flight_id order by total_revenue desc;

select a.airline_name,avg(f.delay_minutes) as avg_delay from 
flights f join airlines a on f.airline_id=a.airline_id
group by a.airline_name; 

select count(*) as delayed_flights from flights where status='Delayed';

select passenger_name,flight_date,ticket_price from bookings b join 
passengers p on b.passenger_id=p.passenger_id   
join flights f on b.flight_id=f.flight_id;

select flight_id ,delay_minutes,rank() over (order by delay_minutes desc) as 
delay_rank from flights;



















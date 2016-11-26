-- 1 Conversion Functions and Conditional Expressions
select lastname, to_char(dateofbirth,'fmdd Month YYYY') as birthday, NVL(Homeaddress,'Dont Know')
from customer;
-- 12 Conversion Functions and Conditional Expressions
select ride_id, distance,decode(sign(distance-10),-1, 1,1,0,0,1)
revised_distance
from riderecord1;
--2 join
SELECT last_name,
  first_name,
  car_name_plate,
  car_type
FROM driver
JOIN car USING(driver_id);
--3 subquery
SELECT last_name,
  first_name,
  car_name_plate,
  car_type
FROM driver
JOIN car USING(driver_id)
join Riderecord1 using(driver_id)
where total_fare> (
    select avg(total_fare) from riderecord1);



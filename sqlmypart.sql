<<<<<<< HEAD
select lastname, to_char(dateofbirth,'fmdd Month YYYY') as birthday
from customer;
-- 1
=======
-- 1 Conversion Functions and Conditional Expressions
>>>>>>> dd16311007c22148a83b729de6a335ece9d195b9
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
<<<<<<< HEAD

SELECT lastname, Payment.Payment_Type
FROM customer join payment using(customer_id);
--3
=======
--3 subquery
>>>>>>> dd16311007c22148a83b729de6a335ece9d195b9
SELECT last_name,
  first_name,
  car_name_plate,
  car_type
FROM driver
JOIN car USING(driver_id)
join Riderecord1 using(driver_id)
where total_fare> (
    select avg(total_fare) from riderecord1);

<<<<<<< HEAD
SELECT lastname,
  firstname,
  total_fare
FROM customer
JOIN payment USING(customer_id)
where cancellaiton_fare= (
    select max(cancellaiton_fare) from payment group by payment_type having payment_type = 'debit card');


--4
update customer
set homeaddress=null
where customer_id=1;
=======

>>>>>>> dd16311007c22148a83b729de6a335ece9d195b9

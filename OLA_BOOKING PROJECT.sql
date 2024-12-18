
-- CREATE DATABASE WITH NAME OLA
CREATE DATABASE OLA;

-- USE THAT DATABASE
USE OLA;

-- SELECT ALL DATA FROM DATABASE
SELECT COUNT(*) FROM OLA_BOOKING;

-- CREATE TABLE IN DATABASE
CREATE TABLE OLA_BOOKING (
DATE DATE NOT NULL,
TIME TIME NOT NULL,
BOOKING_ID TEXT,
BOOKING_STATUS VARCHAR(50),
CUSTOMER_ID VARCHAR(20),
VEHICLE_TYPE VARCHAR(10),
PICKUP_LOCATION VARCHAR(20),
DROP_LOACATION VARCHAR(20),
V_TAT INT ,
C_TAT INT ,
CANCELED_RIDES_BY_CUSTOMER VARCHAR(50),
Canceled_Rides_by_Driver VARCHAR(20),
Incomplete_Rides VARCHAR(10),
Incomplete_Rides_Reason VARCHAR(20),
Booking_Value INT,
Payment_Method VARCHAR(5),
Ride_Distance INT,
Driver_Ratings FLOAT,
Customer_Rating FLOAT
);

SELECT * FROM OLA_BOOKING;

-- SQL Questions:

-- 1. Retrieve all successful bookings:
CREATE VIEW Successful_Bookings AS
SELECT * FROM OLA_BOOKING 
WHERE Booking_Status = 'SUCCESS';

SELECT * FROM Successful_Bookings;

-- 2. Find the average ride distance for each vehicle type:
CREATE VIEW Average_Ride_Distance AS 
SELECT VEHICLE_TYPE,AVG(Ride_Distance) AS AVERAGE_RIDE
FROM OLA_BOOKING
GROUP BY VEHICLE_TYPE;

SELECT * FROM Average_Ride_Distance;

-- 3. Get the total number of cancelled rides by customers:
CREATE VIEW Toatl_cancelled_rides_by_customers AS
SELECT COUNT(Canceled_Rides_by_Customer) FROM OLA_BOOKING 
WHERE BOOKING_STATUS ='CANCELED BY CUSTOMER';

SELECT * FROM Toatl_cancelled_rides_by_customers;

-- 4. List the top 5 customers who booked the highest number of rides:
CREATE VIEW top_5_customers_booked_the_highest_rides AS
SELECT Customer_ID, MAX(BOOKING_VALUE) 
FROM OLA_BOOKING
GROUP BY Customer_ID
ORDER BY MAX(BOOKING_VALUE) DESC
LIMIT 5;

SELECT * FROM top_5_customers_booked_the_highest_rides;

-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
CREATE VIEW rides_cancelled_by_drivers AS
SELECT COUNT(Canceled_Rides_by_Driver) FROM OLA_BOOKING 
WHERE Canceled_Rides_by_Driver='PERSONAL & CAR RELATED ISSUE';

SELECT * FROM rides_cancelled_by_drivers;
 
-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
CREATE VIEW ratings_for_Prime_Sedan AS
SELECT VEHICLE_TYPE,MAX(Driver_Ratings),MIN(Driver_Ratings) FROM OLA_BOOKING
WHERE VEHICLE_TYPE = 'PRIME SEDAN'
GROUP BY VEHICLE_TYPE;

SELECT * FROM ratings_for_Prime_Sedan;

-- 7. Retrieve all rides where payment was made using UPI:
CREATE VIEW UPI_PAYMENTS AS
SELECT * FROM OLA_BOOKING 
WHERE Payment_Method ='UPI';

SELECT * FROM UPI_PAYMENTS;

-- 8. Find the average customer rating per vehicle type:
CREATE VIEW average_customer_rating_per_vehicl_type AS
SELECT Vehicle_Type,ROUND(AVG(Customer_Rating),2)
FROM OLA_BOOKING 
GROUP BY Vehicle_Type;

SELECT * FROM average_customer_rating_per_vehicl_type;


-- 9. Calculate the total booking value of rides completed successfully:
CREATE VIEW successfully_booking_value AS 
SELECT SUM(Booking_Value) FROM OLA_BOOKING
WHERE Booking_Status ='SUCCESS' OR Booking_Status = 'COMPLETED';

SELECT * FROM successfully_booking_value;
 
-- 10. List all incomplete rides along with the reason:
CREATE VIEW incomplete_rides_WITH_REASON AS
select Booking_ID,Incomplete_Rides,Incomplete_Rides_Reason from ola_booking 
where Incomplete_Rides = 'yes';

SELECT * FROM incomplete_rides_WITH_REASON;



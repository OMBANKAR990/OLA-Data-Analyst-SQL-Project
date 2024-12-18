# OLA-Data-Analyst-SQL-Project

## Project Overview

**Project Title**: OLA-Data-Analyst-SQL-Project 
**Level**: Beginner  
**Database**: OLA

This project is designed to demonstrate SQL skills and techniques typically used by data analysts to explore, clean, and analyze retail sales data. The project involves setting up a retail sales database, performing exploratory data analysis (EDA), and answering specific business questions through SQL queries. 

## Objectives

1. **Data Cleaning and Preparation:**
**Objective:** To clean and prepare the raw data collected from various sources to ensure accuracy, completeness, and consistency.
Description: Use SQL queries to identify and handle missing values, remove duplicates, correct errors, and standardize data formats to create a reliable dataset for analysis.

2. **Customer Behavior Analysis:**
**Objective:** To analyze customer behavior and preferences to understand patterns and trends.
Description: Utilize SQL to segment customers based on their ride history, frequency, and feedback. Identify key factors influencing customer satisfaction and loyalty.

## Project Structure

### 1. Database Setup

- **Database Creation**: The project starts by creating a database named 'OLA'.
- **Table Creation**: A table named 'OLA_BOOKING' is created to store the OLA sales data. The table structure includes columns for
- DATE DATE ,TIME TIME,BOOKING_ID ,BOOKING_STATUS ,CUSTOMER_ID ,VEHICLE_TYPE ,PICKUP_LOCATION ,DROP_LOACATION ,V_TAT  ,C_TAT  ,CANCELED_RIDES_BY_CUSTOMER ,Canceled_Rides_by_Driver ,Incomplete_Rides ,Incomplete_Rides_Reason ,Booking_Value ,Payment_Method ,Ride_Distance ,Driver_Ratings ,Customer_Rating .

  

  ```CREATE DATABASE WITH NAME OLA
CREATE DATABASE OLA;

USE OLA;

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
```





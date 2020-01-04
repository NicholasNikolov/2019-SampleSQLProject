CREATE DATABASE IF NOT EXISTS stateFarm;

USE DATABASE stateFarm;

CREATE TABLE IF NOT EXISTS car_data(
VIN_number INT(17),
make VARCHAR(45),
model VARCHAR(45),
model_year VARCHAR(45),
PRIMARY KEY(VIN_number)
);

CREATE TABLE IF NOT EXISTS drive_safe_and_save(
VIN_number			INT(17),
monthly_mileage 	INT(6),
avg_acceleration 	INT(2),
braking 			INT(2),
avg_cornering 		INT(2),
avg_speed 			INT(3),
avg_time_of_day		datetime
PRIMARY KEY (VIN_number),
FOREIGN KEY (VIN_number) REFERENCES car_data(VIN_number)
);

CREATE TABLE IF NOT EXISTS driver(



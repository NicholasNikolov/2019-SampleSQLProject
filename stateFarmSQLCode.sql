CREATE DATABASE IF NOT EXISTS stateFarm;

USE stateFarm;

DROP TABLE drive_safe_and_save;
DROP TABLE car_data;
DROP TABLE driver;


CREATE TABLE IF NOT EXISTS driver(
driver_id			INT(5) AUTO_INCREMENT,
fname				varchar(45),
mname				varchar(45),
lname				varchar(45),
age					INT(3),
years_spent_driving	INT(3),
claimsMade			INT(3),
estimatedClaims		INT(3),
PRIMARY KEY (driver_id)
);


CREATE TABLE IF NOT EXISTS car_data(
VIN_number VARCHAR(17),
make VARCHAR(45),
model VARCHAR(45),
model_year INT(4),
driver_id			INT(5),
PRIMARY KEY(VIN_number),
FOREIGN KEY(driver_id) REFERENCES driver(driver_id)
);

CREATE TABLE IF NOT EXISTS drive_safe_and_save(
VIN_number			VARCHAR(17),
monthly_mileage 	INT(6),
avg_acceleration 	DECIMAL(2,1),
braking 			DECIMAL(2,1),
avg_cornering 		DECIMAL(2,1),
avg_speed 			INT(3),
avg_time_of_day		time,
PRIMARY KEY (VIN_number),
FOREIGN KEY (VIN_number) REFERENCES car_data(VIN_number)
);

############### DATA ENTRY PORTION ###################

# Customer 1
insert into driver values (00001,'Stephen','Mike','Leman',42,12,2,NULL);
insert into car_data values (45621568999651342,'Toyota','Corolla',2009,00001);
insert into drive_safe_and_save values (45621568999651342,2300,1.2,1.5,1.3,34,201516);

# Customer 2
insert into driver values (00002,'Magic','Tyler','Johnson',36,14,3,NULL);
insert into car_data values (38475840009382736,'Chevrolet','Camaro',2007,00002);
insert into drive_safe_and_save values (38475840009382736,4200,3.2,2.2,1.9,42,021515);

# Customer 3
insert into driver values (00003,'Stephen','Stevie','Tyler',45,17,2,NULL);
insert into car_data values (18475840009802736,'Honda','Accord',2012,00003);
insert into drive_safe_and_save values (18475840009802736,4200,1.2,0.8,0.9,29,171515);

# Customer 4
insert into driver values (00004,'Mikey','Frank','Johnson',22,4,5,NULL);
insert into car_data values (99095840009802722,'Toyota','Supra',1997,00004);
insert into drive_safe_and_save values (99095840009802722,1200,3.1,2.1,2.2,56,011520);

# Customer 5
insert into driver values (00005,'Franklin','Delano','Roosevelt',56,22,0,NULL);
insert into car_data values (99009890009802722,'Tesla','Model S',2015,00005);
insert into drive_safe_and_save values (99095840009802722,1200,0.5,0.8,1.0,22,141520);

# Customer 6
insert into driver values (00006,'Leroy','Scott','Jenkins',35,10,1,NULL);
insert into car_data values (34009890000002722,'Tesla','Model T',2016,00006);
insert into drive_safe_and_save values (34009890000002722,2200,0.8,0.9,1.2,31,171520);

# Customer 7
insert into driver values (00007,'Mikhael','Devovich','Dimitrov',66,40,4,NULL);
insert into car_data values (84950000098473620,'Tesla','Model S',2015,00007);
insert into drive_safe_and_save values (84950000098473620,3150,1.2,1.1,1.4,32,191520);

# Customer 8
insert into driver values (00008,'Franklin','Jehovah','Peterson',28,9,1,NULL);
insert into car_data values (11950000090098720,'Tesla','Model S',2015,00008);
insert into drive_safe_and_save values (11950000090098720,3150,1.1,1.0,1.3,32,101520);

# Customer 9
insert into driver values (00009,'Scott','Michael','Clarkson',33,10,3,NULL);
insert into car_data values (10050000090098334,'Ford','Mustang',2014,00009);
insert into drive_safe_and_save values (10050000090098334,2000,1.6,1.9,1.6,39,121520);

# Customer 10
insert into driver values (00010,'John','Johnson','Johanson',37,14,4,NULL);
insert into car_data values (65156897853332311,'Jeep','Grand Cherokee',2012,00010);
insert into drive_safe_and_save values (65156897853332311,1302,1.6,1.9,1.6,39,121520);

# Customer 10
insert into driver values (00011,'Luke','Johnson','Skywalker',22,13,6,NULL);
insert into car_data values (15100097853332311,'Jeep','Grand Cherokee',2012,00011);
insert into drive_safe_and_save values (15100097853332311,1302,2.2,2.3,1.9,39,141520);

insert into driver values (00012,'Steve','Johnson','Steve',22,13,0,NULL);
insert into car_data values (11200097853330098,'Jeep','Grand Cherokee',2012,00012);
insert into drive_safe_and_save values (11200097853330098,1902,0.2,0.3,0.9,21,131520);

insert into driver values (00013,'Mike','Mike','Michaels',23,1,4,NULL);
insert into car_data values (10930097853330098,'Chevrolet','Camaro',2013,00013);
insert into drive_safe_and_save values (10930097853330098,1902,1.7,2.3,1.8,44,141520);

insert into driver values (00014,'Luke','Mike','Steve',19,1,7,NULL);
insert into car_data values (90080000093330098,'Toyota','Camry',2016,00014);
insert into drive_safe_and_save values (90080000093330098,874,3.2,3.3,2.8,59,171520);

insert into driver values (00015,'Mike','Steve','John',55,23,1,NULL);
insert into car_data values (40009800093330098,'Toyota','Camry',2016,00015);
insert into drive_safe_and_save values (40009800093330098,1002,0.2,0.4,0.8,22,161520);

insert into driver values (00016,'Mike','Teve','Ohn',52,25,0,NULL);
insert into car_data values (11009800093330098,'Toyota','Camry',2016,00016);
insert into drive_safe_and_save values (11009800093330098,1052,0.3,0.2,0.5,24,171520);

insert into driver values (00017,'Talladega','Teve','Knight',35,15,9,NULL);
insert into car_data values (59009800093330330,'Toyota','Camry',2016,00017);
insert into drive_safe_and_save values (59009800093330330,1052,4.3,2.7,3.2,67,191520);

# New Customer
insert into driver values (00018,'Ricky','Shakinbake','Bobby',34,29,0,NULL);
insert into car_data values (11009800093300987,'Toyota','Camry',2018,00018);
insert into drive_safe_and_save values (11009800093300987,9052,3.4,6.6,4.1,122,141520);
USE formula1;
CREATE TABLE IF NOT EXISTS drivers (
	driver_id smallint NOT NULL,
    driver_code varchar(10),
    driver_forename varchar(50) NOT NULL,
    driver_surname varchar(50) NOT NULL,
    driver_dob DATE,
    driver_nationality varchar(50),
    driver_home varchar(50),
	PRIMARY KEY (driver_id)
);
LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_drivers.csv'
INTO TABLE drivers
FIELDS TERMINATED BY ','
IGNORE 1 LINES;
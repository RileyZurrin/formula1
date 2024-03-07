USE formula1;
CREATE TABLE IF NOT EXISTS qualifying (
	qualify_id int NOT NULL,
	race_id int NOT NULL,
    driver_id smallint NOT NULL,
    constructor_id smallint NOT NULL,
	q1 int,
    q2 int,
    q3 int,
    position tinyint,
	PRIMARY KEY (qualify_id),
    FOREIGN KEY (race_id) REFERENCES races(race_id),
    FOREIGN KEY (driver_id) REFERENCES drivers(driver_id),
    FOREIGN KEY (constructor_id) REFERENCES constructors(constructor_id)
);
LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_qualifying.csv'
INTO TABLE qualifying
FIELDS TERMINATED BY ','
IGNORE 1 LINES;
USE formula1;
CREATE TABLE IF NOT EXISTS pit_stops (
	pit_stops_id int NOT NULL AUTO_INCREMENT,
	race_id int NOT NULL,
    driver_id smallint NOT NULL,
    `stop` tinyint NOT NULL,
    lap smallint,
	`time` time,
    duration_ms int NOT NULL,
	PRIMARY KEY (pit_stops_id),
    FOREIGN KEY (race_id) REFERENCES races(race_id),
    FOREIGN KEY (driver_id) REFERENCES drivers(driver_id)
);
LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_pit_stops.csv'
INTO TABLE pit_stops
FIELDS TERMINATED BY ','
IGNORE 1 LINES
(race_id, driver_id, `stop`,lap, `time`, duration_ms);
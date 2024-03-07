USE formula1;
CREATE TABLE IF NOT EXISTS lap_times (
	lap_times_id int NOT NULL AUTO_INCREMENT,
	race_id int NOT NULL,
    driver_id smallint NOT NULL,
    lap smallint NOT NULL,
    position tinyint,
	lap_time_ms int NOT NULL,
	PRIMARY KEY (lap_times_id),
    FOREIGN KEY (race_id) REFERENCES races(race_id),
    FOREIGN KEY (driver_id) REFERENCES drivers(driver_id)
);
LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_lap_times.csv'
INTO TABLE lap_times
FIELDS TERMINATED BY ','
IGNORE 1 LINES
(race_id, driver_id, lap, position, lap_time_ms);
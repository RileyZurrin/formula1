USE formula1;
CREATE TABLE IF NOT EXISTS driver_standings (
	driver_standings_id int NOT NULL,
    race_id int NOT NULL,
    driver_id smallint NOT NULL,
    points float(5),
    position tinyint NOT NULL,
    wins tinyint,
	PRIMARY KEY (driver_standings_id),
    FOREIGN KEY (race_id) REFERENCES races(race_id),
    FOREIGN KEY (driver_id) REFERENCES drivers(driver_id)
);
LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_driver_standings.csv'
INTO TABLE driver_standings
FIELDS TERMINATED BY ','
IGNORE 1 LINES;
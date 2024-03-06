USE formula1;

LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_circuits.csv'
INTO TABLE circuits
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_constructor_results.csv'
INTO TABLE constructor_results
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_constructor_standings.csv'
INTO TABLE constructor_standings
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_constructors.csv'
INTO TABLE constructors
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_driver_standings.csv'
INTO TABLE driver_standings
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_drivers.csv'
INTO TABLE drivers
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_lap_times.csv'
INTO TABLE lap_times
FIELDS TERMINATED BY ','
IGNORE 1 LINES
(race_id, driver_id, lap, position, lap_time_ms);

LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_pit_stops.csv'
INTO TABLE pit_stops
FIELDS TERMINATED BY ','
IGNORE 1 LINES
(race_id, driver_id, `stop`,lap, `time`, duration_ms);

LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_qualifying.csv'
INTO TABLE qualifying
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_races.csv'
INTO TABLE races
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_results.csv'
INTO TABLE results
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_seasons.csv'
INTO TABLE seasons
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_sprint_results.csv'
INTO TABLE sprint_results
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_status.csv'
INTO TABLE `status`
FIELDS TERMINATED BY ','
IGNORE 1 LINES;
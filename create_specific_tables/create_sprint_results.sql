USE formula1;
CREATE TABLE IF NOT EXISTS sprint_results (
  result_id int NOT NULL,
  race_id int NOT NULL,
  driver_id smallint NOT NULL,
  constructor_id smallint NOT NULL,
  grid smallint,
  position tinyint NOT NULL,
  points float(5),
  laps smallint,
  time_ms int,
  fastest_lap smallint,
  fastest_lap_rank smallint,
  fastest_lap_time_ms int,
  status_id smallint NOT NULL,
  PRIMARY KEY (result_id),
  FOREIGN KEY (race_id) REFERENCES races(race_id),
  FOREIGN KEY (driver_id) REFERENCES drivers(driver_id),
  FOREIGN KEY (constructor_id) REFERENCES constructors(constructor_id),
  FOREIGN KEY (status_id) REFERENCES status(status_id)
);
LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_sprint_results.csv'
INTO TABLE sprint_results
FIELDS TERMINATED BY ','
IGNORE 1 LINES;
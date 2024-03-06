USE formula1;
CREATE TABLE IF NOT EXISTS races (
  race_id int NOT NULL,
  `year` smallint NOT NULL,
  round smallint NOT NULL,
  circuit_id smallint NOT NULL,
  `name` varchar(50),
  `time` time,
  `date` date NOT NULL,
  PRIMARY KEY (race_id),
  FOREIGN KEY (circuit_id) REFERENCES circuits(circuit_id)
);
LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_races.csv'
INTO TABLE races
FIELDS TERMINATED BY ','
IGNORE 1 LINES;
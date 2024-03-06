USE formula1;
CREATE TABLE IF NOT EXISTS constructor_standings (
	constructor_standings_id int NOT NULL,
    race_id int NOT NULL,
    constructor_id smallint NOT NULL,
    points float(5) NOT NULL,
    position tinyint NOT NULL,
    wins tinyint,
	PRIMARY KEY (constructor_standings_id),
    FOREIGN KEY (race_id) REFERENCES races(race_id),
    FOREIGN KEY (constructor_id) REFERENCES constructors(constructor_id)
);
LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_constructor_standings.csv'
INTO TABLE constructor_standings
FIELDS TERMINATED BY ','
IGNORE 1 LINES;
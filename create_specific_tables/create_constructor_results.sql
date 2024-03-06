USE formula1;
CREATE TABLE IF NOT EXISTS constructor_results (
	constructor_results_id int NOT NULL,
    race_id int NOT NULL,
    constructor_id smallint NOT NULL,
    points float(5) NOT NULL,
	PRIMARY KEY (constructor_results_id),
    FOREIGN KEY (race_id) REFERENCES races(race_id),
    FOREIGN KEY (constructor_id) REFERENCES constructors(constructor_id)
);
LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_constructor_results.csv'
INTO TABLE constructor_results
FIELDS TERMINATED BY ','
IGNORE 1 LINES;
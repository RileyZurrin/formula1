USE formula1;
CREATE TABLE IF NOT EXISTS constructors (
	constructor_id smallint NOT NULL,
    constructor_name varchar(50) NOT NULL,
    constructor_nationality varchar(50),
    constructor_home varchar(50),
	PRIMARY KEY (constructor_id)
);
LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_constructors.csv'
INTO TABLE constructors
FIELDS TERMINATED BY ','
IGNORE 1 LINES;
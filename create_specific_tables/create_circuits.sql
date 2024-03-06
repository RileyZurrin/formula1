USE formula1;
CREATE TABLE IF NOT EXISTS circuits (
	circuit_id smallint NOT NULL,
    circuit_ref varchar(50),
    circuit_name varchar(50) NOT NULL,
    circuit_location varchar(50),
    circuit_country varchar(50),
    circuit_nationality varchar(50),
    lat float(10),
    lng float(10),
    alt smallint,
    PRIMARY KEY (circuit_id)
);
LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_circuits.csv'
INTO TABLE circuits
FIELDS TERMINATED BY ','
IGNORE 1 LINES;
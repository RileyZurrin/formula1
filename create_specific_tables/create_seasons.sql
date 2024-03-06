USE formula1;
CREATE TABLE IF NOT EXISTS seasons (
  year smallint NOT NULL,
  url varchar(500),
  PRIMARY KEY (year)
);
LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_seasons.csv'
INTO TABLE seasons
FIELDS TERMINATED BY ','
IGNORE 1 LINES;
USE formula1;
CREATE TABLE IF NOT EXISTS `status` (
  status_id smallint NOT NULL,
  `status` varchar(50),
  PRIMARY KEY (status_id)
);
LOAD DATA LOCAL INFILE '/Users/riley/projects/Formula1/cleaned_f1/cleaned_status.csv'
INTO TABLE `status`
FIELDS TERMINATED BY ','
IGNORE 1 LINES;
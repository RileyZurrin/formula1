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
CREATE TABLE IF NOT EXISTS constructors (
	constructor_id smallint NOT NULL,
    constructor_name varchar(50) NOT NULL,
    constructor_nationality varchar(50),
    constructor_home varchar(50),
	PRIMARY KEY (constructor_id)
);
CREATE TABLE IF NOT EXISTS drivers (
	driver_id smallint NOT NULL,
    driver_code varchar(10),
    driver_forename varchar(50) NOT NULL,
    driver_surname varchar(50) NOT NULL,
    driver_dob DATE,
    driver_nationality varchar(50),
    driver_home varchar(50),
	PRIMARY KEY (driver_id)
);
CREATE TABLE IF NOT EXISTS races (
  race_id int NOT NULL,
  year smallint NOT NULL,
  round smallint NOT NULL,
  circuit_id smallint NOT NULL,
  name varchar(50),
  `date` date NOT NULL,
  `time` time,
  PRIMARY KEY (race_id),
  FOREIGN KEY (circuit_id) REFERENCES circuits(circuit_id)
);
CREATE TABLE IF NOT EXISTS constructor_results (
	constructor_results_id int NOT NULL,
    race_id int NOT NULL,
    constructor_id smallint NOT NULL,
    points float(5) NOT NULL,
	PRIMARY KEY (constructor_results_id),
    FOREIGN KEY (race_id) REFERENCES races(race_id),
    FOREIGN KEY (constructor_id) REFERENCES constructors(constructor_id)
);
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
CREATE TABLE IF NOT EXISTS lap_times (
	lap_times_id int NOT NULL AUTO_INCREMENT,
	race_id int NOT NULL,
    driver_id smallint NOT NULL,
    lap smallint NOT NULL,
    position tinyint,
	lap_time_ms int NOT NULL,
	PRIMARY KEY (lap_times_id),
    FOREIGN KEY (race_id) REFERENCES races(race_id),
    FOREIGN KEY (driver_id) REFERENCES drivers(driver_id)
);
CREATE TABLE IF NOT EXISTS pit_stops (
	pit_stops_id int NOT NULL AUTO_INCREMENT,
	race_id int NOT NULL,
    driver_id smallint NOT NULL,
    `stop` tinyint NOT NULL,
    lap smallint,
	`time` time,
    duration_ms int NOT NULL,
	PRIMARY KEY (pit_stops_id),
    FOREIGN KEY (race_id) REFERENCES races(race_id),
    FOREIGN KEY (driver_id) REFERENCES drivers(driver_id)
);
CREATE TABLE IF NOT EXISTS qualifying (
	qualify_id int NOT NULL,
	race_id int NOT NULL,
    driver_id smallint NOT NULL,
    constructor_id smallint NOT NULL,
    position tinyint,
	q1 int,
    q2 int,
    q3 int,
	PRIMARY KEY (qualify_id),
    FOREIGN KEY (race_id) REFERENCES races(race_id),
    FOREIGN KEY (driver_id) REFERENCES drivers(driver_id),
    FOREIGN KEY (constructor_id) REFERENCES constructors(constructor_id)
);
CREATE TABLE IF NOT EXISTS seasons (
  year smallint NOT NULL,
  url varchar(500),
  PRIMARY KEY (year)
);
CREATE TABLE IF NOT EXISTS `status` (
  status_id smallint NOT NULL,
  `status` varchar(50),
  PRIMARY KEY (status_id)
);
CREATE TABLE IF NOT EXISTS results (
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
  fastest_lap_speed float(7),
  status_id smallint NOT NULL,
  PRIMARY KEY (result_id),
  FOREIGN KEY (race_id) REFERENCES races(race_id),
  FOREIGN KEY (driver_id) REFERENCES drivers(driver_id),
  FOREIGN KEY (constructor_id) REFERENCES constructors(constructor_id),
  FOREIGN KEY (status_id) REFERENCES status(status_id)
);
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

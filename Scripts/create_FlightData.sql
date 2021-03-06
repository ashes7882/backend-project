CREATE TABLE `mydb`.`flights` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Source` VARCHAR(45) NULL,
  `Destination` VARCHAR(45) NULL,
  `Airline` VARCHAR(45) NULL,
  `Price` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
INSERT INTO `mydb`.`flights` (`id`, `Source`, `Destination`, `Airline`, `Price`) VALUES ('1', 'Delhi', 'Mumbai', 'Air India', '650');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Mumbai', 'Delhi', 'Air India', '750');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Delhi', 'Toronto', 'Air India', '700');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Delhi', 'Toronto', 'Air Canada', '740');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Delhi', 'Toronto', 'British Airways', '710');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Toronto', 'Delhi', 'Air India', '800');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Toronto', 'Delhi', 'Air Canada', '900');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Toronto', 'Delhi', 'British Airways', '810');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Delhi', 'New York', 'Air India', '750');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Delhi', 'New York', 'United Airlines', '740');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('New York', 'Delhi', 'Air India', '760');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('New York', 'Delhi', 'United Airlines', '755');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Delhi', 'London', 'Air India', '770');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Delhi', 'London', 'WestJet', '790');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('London', 'Delhi', 'Air India', '690');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('London', 'Delhi', 'Westjet', '740');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Delhi', 'Paris', 'Air India', '800');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Delhi', 'Paris', 'Air France', '810');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Paris', 'Delhi', 'Air India', '830');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Paris', 'Delhi', 'Air France', '825');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Mumbai', 'Toronto', 'Air India', '900');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Mumbai', 'Toronto', 'Air Canada', '910');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Toronto', 'Mumbai', 'Air India', '890');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Toronto', 'Mumbai', 'Air Canada', '880');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Mumbai', 'New York', 'Air India', '870');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Mumbai', 'New York', 'United Airlines', '880');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('New York', 'Mumbai', 'Air India', '860');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('New York', 'Mumbai', 'United Airlines', '850');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Mumbai', 'London', 'Air India', '610');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Mumbai', 'London', 'British Airways', '650');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('London', 'Mumbai', 'Air India', '640');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('London', 'Mumbai', 'British Airways', '630');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Mumbai', 'Paris', 'Air India', '610');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Mumbai', 'Paris', 'Air France', '600');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Paris', 'Mumbai', 'Air India', '640');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Paris', 'Mumbai', 'Air France', '625');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Toronto', 'New York', 'Air Canada', '700');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Toronto', 'New York', 'United Airlines', '710');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('New York', 'Toronto', 'Air Canada', '730');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('New York', 'Toronto', 'United Airlines', '725');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Toronto', 'London', 'Air Canada', '800');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Toronto', 'London', 'British Airways', '810');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('London', 'Toronto', 'Air Canada', '815');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('London', 'Toronto', 'British Airways', '790');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Toronto', 'Paris', 'Air Canada', '780');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Toronto', 'Paris', 'Air France', '770');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Paris', 'Toronto', 'Air Canada', '800');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Paris', 'Toronto', 'Air France', '690');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('New York', 'London', 'United Airlines', '700');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('New York', 'London', 'British Airways', '700');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('London', 'New York', 'United Airlines', '710');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('London', 'New York', 'British Airways', '650');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('New York', 'Paris', 'United Airlines', '660');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('New York', 'Paris', 'Air France', '670');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Paris', 'New York', 'United Airlines', '680');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Paris', 'New York', 'Air France', '735');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('London', 'Paris', 'British Airways', '745');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('London', 'Paris', 'Air France', '755');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Paris', 'London', 'British Airways', '740');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Paris', 'London', 'Air France', '840');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Delhi', 'Toronto', 'WestJet', '800');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Delhi', 'London', 'United Airlines', '810');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Delhi', 'Paris', 'WestJet', '815');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Mumbai', 'New York', 'Air Canada', '910');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Mumbai', 'Paris', 'WestJet', '950');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Mumbai', 'London', 'Air France', '1000');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Toronto', 'Delhi', 'WestJet', '965');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Toronto', 'Mumbai', 'Air France', '980');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Toronto', 'Paris', 'United Airlines', '945');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('New York', 'London', 'Air France', '800');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('New York', 'Paris', 'Air India', '810');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('London', 'Delhi', 'WestJet', '890');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('London', 'Mumbai', 'WestJet', '850');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('London', 'Paris', 'United Airlines', '840');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Paris', 'Delhi', 'United Airlines', '790');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Paris', 'Toronto', 'WestJet', '780');
INSERT INTO `mydb`.`flights` (`Source`, `Destination`, `Airline`, `Price`) VALUES ('Paris', 'New York', 'Air India', '770');

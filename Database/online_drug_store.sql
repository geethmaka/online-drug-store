CREATE DATABASE online_drug_store;

CREATE TABLE `online_drug_store`.`Customer` (
	`customerID` int not null auto_increment,
    `firstName` varchar(20) not null,
    `lastName` varchar(20) not null,
	`email` varchar(50) not null,
    `phoneNo` int not null,
    `password` varchar(20) not null,
    `addressLine1` varchar(50) not null,
    `addressLine2` varchar(50),
    `city` varchar(50) not null,
    `province` varchar(50) not null,
    PRIMARY KEY (`customerID`)
);

CREATE TABLE `online_drug_store`.`Employee` (
	`employeeID` int not null auto_increment,
    `firstName` varchar(20) not null,
    `lastName` varchar(20) not null,
	`email` varchar(50) not null,
    `phoneNo` int not null,
    `password` varchar(20) not null,
	`Staff` varchar(20),
    PRIMARY KEY (`employeeID`)
);

CREATE TABLE `online_drug_store`.`Delivery` (
	`deliveryID` int not null auto_increment,
    `orderID` int,
    `status` boolean null,
    PRIMARY KEY (`deliveryID`),
    FOREIGN KEY (`orderID`)
    REFERENCES `online_drug_store`.`Orders`(`orderID`)
);

CREATE TABLE `online_drug_store`.`Item` (
	`itemID` int not null auto_increment,
    `name` varchar(50) not null,
    `quantity` int not null,
    `unitPrice` double not null,
    PRIMARY KEY (`itemID`)
);

CREATE TABLE `online_drug_store`.`Orders` (
	`orderID` int not null auto_increment,
    `customerID` int,
	`quantity` int,
    `totalAmount` double,
    PRIMARY KEY (`orderID`),
    FOREIGN KEY (`customerID`)
    REFERENCES `online_drug_store`.`Customer`(`customerID`)
);
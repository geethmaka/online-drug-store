CREATE DATABASE online_drug_store;

CREATE TABLE `online_drug_store`.`Customer` (
	`customerID` int not null auto_increment,
    `firstName` varchar(20) not null,
    `lastName` varchar(20) not null,
	`email` varchar(50) not null,
    `phoneNo` varchar(11) not null,
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
    `phoneNo` varchar(11) not null,
    `password` varchar(20) not null,
	`Staff` varchar(20),
    PRIMARY KEY (`employeeID`)
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
    `itemID` int, 
	`quantity` int,
    `totalAmount` double,
    PRIMARY KEY (`orderID`),
    CONSTRAINT fk_order_customerID
		FOREIGN KEY (`customerID`)
		REFERENCES `online_drug_store`.`Customer`(`customerID`)
		ON DELETE SET NULL,
	CONSTRAINT 	fk_order_itemID
		FOREIGN KEY (`ItemID`)
        REFERENCES `online_drug_store`.`Item`(`itemID`)
        ON DELETE SET NULL
);

CREATE TABLE `online_drug_store`.`Delivery` (
	`deliveryID` int not null auto_increment,
    `orderID` int,
    `status` varchar(10),
    PRIMARY KEY (`deliveryID`),
	CONSTRAINT fk_delivery_orderID
		FOREIGN KEY (`orderID`)
		REFERENCES `online_drug_store`.`Orders`(`orderID`)
		ON DELETE SET NULL
);

select * from `online_drug_store`.`Customer`;

select addressLine1, addressLine2, city, province
from `online_drug_store`.`Customer` c, `online_drug_store`.`Orders` o
where c.customerID = o.orderID ;

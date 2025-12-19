CREATE DATABASE IF NOT EXISTS `hospital` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hospital`;

-- ------------------------------------------------------
-- Table structure for table `medical_supply_inventory`
-- ------------------------------------------------------

DROP TABLE IF EXISTS `medical_supply_inventory`;
CREATE TABLE `medical_supply_inventory` (
  `supplyId` int NOT NULL AUTO_INCREMENT,
  `item` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `quantity` int NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`supplyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ------------------------------------------------------
-- Dumping data for table `medical_supply_inventory`
-- ------------------------------------------------------

LOCK TABLES `medical_supply_inventory` WRITE;

INSERT INTO `medical_supply_inventory` (`item`, `category`, `quantity`, `unit_price`, `total_price`) VALUES
('Bandages', 'Wound', 100, 2.50, 250.00),
('Gloves', 'Protection', 200, 1.00, 200.00),
('Masks', 'Protection', 300, 0.75, 225.00),
('Syringes', 'Injection', 500, 0.50, 250.00),
('Thermometers', 'Diagnostic', 50, 5.00, 250.00),
('Cotton', 'Wound', 500, 0.25, 125.00),
('Antiseptic Solution', 'Wound', 100, 4.00, 400.00),
('Disinfectant Spray', 'Sanitation', 50, 6.00, 300.00),
('Gauze Pads', 'Wound', 200, 1.50, 300.00),
('Surgical Masks', 'Protection', 200, 0.50, 100.00);

UNLOCK TABLES;

-- Optional: quick check for the grand total shown in the image ($2,200.00)
-- SELECT SUM(total_price) AS grand_total FROM medical_supply_inventory;

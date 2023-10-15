-- Creating a database to store Crystal Shop Inventory.
CREATE database redauravibes;

-- Selecting Database to use.
USE redauravibes;

-- Creating Inventory table which has Product_Id as Primary Key, 
-- Crystal Name, Quantity, Price, Description, 
-- Total $ in Stock
CREATE TABLE inventory
(product_id INT IDENTITY(1,1) PRIMARY KEY,
crystal_name NVARCHAR(50) NOT NULL,
quantity INT,
price DECIMAL(10,2),
description NVARCHAR(50) NULL,
total_amount_in_stock DECIMAL(10,2));

DROP TABLE inventory;


-- Inserting data into tables
INSERT INTO inventory(crystal_name,quantity,price,description,total_amount_in_stock)
VALUES('Rose Quartz','1','11.00','Tower','11.00'),
	('Obsidian','1','8.00','Tower','8.00'),
	('Flourite','1','12.00','Large Tower','12.00'),
	('Moss Agate','8','2.50','Sphere','20.00'),
	('Moonstone','1','15.00','Tower','18.00'),
	('Labradorite','12','2.00','Sphere','24.00'),
	('Mookaite Jasper','6','2.00','Sphere','12.00'),
	('Amazonite','1','7.50','Tower','7.50'),
	('Blue Calcite','1','9.00','Tower','9.00')

-- Selecting all details from inventory table to verify all entries were successfully loaded.
	SELECT *
	FROM inventory;

-- Fixing a description 
	UPDATE inventory
	SET description = 'Mini Sphere' 
	WHERE description = 'Sphere';

-- Fixing a typo on table
	UPDATE inventory
	SET crystal_name = 'Fluorite'
	WHERE crystal_name = 'Flourite';

-- Using a wildcard to select items
SELECT crystal_name, total_amount_in_stock AS total
FROM inventory
WHERE crystal_name LIKE 'Mo%';

--Adding new inventory to table

INSERT INTO inventory(crystal_name,quantity,price,description,total_amount_in_stock)
VALUES('Rose Quartz','3','3.00','Mini Sphere','9.00'),
	('Sphalerite','1','22.00','Tower','22.00'),
	('Crazy Lace Agate','5','10.00','Mini Sphere','50.00'),
	('Moss Agate','4','8.00','Tower','32.00'),
	('Moonstone','8','12.00','Sphere','96.00'),
	('Flower Agate','1','14.00','Sphere','14.00'),
	('Red Obsidian','1','9.00','Sphere','9.00'),
	('Amazonite','10','3.00','Mini Sphere','30.00'),
	('Larvikite','1','12.00','Tower','12.00');

	-- Checking to see if we have everything added to table
	SELECT *
	from inventory;
 
 -- Selecting crystal name and quantity where quantity is less than 4
	SELECT crystal_name AS crystal, quantity
	FROM inventory
	WHERE quantity < 4;

 -- Selecting crystal name and quantity where quantity is more than 5
	SELECT crystal_name AS crystal, quantity
	FROM inventory
	WHERE quantity > 5; 

-- Selecting columns crystal name, quantity and price. Multiplying the quantity and price to get the total for that crystal.
	SELECT crystal_name AS crystal, quantity,price,
	quantity*price AS total
	FROM inventory
	
	
	
	



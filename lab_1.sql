/* Create Database: */
Create database stock_details
Use stock_details

/* Create Table: */ 
create table stocks
    (id INT AUTO_INCREMENT PRIMARY KEY,
    item_code VARCHAR(3) NOT NULL,
    item_name VARCHAR(100) NOT NULL, 
    manufacturer_code VARCHAR(3) NOT NULL, 
    quantity INT NOT NULL, unit_price DECIMAL(19,4) NOT NULL, 
    expiry_date DATE NOT NULL);

/* Insert Atleast 10 items into the db: */
INSERT INTO stocks(item_code, item_name, manufacturer_code, quantity, unit_price,expiry_date) 
VALUES          
                ('PH', 'Phone', 'AP', 50, 85000.0, '2025-03-12'),
                ('LP','Laptop','DE',70,42345.50,'2030-10-10'),
        		('LP','Laptop','AP',70,134500.3,'2030-12-15'),
                ('PH', 'Phone', 'SG', 200, 85000.0, '2025-03-12'),
                ('PH', 'Phone', 'GL', 188, 65000.0, '2028-03-12'),
                ('MO', 'Monitor', 'LG', 120, 25000.0, '2025-08-12'),
                ('LP', 'Laptop', 'HP', 300, 56800.0, '2030-08-12'),
                ('MO', 'Monitor', 'DE', 620, 35800.0, '2026-08-12'),
                ('LP', 'Laptop', 'LV', 223, 67549.00, '2025-08-02'),
                ('PH', 'Phone', 'LG', 120, 25000.0, '2030-08-12');

/* Display the item name with stocks 0 */
SELECT 
    item_name
FROM
    stocks
WHERE
        quantity=0;

/* Remove the items with expiry date on '2028' */
DELETE 
FROM 
    stocks
WHERE
    YEAR(expiry_date) = '2028';

/*Increase the unit price by 10%*/
UPDATE 
    stocks
SET unit_price = unit_price + unit_price * 0.1;

/* list the items manufactured by Apple with quantity above 100 */
SELECT * 
FROM 
    stocks
WHERE 
    manufacturer_code = 'AP' AND quantity > 100;

-- Display details expires after some date
SELECT * 
FROM 
    stocks
WHERE
    YEAR(expiry_date) >= '2028'
ORDER BY date DESC;

-- create column reorder
Alter table stocks Add column reorder Varchar(100);

-- Update column reorder
update stocks set reorder = quantity - quantity * 0.1 ;

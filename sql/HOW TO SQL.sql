-- ===============================================================================================================
-- HOW TO --------------------------------------------------------------------------------------------------------
-- How to drop a table from a database
DROP TABLE `table_name`;
-- ---------------------------------------------------------------------------------------------------------------
-- How to alter a table and drop a foreign key
ALTER TABLE `table_name`
DROP FOREIGN KEY `foreign_key_name`;
-- ---------------------------------------------------------------------------------------------------------------

-- How to add constraints (Foreign keys to a table)
-- only add to the one that has a many or depends on it
-- Alter the table with constraints (relationships)
ALTER TABLE `table_name`
ADD CONSTRAINT `constraint_name` FOREIGN KEY (`foreign key name`) REFERENCES source_table(`foreign key name`),
ADD CONSTRAINT `constraint_name` FOREIGN KEY (`foreign key name`) REFERENCES source_table(`foreign key name`),
ADD CONSTRAINT `constraint_name` FOREIGN KEY (`foreign key name`) REFERENCES source_table(`foreign key name`);
-- ---------------------------------------------------------------------------------------------------------------
-- How to seed data into a table
	-- download the table you want to seed from as a .csv file
	-- import it into your database
	-- take data columns from it to the column of the table u wanna seed it in
	-- INSERT DATA INTO TABLE INVOICES  from different tables 
INSERT INTO TABLE ('column_1', 'column_2', 'column_3')
SELECT 'column_1' FROM 'source_1,
SELECT 'column_2' FROM 'source_2,
SELECT 'column_3' FROM 'source_3,
GROUP BY
	'column_1', 
    'column_2', 
    'column_3';
-- ===============================================================================================================
-- QUESTIONS!
-- When to use VARCHAR or CHAR?
-- What's the difference between CHAR, VARCHAR, TEXT?
-- Storage engine must support FK? What does it mean exactly?
SHOW TABLE STATUS WHERE Name = 'table_name';
-- ===============================================================================================================

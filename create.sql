CREATE database IF NOT EXISTS lab_mysql;
USE lab_mysql;

CREATE table cars(`id` int AUTO_INCREMENT, 
					`vin` varchar(40) NOT NULL, 
					`manufacturer` varchar(30) NOT NULL, 
                    `model` varchar(40),
                    `year` int, 
                    `color` varchar(30), 
                    PRIMARY KEY(`id`));

CREATE table customers(`id` int AUTO_INCREMENT, 
						`cust_id` int NOT NULL, 
                        `cust_name` varchar(30) NOT NULL, 
                        `cust_phone` varchar(40),
                        `cust_email` varchar(40), 
                       `cust_adress` varchar(70), 
                       `cust_city` varchar(50), 
                       `cust_state` varchar(50), 
                       `cust_country` varchar(40), 
                       `cust_zipcode` int, 
                       PRIMARY KEY(`id`));

CREATE table salespersons(`id` int AUTO_INCREMENT, 
			`staff_id` varchar(30)NOT NULL, 
            `name` varchar(30)NOT NULL, 
            `store` varchar(50)NOT NULL, 
            PRIMARY KEY(`id`));                       


CREATE table invoices(`id` int AUTO_INCREMENT, `invoices_number` int, 
							`date` date NOT NULL, 
                            `car` int NOT NULL,
                            `customer` int NOT NULL, 
                            `salesperson` int NOT NULL, 
                            PRIMARY KEY(`id`),
						    FOREIGN KEY (`car`) REFERENCES cars(`id`),
							FOREIGN KEY (`customer`) REFERENCES customers(`id`),
							FOREIGN KEY (`salesperson`) REFERENCES salespersons(`id`));
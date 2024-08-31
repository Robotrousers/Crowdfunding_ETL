DROP TABLE campaign

--Create Contacts Table--
CREATE TABLE contacts (
	contact_id INT,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(50) NOT NULL,
	PRIMARY KEY (contact_id)
);

--Create Category Table--
CREATE TABLE category (
	category_id VARCHAR(10),
	category VARCHAR(20),
	PRIMARY KEY (category_id)
);

--Create Subcategory Table--
CREATE TABLE subcategory (
	subcategory_id VARCHAR(10),
	subcategory VARCHAR(20),
	PRIMARY KEY (subcategory_id)
);


--Create Contacts Table--
CREATE TABLE campaign (
	cf_id INT,
	contact_id INT,
	company_name VARCHAR(50),
	description VARCHAR(75),
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR (25),
	backers_count INT,
	country VARCHAR(10),
	currency VARCHAR(10),
	launch_date DATE,
	end_date DATE,
	category_id VARCHAR,
	subcategory_id VARCHAR,
	PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);


SELECT *
FROM campaign

SELECT *
FROM contacts

SELECT *
FROM category

SELECT *
FROM subcategory
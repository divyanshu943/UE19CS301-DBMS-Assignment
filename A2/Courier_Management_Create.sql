drop database courier;
create database courier;

\c courier

CREATE TABLE 	login
 (	login_id VARCHAR(40) NOT NULL ,
	user_name VARCHAR(40) NOT NULL ,
	password VARCHAR(40) NOT NULL,
	email_id VARCHAR(40) NOT NULL ,
	PRIMARY KEY (login_id)      );
	
	
CREATE TABLE 	admins
 (	admin_id INT  NOT NULL,
	name VARCHAR(30) NOT NULL, 
	mobile INT NOT NULL,
	office_id INT NOT NULL,
	cust_id INT NOT NULL,
	PRIMARY KEY (admin_id) );
	
	
CREATE TABLE 	manager
 (	mgr_id INT NOT NULL, 
	mgr_name VARCHAR(30) NOT NULL,
	mgr_mobile VARCHAR(30),
	mgr_email VARCHAR(30),
	mgr_address VARCHAR(50),
	office_id INT ,
	PRIMARY KEY (mgr_id),
	UNIQUE(office_id)	);


CREATE TABLE 	delivery
 (	name_of_courier VARCHAR(50),
	del_id INT NOT NULL,
	del_type VARCHAR NOT NULL,
	del_date DATE ,
	PRIMARY KEY (del_id) );


CREATE TABLE 	customer
 (	cus_id INT NOT NULL,
	fname VARCHAR(30) NOT NULL, 
	minit VARCHAR(20) ,
	lname VARCHAR(20),
	cus_mobile INT NOT NULL,
	cus_email VARCHAR(40) NOT NULL,
	cur_id INT NOT NULL,
	ship_id INT NOT NULL,
	PRIMARY KEY (cus_id) );


CREATE TABLE 	couriers
 (	cour_id INT  NOT NULL,
	shipment_id INT NOT NULL,
	office_id INT NOT NULL,
	courier_name VARCHAR(40),
	PRIMARY KEY (cour_id, courier_name)	);
	
	
CREATE TABLE 	shipments
 (	id INT  NOT NULL,
	weight_in_kg INT NOT NULL,
	date_of_sp DATE,
	from_city VARCHAR(20),
	to_city VARCHAR(20),
	PRIMARY KEY (id)	);
	
	
CREATE TABLE 	review
 (	review_id INT NOT NULL,
	customer_id INT NOT NULL,
	comments VARCHAR(100) NOT NULL,
	date_of_comm DATE,
	PRIMARY KEY (review_id) );

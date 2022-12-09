-- Table 1
CREATE TABLE admins (
	id BIGINT NOT NULL PRIMARY KEY,
	name VARCHAR (255) NOT NULL,
	emailadress VARCHAR NOT NULL,
	password VARCHAR NOT NULL
);
-- inserting values for table 1
INSERT INTO admins(id,name,emailadress,password)
VALUES(1,'candace','candace@gmail.com','123'),
(2,'chloe','chloe@gmail.com','1234'),
(3,'Jedidiah','jedidiah@gmail.com','12345')


-- Table 2
CREATE TABLE vendors (
	id BIGINT NOT NULL PRIMARY KEY,
	name VARCHAR (255) NOT NULL,
	emailadress VARCHAR NOT NULL,
	password VARCHAR NOT NULL
);
-- inserting values for table 2
INSERT INTO vendors(id,name,emailadress,password)
values(4,'elka','elka@gmail.com','123m'),
(5,'nesa','nesa@gmail.com','123n'),
(6,'blessing','blessing@gmail.com','123o')

-- Table 3
CREATE TABLE products (
	id BIGINT NOT NULL PRIMARY KEY,
	name VARCHAR (255) NOT NULL,
	price BIGINT NOT NULL,
	description VARCHAR NOT NULL,
	image BYTEA NULL,
	postedby VARCHAR (255) NOT NULL,
	customer_id  BIGINT NOT NULL,
	vendor_id  BIGINT NOT NULL,
	admin_id  BIGINT NOT NULL,
	wishlist_id  BIGINT NOT NULL,
	deliveryman_id BIGINT NOT NULL,
	category_id BIGINT NOT NULL,
	FOREIGN KEY (id) REFERENCES customers(id),
	FOREIGN KEY (id) REFERENCES vendors(id),
	FOREIGN KEY (id) REFERENCES admins(id),
	FOREIGN KEY (id) REFERENCES deliverymen(id),
	FOREIGN KEY (id) REFERENCES categories (id)											  
);
-- inserting values for table 3
INSERT INTO products(id,name,price,password)
VALUES(1,'candace','candace@gmail.com','123'),
(2,'chloe','chloe@gmail.com','1234'),
(3,'Jedidiah','jedidiah@gmail.com','12345')
-- Table 4
CREATE TABLE categories (
	id BIGINT NOT NULL PRIMARY KEY,
	name VARCHAR (255) not null
);
-- inserting values for table 4
-- Table 5
CREATE TABLE customers (
	id BIGINT NOT NULL PRIMARY KEY,
	name VARCHAR (255) NOT NULL,
	emailadress VARCHAR NOT NULL,
	contact VARCHAR NOT NULL,
	password VARCHAR NOT NULL,
	location VARCHAR NOT NULL
);
-- inserting values for table 5
-- Table 6
CREATE TABLE wishlists (
	id BIGINT NOT NULL PRIMARY KEY,
	name VARCHAR (255) NOT NULL,
	customer_id  BIGINT NOT NULL,
	product_id  BIGINT NOT NULL,
	FOREIGN KEY (id) REFERENCES customers(id),
	FOREIGN KEY (id) REFERENCES products(id)
	);
	-- inserting values for table 6
-- Table 7
CREATE TABLE orders (
	id BIGINT NOT NULL PRIMARY KEY,
	name VARCHAR (255) NOT NULL,
	status VARCHAR (255) NOT NULL,
	customer_id  BIGINT NOT NULL,
	admin_id BIGINT NOT NULL,
	FOREIGN KEY (id) REFERENCES customers(id),
	FOREIGN KEY (id) REFERENCES admins(id)
);
-- inserting values for table 7
-- Table 8
CREATE TABLE payments (
	id BIGINT NOT NULL PRIMARY KEY,
	name VARCHAR (255) NOT NULL,
	customer_id  BIGINT NOT NULL,
	admin_id  BIGINT NOT NULL,
	order_id  BIGINT NOT NULL,
	FOREIGN KEY (id) REFERENCES customers(id),
	FOREIGN KEY (id) REFERENCES admins(id),
	FOREIGN KEY (id) REFERENCES orders(id)
);
-- inserting values for table 8
-- Table 9
CREATE TABLE deliverymen (
	id BIGINT NOT NULL PRIMARY KEY,
	name VARCHAR (255) NOT NULL,
	emailadress VARCHAR (255) NOT NULL,
	order_id  BIGINT NOT NULL,
	admin_id  BIGINT NOT NULL,
	FOREIGN KEY (id) REFERENCES orders(id),
	FOREIGN KEY (id) REFERENCES admins(id)
);
-- inserting values for table 9
-- Table 10
CREATE TABLE groceryshops (
	id BIGINT NOT NULL PRIMARY KEY,
	customer_id  BIGINT NOT NULL,
	product_id  BIGINT NOT NULL,
	admin_id  BIGINT NOT NULL,
	deliveryman_id  BIGINT NOT NULL,
	vendor_id BIGINT NOT NULL,
	FOREIGN KEY (id) REFERENCES customers(id),
	FOREIGN KEY (id) REFERENCES products (id),
	FOREIGN KEY (id) REFERENCES admins(id),
	FOREIGN KEY (id) REFERENCES deliverymen(id),
	FOREIGN KEY (id) REFERENCES vendors(id)
);
-- inserting values for table 10
-- Table 11
CREATE TABLE users (
	id BIGINT NOT NULL PRIMARY KEY,
	type VARCHAR (255) NOT NULL
	
);
-- inserting values for table 11




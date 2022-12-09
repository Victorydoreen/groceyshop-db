INSERT INTO categories(id,name)
VALUES(1,'Fruits'),
(2,'Meats'),
(3,'Snacks')

SELECT * FROM categories

INSERT INTO vendors(id,name,emailadress,password)
values(4,'elka','elka@gmail.com','123m'),
(5,'nesa','nesa@gmail.com','123n'),
(6,'blessing','blessing@gmail.com','123o')

UPDATE vendors
SET id=2
WHERE id=4;

UPDATE vendors
SET id=3
WHERE id=6;

UPDATE vendors
SET id=2
WHERE id=4;

-- insert into table deliverymen
INSERT INTO deliverymen(id,name,emailadress, order_id,admin_id)
VALUES(1,'Joel','joel@gmail.com' ,1,1),
(2,'barnes','barnes@gmail.com',2,2)
SELECT * FROM deliverymen

-- insert into table orders
INSERT INTO orders(id,name,status,admin_id)
VALUES(1,'fruitsorder','comfirmed',1),
(2,'cakesorder','pending',2)
SELECT * FROM orders

-- insert into table customers
INSERT INTO customers(id,name,emailadress,contact,password,location)
VALUES(1,'Tatiana','tatiana@gmail.com','4372','12ws','Texas'),
(2,'Kiera','kiera@gmail.com','5572','192ws','dallas')

UPDATE Customers
SET id=1
WHERE id=13;

UPDATE Customers
SET id=2
WHERE id=14;


-- insert into table payments
INSERT INTO payments(id,name,customer_id,admin_id,order_id)
VALUES(1,'fruitspaid',1,1,1)
SELECT * FROM payments

-- insert into table wishlist
INSERT INTO wishlist(id,name,customer_id,product_id)
VALUES(1,'add to cart',1,1),
(2,'add to cart2',2,2)

-- Insert into table products
INSERT INTO products(id,name,price,description,postedby,customer_id,vendor_id,
					 admin_id,wishlist_id,deliveryman_id,category_id)
values(2,'mangoes',2000,'wow','admin',2,2,2,2,2,2),
(3,'beef',15000,'yummy','vendor',3,3,3,3,3,3),
(4,'goats meat',20000,'taste it','admin',4,4,4,4,4,4),
(5,'wedding cakes',100000,'dont miss','vendor',5,5,5,5,5,5),
(6,'birthday cakes',50000,'age with us','vendor',6,6,6,6,6,6),
(7,'oranges',1000,'fresh oh my','admin',7,7,7,7,7,7)

SELECT * FROM products

-- insert into table groceryshops
INSERT INTO()
VALUES()

-- insert into table users
INSERT INTO users (id,type)
VALUES(24,'admin'),
(25,'vendor'),
(26,'deliverymen'),
(27,'customers')
SELECT* FROM users


-- Question 1 (ii) Make orders for a few products.
SELECT name FROM orders
WHERE status='comfirmed';

-- Question 1 (iii) Select all products posted by the client(admin)
SELECT name FROM products
WHERE postedby='admins';

-- Question 1 (iv) Select all products posted by the vendors.
SELECT name FROM products
WHERE postedby='vendors';

-- Question 1(v) select all users from the system
SELECT* FROM users

-- Question 1 (vi) Select all users with a user-type of vendor(seller)
SELECT* FROM users
WHERE type='vendor';

-- Question 1(vii) Select all users with a user-type of admin and buyer
SELECT* FROM users
WHERE type='admin' AND type='customers';











-- ,14,5,16)
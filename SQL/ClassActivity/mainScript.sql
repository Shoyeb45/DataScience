create database salesdatabase;
use salesdatabase;

show tables;
create table offices (
	officeCode VARCHAR(10) PRIMARY KEY,
    city VARCHAR(50) NOT NULL,
    phone VARCHAR(50) NOT NULL,
    addressLine1 VARCHAR(50) NOT NULL,
    addressLine2 VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50) NOT NULL,
    postalCode VARCHAR(15) NOT NULL,
    territory VARCHAR(10) NOT NULL
);

create table employee (
	employeeNumber INT  PRIMARY KEY,
    lastName VARCHAR(50) NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    extension VARCHAR(10) NOT NULL,
    email VARCHAR(100) NOT NULL,
    officeCode VARCHAR(10),  -- FOREIGN KEY REFERENCES offices(officeCode))
    reportsTo INT, -- FOREIGN KEY REFERENCES employees(employeeNumber)
    jobTitle VARCHAR(50) NOT NULL,
    
    constraint 
    foreign key (officeCode)
    references offices(officeCode),
    
    constraint 
    foreign key (reportsTo)
    references employee(employeeNumber)
);

create table customers (
	customerNumber int primary key,
    customerName VARCHAR(50) NOT NULL,
    contactLastName VARCHAR(50)  NOT NULL,
    contactFirstName VARCHAR(50) NOT NULL,
    phone VARCHAR(50) NOT NULL,
    addressLine1 VARCHAR(50) NOT NULL,
    addressLine2 VARCHAR(50),
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50),
    postalCode VARCHAR(15),
    country VARCHAR(50) NOT NULL,
    salesRepEmployeeNumber INT, -- FOREIGN KEY REFERENCES employees(employeeNumber)): Reference to the sales representative for the customer.
    creditLimit DECIMAL(10, 2),
    
    constraint
    foreign key (salesRepEmployeeNumber)
    references employee(employeeNumber)
);


create table payments (
	customerNumber INT,  -- FOREIGN KEY REFERENCES customers(customerNumber)
    checkNumber VARCHAR(50) PRIMARY KEY,
    paymentDate DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    constraint 
    foreign key (customerNumber)
    references customers(customerNumber)
);

create table orders (
	orderNumber INT PRIMARY KEY,
    orderDate DATE NOT NULL,
    requiredDate DATE NOT NULL,
    shippedDate DATE,
    status VARCHAR(15) NOT NULL,
    comments TEXT,
    customerNumber INT,   -- FOREIGN KEY REFERENCES customers(customerNumber))
	constraint 
    foreign key (customerNumber)
    references customers(customerNumber)
);

create table productlines (
	productLine VARCHAR(50) PRIMARY KEY,
    textDescription VARCHAR(4000),
    htmlDescription MEDIUMTEXT,
    image MEDIUMBLOB
);

create table products (
	productCode VARCHAR(15) PRIMARY KEY,
    productName VARCHAR(70) NOT NULL,
    productLine VARCHAR(50),      -- FOREIGN KEY REFERENCES productlines(productLine)): Reference to the product line
    productScale VARCHAR(10) NOT NULL,
    productVendor VARCHAR(50) NOT NULL,
    productDescription TEXT NOT NULL,
    quantityInStock SMALLINT NOT NULL,
    buyPrice DECIMAL(10, 2) NOT NULL,
    MSRP DECIMAL(10, 2) NOT NULL,
    
    constraint 
    foreign key (productLine)
    references productlines(productLine)
);

create table orderdetails (
	orderNumber INT,     -- FOREIGN KEY REFERENCES orders(orderNumber)): Reference to the order.
    productCode VARCHAR(15),     -- FOREIGN KEY REFERENCES products(productCode)): Reference to the product.
    quantityOrdered INT NOT NULL,
    priceEach DECIMAL(10, 2) NOT NULL,
    orderLineNumber SMALLINT NOT NULL,
    primary key (orderNumber ,  productCode),
		
	constraint 
    foreign key (orderNumber)
    references orders(orderNumber),
    
    constraint
    foreign key (productCode)
    references products(productCode)
);

insert into productlines(productLine, textDescription) values
('Classic Cars', 'Cars from the 1950s and 1960s'),
('Motorcycles', 'A range of motorcycles');

describe products;
insert into products values
('S10_1678', '1969 Harley Davidson Ultimate Chopper', 'Motorcycles', '1:10', 'Min Lin Diecast', 'This replica features working kickstand, front suspension, gear-shift lever.', 7933, 48.81, 95.70);

insert into offices values
('1', 'San Francisco', '+1 650 219 4782', '100 Market Street', 'Suite 300', 'CA', 'USA', '94080', 'NA');

insert into employee values
(1002, 'Murphy', 'Diane', 'x5800', 'dmurphy@classicmodelcars.com', '1', NULL, 'President');
insert into employee values
(1370, 'Murphy', 'Cilian', 'x5800', 'dmurphy@classicmodelcars.com', '1', NULL, 'President');

describe customers;
insert into customers(customerNumber, customerName, contactLastName, contactFirstName, phone, addressLine1, addressLine2, city, state, country, salesRepEmployeeNumber, creditLimit) values
(103, 'Atelier graphique', 'Schmitt', 'Carine', "012834",'40.32.2555', '54, rue Royale', "Paris", 'Nantes', 'France', 1370, 21000.00);

describe orders;
insert into orders values
(10100, '2003-01-06', '2003-01-13', '2003-01-10', 'Shipped', "--", 103);

insert into orderdetails values
(10100, 'S10_1678', 30, 95.70, 1);

insert into payments values
(103, 'HQ336336', '2004-10-19', 6066.78);

select * from customers;
select * from products;

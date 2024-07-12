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
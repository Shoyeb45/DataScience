# Description of Tables
1. productlines Table
   - productLine (VARCHAR(50), PRIMARY KEY): Unique identifier for each product line.
   - textDescription (VARCHAR(4000)): Brief description of the product line.
   - htmlDescription (MEDIUMTEXT): Detailed HTML description of the product line.
   - image (MEDIUMBLOB): Image associated with the product line.

2. products Table
    - productCode (VARCHAR(15), PRIMARY KEY): Unique identifier for each product.
    - productName (VARCHAR(70), NOT NULL): Name of the product.
productLine (VARCHAR(50), FOREIGN KEY REFERENCES productlines(productLine)): Reference to the product line.
    - productScale (VARCHAR(10), NOT NULL): Scale of the product.
    - productVendor (VARCHAR(50), NOT NULL): Vendor of the product.
    - productDescription (TEXT, NOT NULL): Description of the product.
    - quantityInStock (SMALLINT, NOT NULL): Quantity of the product in stock.
    - buyPrice (DECIMAL(10, 2), NOT NULL): Purchase price of the product.
    - MSRP (DECIMAL(10, 2), NOT NULL): Manufacturer's suggested retail price.

3. employees Table
    - employeeNumber (INT, PRIMARY KEY): Unique identifier for each employee.
    - lastName (VARCHAR(50), NOT NULL): Last name of the employee.
    - firstName (VARCHAR(50), NOT NULL): First name of the employee.
extension (VARCHAR(10), NOT NULL): Phone extension for the employee.
    - email (VARCHAR(100), NOT NULL): Email address of the employee.
    - officeCode (VARCHAR(10), FOREIGN KEY REFERENCES offices(officeCode)): Reference to the office where the employee works.
    - reportsTo (INT, FOREIGN KEY REFERENCES employees(employeeNumber)): Reference to the employee's manager.
    - jobTitle (VARCHAR(50), NOT NULL): Job title of the employee.

4. offices Table
    - officeCode (VARCHAR(10), PRIMARY KEY): Unique identifier for each office.
    - city (VARCHAR(50), NOT NULL): City where the office is located.
    - phone (VARCHAR(50), NOT NULL): Phone number of the office.
addressLine1 (VARCHAR(50), NOT NULL): Primary address line of the office.
    - addressLine2 (VARCHAR(50)): Secondary address line of the office.
    - state (VARCHAR(50)): State where the office is located.
    - country (VARCHAR(50), NOT NULL): Country where the office is located.
    - postalCode (VARCHAR(15), NOT NULL): Postal code of the office.
    - territory (VARCHAR(10), NOT NULL): Territory where the office operates.

5. customers Table
    - customerNumber (INT, PRIMARY KEY): Unique identifier for each customer.
    - customerName (VARCHAR(50), NOT NULL): Name of the customer.
    - contactLastName (VARCHAR(50), NOT NULL): Last name of the customer's contact person.
    - contactFirstName (VARCHAR(50), NOT NULL): First name of the     - customer's contact person.
    - phone (VARCHAR(50), NOT NULL): Phone number of the customer.
    - addressLine1 (VARCHAR(50), NOT NULL): Primary address line of the customer.
    - addressLine2 (VARCHAR(50)): Secondary address line of the customer.
    - city (VARCHAR(50), NOT NULL): City where the customer is located.
    - state (VARCHAR(50)): State where the customer is located.
    - postalCode (VARCHAR(15)): Postal code of the customer.
    - country (VARCHAR(50), NOT NULL): Country where the customer is located.
    - salesRepEmployeeNumber (INT, FOREIGN KEY REFERENCES employees(employeeNumber)): Reference to the sales representative for the 

6. orders Table
    - orderNumber (INT, PRIMARY KEY): Unique identifier for each order.
    - orderDate (DATE, NOT NULL): Date when the order was placed.
    - requiredDate (DATE, NOT NULL): Date when the order is required.
    - shippedDate (DATE): Date when the order was shipped.
    - status (VARCHAR(15), NOT NULL): Status of the order.
    - comments (TEXT): Comments about the order.
    - customerNumber (INT, FOREIGN KEY REFERENCES customers(customerNumber)): Reference to the customer who placed the order.

7. orderdetails Table
    - orderNumber (INT, FOREIGN KEY REFERENCES orders(orderNumber)): Reference to the order.
    - productCode (VARCHAR(15), FOREIGN KEY REFERENCES products(productCode)): Reference to the product.
    - quantityOrdered (INT, NOT NULL): Quantity of the product ordered.
    - priceEach (DECIMAL(10, 2), NOT NULL): Price of each product.
    - orderLineNumber (SMALLINT, NOT NULL): Line number for the order detail.
    - Primary Key: Combination of orderNumber and productCode.

8. payments Table
    - customerNumber (INT, FOREIGN KEY REFERENCES customers(customerNumber)): Reference to the customer.
    - checkNumber (VARCHAR(50), PRIMARY KEY): Unique identifier for the payment.
    - paymentDate (DATE, NOT NULL): Date when the payment was made.
    - amount (DECIMAL(10, 2), NOT NULL): Amount of the payment.

# ER Diagram
![alt text](image.png)
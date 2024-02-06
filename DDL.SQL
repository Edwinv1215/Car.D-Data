

CREATE TABLE Customers (
    Customer_ID SERIAL PRIMARY KEY,
    Name VARCHAR(200),
    Email VARCHAR(300),
    Phone VARCHAR(20)
);

CREATE TABLE Cars (
    Car_ID SERIAL PRIMARY KEY
    VinNumber VARCHAR(200),
    Make VARCHAR(200),
    Model VARCHAR(200),
    Year INT,
    "New_or_Used" VARCHAR(10)
);

CREATE TABLE Salespersons (
    Salesperson_ID SERIAL PRIMARY KEY,
    Name VARCHAR(200),
    Email VARCHAR(300),
    Phone VARCHAR(20)
);

CREATE TABLE Mechanics (
    Mechanic_ID SERIAL PRIMARY KEY,
    Name VARCHAR(200),
    Specialization VARCHAR(500)
);

CREATE TABLE ServiceTickets (
    ServiceTickets_ID SERIAL PRIMARY KEY,
    Customers_ID INT,
    Car_ID SERIAL,
    DateOfService VARCHAR(20),
    Description VARCHAR(500),
    FOREIGN KEY (Customers_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Car_ID) REFERENCES Cars(Car_ID)
);

CREATE TABLE ServiceHistory (
    ServiceHistory_ID SERIAL,
    Car_ID INT,
    DateOfService VARCHAR(20),
    Details VARCHAR(200),
    FOREIGN KEY (Car_ID) REFERENCES Cars(Car_ID)
);

CREATE TABLE Invoices (
    Invoice_ID SERIAL,
    Salesperson_ID INT,
    Customer_ID INT,
    Car_ID INT,
    SaleDate VARCHAR(20),
    Amount FLOAT,
   FOREIGN KEY (Salesperson_ID) REFERENCES Salespersons(Salesperson_ID),
   FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
   FOREIGN KEY (Car_ID) REFERENCES Cars(Car_ID)
);

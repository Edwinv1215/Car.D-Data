-- Inserting customers
INSERT INTO Customers (Name, Email, Phone) VALUES ('Edwin Valentin', 'evalentin@example.com', '917-236-0123');
INSERT INTO Customers (Name, Email, Phone) VALUES ('Rachel Valentin', 'rvalentin@example.com', '347-543-0456');

-- Inserting cars
INSERT INTO Cars (VinNumber, Make, Model, Year, "New_or_Used") VALUES ('7HGCM82633A004346', 'Honda', 'Accord', 2024, 'New');
INSERT INTO Cars (VinNumber, Make, Model, Year, "New_or_Used") VALUES ('5CZRE38578G704629', 'Honda', 'Civic', 2019, 'Used');

-- Inserting salespersons
INSERT INTO Salespersons (Name, Email, Phone) VALUES ('Jenny Johnson', 'Jennyjohnson@example.com', '347-877-0789');
INSERT INTO Salespersons (Name, Email, Phone) VALUES ('Bob Lee', 'boblee@example.com', '347-665-0122');

-- Inserting mechanics
INSERT INTO Mechanics (Name, Specialization) VALUES ('Juan Gonzales', 'Engine Specialist');
INSERT INTO Mechanics (Name, Specialization) VALUES ('Carlos Santiago', 'Transmission Specialist');

-- Inserting service tickets
INSERT INTO ServiceTickets (Customers_ID, Car_ID, DateOfService, Description) VALUES (10, 137, '2021-06-15', 'Oil Change');
INSERT INTO ServiceTickets (Customers_ID, Car_ID, DateOfService, Description) VALUES (22, 246, '2021-06-20', 'Tire Replacement');

-- Inserting service history
INSERT INTO ServiceHistory (Car_ID, DateOfService, Details) VALUES (137, '2021-06-15', 'Regular Maintenance Check');
INSERT INTO ServiceHistory (Car_ID, DateOfService, Details) VALUES (246, '2021-06-20', 'Tire Change');

-- Inserting invoices
INSERT INTO Invoices (Salesperson_ID, Customer_ID, Car_ID, SaleDate, Amount) VALUES (3225, 10, 137, '2021-07-01', 22000.00);
INSERT INTO Invoices (Salesperson_ID, Customer_ID, Car_ID, SaleDate, Amount) VALUES (3860, 22, 246, '2021-07-10', 18000.00);

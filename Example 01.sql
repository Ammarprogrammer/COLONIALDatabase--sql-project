CREATE DATABASE Example_1;
USE Example_1;

CREATE TABLE Customers (
    CustomerNum CHAR(4) PRIMARY KEY,
    LastName CHAR(30),
    FirstName CHAR(30),
    Address CHAR(35),
    Phone CHAR(12)
);

CREATE TABLE Reservations (
    ReservationID CHAR(4) PRIMARY KEY,
    CustomerNum CHAR(4),
    TripName CHAR(75),
    TripDate DATE,
    FOREIGN KEY (CustomerNum) REFERENCES Customers(CustomerNum)
);


INSERT INTO Customers VALUES ('101', 'Smith', 'John', '123 Main St.', '555-1234');
INSERT INTO Customers VALUES ('102', 'Doe', 'Jane', '456 Elm St.', '555-5678');
INSERT INTO Customers VALUES ('103', 'Johnson', 'Emily', '789 Oak St.', '555-9876');
INSERT INTO Customers VALUES ('104', 'Williams', 'Michael', '321 Pine St.', '555-2468');
INSERT INTO Customers VALUES ('105', 'Brown', 'Olivia', '654 Maple St.', '555-1357');


INSERT INTO Reservations VALUES ('R001', '101', 'Trip1', '2024-06-15');
INSERT INTO Reservations VALUES ('R002', '102', 'Trip3', '2024-06-18');
INSERT INTO Reservations VALUES ('R003', '103', 'Trip2', '2024-06-20');
INSERT INTO Reservations VALUES ('R004', '104', 'Trip4', '2024-06-22');
INSERT INTO Reservations VALUES ('R005', '105', 'Trip1', '2024-06-25');

select * from Reservations;

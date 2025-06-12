CREATE Database Example_2;

USE Example_2;

CREATE TABLE Customers (
    CustomerNum CHAR(4) PRIMARY KEY,
    LastName CHAR(30),
    FirstName CHAR(30),
    Address CHAR(35),
    Phone CHAR(12)
);

CREATE TABLE Trips (
    TripID CHAR(4) PRIMARY KEY,
    TripName CHAR(75),
    TripDate DATE
);

CREATE TABLE Reservations (
    ReservationID CHAR(4) PRIMARY KEY,
    CustomerNum CHAR(4),
    TripID CHAR(4),
    FOREIGN KEY (CustomerNum) REFERENCES Customers(CustomerNum),
    FOREIGN KEY (TripID) REFERENCES Trips(TripID)
);

INSERT INTO Trips VALUES ('T001', 'Trip1', '2024-06-15');
INSERT INTO Trips VALUES ('T002', 'Trip3', '2024-06-18');
INSERT INTO Trips VALUES ('T003', 'Trip2', '2024-06-20');
INSERT INTO Trips VALUES ('T004', 'Trip4', '2024-06-22');
INSERT INTO Trips VALUES ('T005', 'Trip1', '2024-06-25');

INSERT INTO Reservations VALUES ('R001', '101', 'T001');
INSERT INTO Reservations VALUES ('R002', '102', 'T002');
INSERT INTO Reservations VALUES ('R003', '103', 'T003');
INSERT INTO Reservations VALUES ('R004', '104', 'T004');
INSERT INTO Reservations VALUES ('R005', '105', 'T005');

INSERT INTO Customers VALUES ('101', 'Smith', 'John', '123 Main St.', '555-1234');
INSERT INTO Customers VALUES ('102', 'Doe', 'Jane', '456 Elm St.', '555-5678');
INSERT INTO Customers VALUES ('103', 'Johnson', 'Emily', '789 Oak St.', '555-9876');
INSERT INTO Customers VALUES ('104', 'Williams', 'Michael', '321 Pine St.', '555-2468');
INSERT INTO Customers VALUES ('105', 'Brown', 'Olivia', '654 Maple St.', '555-1357');

SELECT * from Customers;
SELECT * from reservations;




SELECT * from trips;





CREATE DATABASE Example;

USE Example;

CREATE TABLE CustomerReservations (
    CustomerNum CHAR(4),
    LastName CHAR(30),
    FirstName CHAR(30),
    Address CHAR(35),
    Phone CHAR(12),
    TripName CHAR(75),
    TripDate DATE
);

INSERT INTO CustomerReservations VALUES ('101', 'Smith', 'John', '123 Main St.', '555-1234', 'Trip1', '2024-06-15');
INSERT INTO CustomerReservations VALUES ('102', 'Doe', 'Jane', '456 Elm St.', '555-5678', 'Trip3', '2024-06-18');
INSERT INTO CustomerReservations VALUES ('103', 'Johnson', 'Emily', '789 Oak St.', '555-9876', 'Trip2', '2024-06-20');
INSERT INTO CustomerReservations VALUES ('104', 'Williams', 'Michael', '321 Pine St.', '555-2468', 'Trip4', '2024-06-22');
INSERT INTO CustomerReservations VALUES ('105', 'Brown', 'Olivia', '654 Maple St.', '555-1357', 'Trip1', '2024-06-25');

SELECT *from CustomerReservations;

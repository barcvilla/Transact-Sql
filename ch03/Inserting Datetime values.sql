CREATE TABLE DateTimeExample
( ID INT NOT NULL IDENTITY PRIMARY KEY,
  MyDate DATETIME2(0) NOT NULL,
  MyValue VARCHAR(25) NOT NULL
);
GO
INSERT INTO DateTimeExample (MyDate, MyValue)
VALUES 
('2009-01-02 10:30', 'Bike'),
('2009-01-03 13:00', 'Trike'),
('2009-01-03 13:10', 'Bell'),
('2009-01-03 17:35', 'Seat');

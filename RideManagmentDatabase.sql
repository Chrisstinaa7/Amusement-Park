Create database RideManagement 
drop database RideManagement

--RIDE TABLE
CREATE TABLE Ride (
    Ride_ID CHAR(8) not null,
    Ride_Name VARCHAR(50) not null,
    Duration TIME not null,
    Height numeric(4,2) not null,
    Type_ Varchar(30) not null,
    Capacity Numeric(30,0) not null,
	CONSTRAINT Ride_pk PRIMARY KEY(Ride_ID) 
)
INSERT INTO Ride (Ride_ID, Ride_Name, Duration, Height, Type_, Capacity) VALUES
('RID001', 'Roller Coaster', '00:02:30', 20.5, 'Other Heighted Rides', 20),
('RID002', 'Ferris Wheel', '00:05:00', 15.0, 'Other Heighted Rides', 30),
('RID003', 'Carousel', '00:03:00', 10.2, 'Other Heighted Rides', 40),
('RID004', 'Water Slide', '00:01:30', 12.7, 'Water Ride', 15),
('RID005', 'Haunted House', '00:04:00', 8.9, 'Other Heighted Rides', 25),
('RID006', 'Teacups', '00:02:00', 6.5, 'Other Heighted Rides', 35),
('RID007', 'Bumper Cars', '00:03:30', 10.8, 'Other Heighted Rides', 18),
('RID008', 'Giant Drop', '00:01:45', 18.3, 'Other Heighted Rides', 22),
('RID009', 'Pirate Ship', '00:04:30', 14.6, 'Other Heighted Rides', 28),
('RID010', 'Log Flume', '00:02:45', 11.2, 'Water Ride', 17),
('RID011', 'Swing Ride', '00:03:15', 9.7, 'Other Heighted Rides', 23),
('RID012', 'Bungee Jump', '00:00:30', 25.0, 'Other Heighted Rides', 8),
('RID013', 'Giant Wheel', '00:06:00', 17.5, 'Other Heighted Rides', 32),
('RID014', 'Train Ride', '00:03:30', 10.0, 'Other Heighted Rides', 26),
('RID015', 'Sky Coaster', '00:02:15', 22.8, 'Other Heighted Rides', 12);



--GUEST TABLE
CREATE TABLE Guest (
    Guest_ID char(8) not null,
    G_FirstName VARCHAR(50) not null,
    G_LastName VARCHAR(50) not null,
    Guest_Age Numeric(30,0) not null,
    G_DOB DATE not null,
   CONSTRAINT Guest_pk PRIMARY KEY(Guest_ID)
   )

 INSERT INTO Guest (Guest_ID, G_FirstName, G_LastName, Guest_Age, G_DOB) VALUES
('GID001', 'Abdullah', 'Khan', 25, '1998-05-12'),
('GID002', 'Aisha', 'Ahmed', 28, '1995-09-21'),
('GID003', 'Ali', 'Malik', 35, '1988-07-07'),
('GID004', 'Amna', 'Riaz', 32, '1991-03-04'),
('GID005', 'Bilal', 'Hussain', 29, '1994-11-17'),
('GID006', 'Fariha', 'Khalid', 27, '1996-02-28'),
('GID007', 'Farhan', 'Akhtar', 31, '1992-12-15'),
('GID008', 'Gulzar', 'Abbasi', 30, '1993-08-09'),
('GID009', 'Hadia', 'Chaudhry', 26, '1997-01-23'),
('GID010', 'Hassan', 'Khan', 33, '1990-06-09'),
('GID011', 'Iqra', 'Ali', 24, '1999-04-19'),
('GID012', 'Jawad', 'Raza', 27, '1996-02-10'),
('GID013', 'Kiran', 'Malik', 29, '1994-11-02'),
('GID014', 'Mahnoor', 'Ahmed', 31, '1992-12-25'),
('GID015', 'Mansoor', 'Nawaz', 28, '1995-09-08'),
('GID016', 'Nadia', 'Khan', 34, '1989-10-31'),
('GID017', 'Noman', 'Hussain', 25, '1998-06-16'),
('GID018', 'Qasim', 'Farooq', 32, '1991-03-23'),
('GID019', 'Rabia', 'Khalid', 26, '1997-01-06'),
('GID020', 'Raheel', 'Akram', 29, '1994-08-13'),
('GID021', 'Saba', 'Ahmed', 30, '1993-07-01'),
('GID022', 'Saif', 'Rashid', 27, '1996-02-20'),
('GID023', 'Sana', 'Malik', 33, '1990-09-29'),
('GID024', 'Tahir', 'Khan', 24, '1999-05-09'),
('GID025', 'Tania', 'Raza', 31, '1992-12-03'),
('GID026', 'Umar', 'Akhtar', 28, '1995-08-24'),
('GID027', 'Wajahat', 'Abbasi', 35, '1988-07-13'),
('GID028', 'Yasmeen', 'Chaudhry', 32, '1991-03-28'),
('GID029', 'Zainab', 'Riaz', 26, '1997-01-12'),
('GID030', 'Zohaib', 'Hassan', 29, '1994-08-31');

 --Query to calculate age
select Guest_ID, G_FirstName, G_LastName, Guest_Age, G_DOB, DATEDIFF(YEAR, G_DOB, GETDATE()) as calculated_age
from Guest
 
--TICKET TABLE
CREATE TABLE Ticket (
    Ticket_ID Char(8) not null ,
    Purchase_Date DATE not null,
    Price Numeric(30,0) not null,
    CONSTRAINT Ticket_pk PRIMARY KEY(Ticket_ID)
 )
INSERT INTO Ticket (Ticket_ID, Purchase_Date, Price)
VALUES
('T001', '2023-06-19', 350),
('T002', '2023-06-19', 350),
('T003', '2023-06-19', 350),
('T004', '2023-06-19', 350),
('T005', '2023-06-19', 350),
('T006', '2023-06-19', 350),
('T007', '2023-06-20', 350),
('T008', '2023-06-20', 350),
('T009', '2023-06-20', 350),
('T010', '2023-06-20', 350),
('T011', '2023-06-20', 350),
('T012', '2023-06-20', 350),
('T013', '2023-06-21', 350),
('T014', '2023-06-21', 350),
('T015', '2023-06-21', 350),
('T016', '2023-06-21', 350),
('T017', '2023-06-21', 350),
('T018', '2023-06-21', 350),
('T019', '2023-06-22', 350),
('T020', '2023-06-22', 350),
('T021', '2023-06-22', 350),
('T022', '2023-06-22', 350),
('T023', '2023-06-22', 350),
('T024', '2023-06-22', 350),
('T025', '2023-06-23', 350),
('T026', '2023-06-23', 350),
('T027', '2023-06-23', 350),
('T028', '2023-06-23', 350),
('T029', '2023-06-23', 350),
('T030', '2023-06-23', 350),
('T031', '2023-06-24', 350),
('T032', '2023-06-24', 350),
('T033', '2023-06-24', 350),
('T034', '2023-06-24', 350),
('T035', '2023-06-24', 350),
('T036', '2023-06-24', 350),
('T037', '2023-06-25', 550),
('T038', '2023-06-25', 550),
('T039', '2023-06-25', 550),
('T040', '2023-06-25', 550),
('T041', '2023-06-25', 550),
('T042', '2023-06-25', 550),
('T043', '2023-06-25', 550),
('T044', '2023-06-25', 550),
('T045', '2023-06-25', 550),
('T046', '2023-06-25', 550),
('T047', '2023-06-25', 550),
('T048', '2023-06-25', 550),
('T049', '2023-06-26', 550),
('T050', '2023-06-26', 550),
('T051', '2023-06-26', 550),
('T052', '2023-06-26', 550),
('T053', '2023-06-26', 550),
('T054', '2023-06-26', 550),
('T055', '2023-06-27', 350),
('T056', '2023-06-27', 350),
('T057', '2023-06-27', 350),
('T058', '2023-06-27', 350),
('T059', '2023-06-27', 350),
('T060', '2023-06-27', 350),
('T061', '2023-06-28', 350),
('T062', '2023-06-28', 350),
('T063', '2023-06-28', 350),
('T064', '2023-06-28', 350),
('T065', '2023-06-28', 350),
('T066', '2023-06-28', 350),
('T067', '2023-06-29', 350),
('T068', '2023-06-29', 350),
('T069', '2023-06-29', 350),
('T070', '2023-06-29', 350),
('T071', '2023-06-29', 350),
('T072', '2023-06-29', 350),
('T073', '2023-06-30', 350),
('T074', '2023-06-30', 350),
('T075', '2023-06-30', 350),
('T076', '2023-06-30', 350),
('T077', '2023-06-30', 350),
('T078', '2023-06-30', 350),
('T079', '2023-07-01', 350),
('T080', '2023-07-01', 350),
('T081', '2023-07-01', 350),
('T082', '2023-07-01', 350),
('T083', '2023-07-01', 350),
('T084', '2023-07-01', 350),
('T085', '2023-07-02', 350),
('T086', '2023-07-02', 350),
('T087', '2023-07-02', 350),
('T088', '2023-07-02', 350),
('T089', '2023-07-02', 350),
('T090', '2023-07-02', 350),
('T091', '2023-07-03', 350),
('T092', '2023-07-03', 350),
('T093', '2023-07-03', 350),
('T094', '2023-07-03', 350),
('T095', '2023-07-03', 350),
('T096', '2023-07-03', 350),
('T097', '2023-07-03', 350),
('T098', '2023-07-03', 350),
('T099', '2023-07-03', 350),
('T100', '2023-07-03', 350);

-- Update the price to 550 for Sunday tickets
UPDATE Ticket
SET Price = 550
WHERE DATEPART(DW, Purchase_Date) = 1; -- Sunday (1 represents Sunday in DATEPART)

--GUEST RIDE TOKEN TABLE
CREATE TABLE Guest_Ride_Token (
    Ride_ID CHAR(8) not null,
    Guest_ID CHAR(8),
    Ticket_ID CHAR(8),
    CONSTRAINT Ride_fk FOREIGN KEY (Ride_ID) REFERENCES Ride(Ride_ID),
    CONSTRAINT Guest_fk FOREIGN KEY (Guest_ID) REFERENCES Guest(Guest_ID),
    CONSTRAINT Ticket_fk FOREIGN KEY (Ticket_ID) REFERENCES Ticket(Ticket_ID)
	)
INSERT INTO Guest_Ride_Token (Ride_ID, Guest_ID, Ticket_ID)
VALUES
('RID001', 'GID001', 'T001'), --Same date tickets for different rides
('RID002', 'GID002', 'T002'),
('RID003', 'GID003', 'T003'),
('RID004', 'GID004', 'T004'),
('RID005', 'GID005', 'T005'),
('RID006', 'GID006', 'T006'),
('RID007', 'GID007', 'T007'),
('RID008', 'GID008', 'T008'),
('RID009', 'GID009', 'T009'),
('RID010', 'GID010', 'T010'),
('RID011', 'GID011', 'T011'),
('RID012', 'GID012', 'T012'),
('RID013', 'GID013', 'T013'),
('RID014', 'GID014', 'T014'),
('RID015', 'GID015', 'T015'),
('RID001', 'GID016', 'T016'),
('RID002', 'GID017', 'T017'),
('RID003', 'GID018', 'T018'),
('RID004', 'GID019', 'T019'),
('RID005', 'GID020', 'T020'),
('RID006', 'GID021', 'T021'),
('RID007', 'GID022', 'T022'),
('RID008', 'GID023', 'T023'),
('RID009', 'GID024', 'T024'),
('RID010', 'GID025', 'T025'),
('RID011', 'GID026', 'T026'),
('RID012', 'GID027', 'T027'),
('RID013', 'GID028', 'T028'),
('RID014', 'GID029', 'T029'),
('RID015', 'GID030', 'T030'),
('RID001', 'GID001', 'T031'),
('RID002', 'GID002', 'T032'),
('RID003', 'GID003', 'T033'),
('RID004', 'GID004', 'T034'),
('RID005', 'GID005', 'T035'),
('RID006', 'GID006', 'T036'),
('RID007', 'GID007', 'T037'),
('RID008', 'GID008', 'T038'),
('RID009', 'GID009', 'T039'),
('RID010', 'GID010', 'T040'),
('RID011', 'GID011', 'T041'),
('RID012', 'GID012', 'T042'),
('RID013', 'GID013', 'T043'),
('RID014', 'GID014', 'T044'),
('RID015', 'GID015', 'T045'),
('RID001', 'GID016', 'T046'),
('RID002', 'GID017', 'T047'),
('RID003', 'GID018', 'T048'),
('RID004', 'GID019', 'T049'),
('RID005', 'GID020', 'T050'),
('RID006', 'GID021', 'T051'),
('RID007', 'GID022', 'T052'),
('RID008', 'GID023', 'T053'),
('RID009', 'GID024', 'T054'),
('RID010', 'GID025', 'T055'),
('RID011', 'GID026', 'T056'),
('RID012', 'GID027', 'T057'),
('RID013', 'GID028', 'T058'),
('RID014', 'GID029', 'T059'),
('RID015', 'GID030', 'T060'),
('RID001', 'GID001', 'T061'),
('RID002', 'GID002', 'T062'),
('RID003', 'GID003', 'T063'),
('RID004', 'GID004', 'T064'),
('RID005', 'GID005', 'T065'),
('RID006', 'GID006', 'T066'),
('RID007', 'GID007', 'T067'),
('RID008', 'GID008', 'T068'),
('RID009', 'GID009', 'T069'),
('RID010', 'GID010', 'T070'),
('RID011', 'GID011', 'T071'),
('RID012', 'GID012', 'T072'),
('RID013', 'GID013', 'T073'),
('RID014', 'GID014', 'T074'),
('RID015', 'GID015', 'T075'),
('RID001', 'GID016', 'T076'),
('RID002', 'GID017', 'T077'),
('RID003', 'GID018', 'T078'),
('RID004', 'GID019', 'T079'),
('RID005', 'GID020', 'T080'),
('RID006', 'GID021', 'T081'),
('RID007', 'GID022', 'T082'),
('RID008', 'GID023', 'T083'),
('RID009', 'GID024', 'T084'),
('RID010', 'GID025', 'T085'),
('RID011', 'GID026', 'T086'),
('RID012', 'GID027', 'T087'),
('RID013', 'GID028', 'T088'),
('RID014', 'GID029', 'T089'),
('RID015', 'GID030', 'T090'),
('RID001', 'GID001', 'T091'),
('RID002', 'GID002', 'T092'),
('RID003', 'GID003', 'T093'),
('RID004', 'GID004', 'T094'),
('RID005', 'GID005', 'T095'),
('RID006', 'GID006', 'T096'),
('RID007', 'GID007', 'T097'),
('RID008', 'GID008', 'T098'),
('RID009', 'GID009', 'T099'),
('RID010', 'GID010', 'T100');


--CANTEEN TABLE
CREATE TABLE Canteen (
    Canteen_ID char(8) not null ,
    Canteen_Name VARCHAR(50) not null,
	CONSTRAINT Canteen_pk PRIMARY KEY(Canteen_ID)
	)

INSERT INTO Canteen (Canteen_ID, Canteen_Name) VALUES
('CAN001', 'Beverages'),
('CAN002', 'Dessert'),
('CAN003', 'Desi Food'),
('CAN004', 'All Cuisines');



--CONTACT TABLE
CREATE TABLE Contact (
 G_Contact Numeric(30,0) not null ,
 Guest_ID CHAR(8) NOT NULL,
 CONSTRAINT Contact_pk PRIMARY KEY(G_Contact),
 CONSTRAINT Contact_fk FOREIGN KEY(Guest_ID) REFERENCES Guest(Guest_ID)
)
INSERT INTO Contact (G_Contact, Guest_ID)
VALUES
('03001234567', 'GID001'),
('03111234567', 'GID002'),
('03221234567', 'GID003'),
('03331234567', 'GID004'),
('03441234567', 'GID005'),
('03551234567', 'GID006'),
('03661234567', 'GID007'),
('03771234567', 'GID008'),
('03881234567', 'GID009'),
('03991234567', 'GID010'),
('03011234567', 'GID011'),
('03121234567', 'GID012'),
('03231234567', 'GID013'),
('03341234567', 'GID014'),
('03451234567', 'GID015'),
('03561234567', 'GID016'),
('03671234567', 'GID017'),
('03781234567', 'GID018'),
('03891234567', 'GID019'),
('03901234567', 'GID020'),
('03021234567', 'GID021'),
('03131234567', 'GID022'),
('03241234567', 'GID023'),
('03351234567', 'GID024'),
('03461234567', 'GID025'),
('03571234567', 'GID026'),
('03681234567', 'GID027'),
('03791234567', 'GID028'),
('03801234567', 'GID029'),
('03911234567', 'GID030'),
('03021234568', 'GID001'),
('03131234568', 'GID002'),
('03241234568', 'GID003'),
('03351234568', 'GID004'),
('03461234568', 'GID005'),
('03571234568', 'GID006'),
('03681234568', 'GID007'),
('03791234568', 'GID008'),
('03801234568', 'GID009'),
('03911234568', 'GID010'),
('03011234568', 'GID011'),
('03121234568', 'GID012'),
('03231234568', 'GID013'),
('03341234568', 'GID014'),
('03451234568', 'GID015'),
('03561234568', 'GID016'),
('03671234568', 'GID017'),
('03781234568', 'GID018'),
('03891234568', 'GID019'),
('03901234568', 'GID020'),
('03001234568', 'GID021'),
('03111234568', 'GID022'),
('03221234568', 'GID023'),
('03331234568', 'GID024'),
('03441234568', 'GID025'),
('03551234568', 'GID026'),
('03661234568', 'GID027'),
('03771234568', 'GID028'),
('03881234568', 'GID029'),
('03991234568', 'GID030');


--GUEST CANTEEN VISIT
Create table Guest_Canteen_Visit (
Canteen_ID char(8), 
Guest_ID CHAR(8) not null,
CONSTRAINT GuestCanteen_Guestfk FOREIGN KEY (Guest_ID) REFERENCES Guest(Guest_ID),   -- no duplicate fks so name chanes one with _ other without
Constraint GuestCanteen_Canteenfk FOREIGN KEY (Canteen_ID) REFERENCES Canteen(Canteen_ID)

)

INSERT INTO Guest_Canteen_Visit (Canteen_ID, Guest_ID)
VALUES
-- Guests visiting all canteens
('CAN001', 'GID001'),  -- Guest GID001 visited Canteen C001
('CAN002', 'GID001'),  -- Guest GID001 visited Canteen C002
('CAN003', 'GID001'),  -- Guest GID001 visited Canteen C003
('CAN004', 'GID001'),  -- Guest GID001 visited Canteen C004
('CAN001', 'GID002'),  -- Guest GID002 visited Canteen C001
('CAN002', 'GID002'),  -- Guest GID002 visited Canteen C002
('CAN003', 'GID002'),  -- Guest GID002 visited Canteen C003
('CAN004', 'GID002'),  -- Guest GID002 visited Canteen C004
('CAN001', 'GID003'),  -- Guest GID003 visited Canteen C001
('CAN002', 'GID003'),  -- Guest GID003 visited Canteen C002
('CAN003', 'GID003'),  -- Guest GID003 visited Canteen C003
('CAN004', 'GID003'),  -- Guest GID003 visited Canteen C004
('CAN001', 'GID004'),  -- Guest GID004 visited Canteen C001
('CAN002', 'GID004'),  -- Guest GID004 visited Canteen C002
('CAN003', 'GID004'),  -- Guest GID004 visited Canteen C003
('CAN004', 'GID004'),  -- Guest GID004 visited Canteen C004
('CAN001', 'GID005'),  -- Guest GID005 visited Canteen C001
('CAN002', 'GID005'),  -- Guest GID005 visited Canteen C002
('CAN003', 'GID005'),  -- Guest GID005 visited Canteen C003
('CAN004', 'GID005'),  -- Guest GID005 visited Canteen C004

-- Guests visiting specific canteens
('CAN001', 'GID006'),  -- Guest GID006 visited Canteen C001
('CAN002', 'GID006'),  -- Guest GID006 visited Canteen C002
('CAN003', 'GID007'),  -- Guest GID007 visited Canteen C003
('CAN004', 'GID007'),  -- Guest GID007 visited Canteen C004
('CAN001', 'GID008'),  -- Guest GID008 visited Canteen C001
('CAN002', 'GID008'),  -- Guest GID008 visited Canteen C002
('CAN003', 'GID008'),  -- Guest GID008 visited Canteen C003
('CAN004', 'GID008'),  -- Guest GID008 visited Canteen C004
('CAN001', 'GID009'),  -- Guest GID009 visited Canteen C001
('CAN002', 'GID009'),  -- Guest GID009 visited Canteen C002
('CAN003', 'GID009'),  -- Guest GID009 visited Canteen C003
('CAN004', 'GID009'),  -- Guest GID009 visited Canteen C004
('CAN001', 'GID010'),  -- Guest GID010 visited Canteen C001
('CAN002', 'GID010'),  -- Guest GID010 visited Canteen C002
('CAN003', 'GID010'),  -- Guest GID010 visited Canteen C003
('CAN004', 'GID010'),  -- Guest GID010 visited Canteen C004
('CAN001', 'GID011'),  -- Guest GID011 visited Canteen C001
('CAN002', 'GID011'),  -- Guest GID011 visited Canteen C002
('CAN003', 'GID011'),  -- Guest GID011 visited Canteen C003
('CAN004', 'GID011'),  -- Guest GID011 visited Canteen C004
('CAN001', 'GID012'),  -- Guest GID012 visited Canteen C001
('CAN002', 'GID012'),  -- Guest GID012 visited Canteen C002
('CAN003', 'GID012'),  -- Guest GID012 visited Canteen C003
('CAN004', 'GID012'),  -- Guest GID012 visited Canteen C004
('CAN001', 'GID013'),  -- Guest GID013 visited Canteen C001
('CAN002', 'GID013'),  -- Guest GID013 visited Canteen C002
('CAN003', 'GID013'),  -- Guest GID013 visited Canteen C003
('CAN004', 'GID013'),  -- Guest GID013 visited Canteen C004
('CAN001', 'GID014'),  -- Guest GID014 visited Canteen C001
('CAN002', 'GID014'),  -- Guest GID014 visited Canteen C002
('CAN003', 'GID014'),  -- Guest GID014 visited Canteen C003
('CAN004', 'GID014'),  -- Guest GID014 visited Canteen C004
('CAN001', 'GID015'),  -- Guest GID015 visited Canteen C001
('CAN002', 'GID015'),  -- Guest GID015 visited Canteen C002
('CAN003', 'GID015'),  -- Guest GID015 visited Canteen C003
('CAN004', 'GID015'),  -- Guest GID015 visited Canteen C004
('CAN001', 'GID016'),  -- Guest GID016 visited Canteen C001
('CAN002', 'GID016'),  -- Guest GID016 visited Canteen C002
('CAN003', 'GID016'),  -- Guest GID016 visited Canteen C003
('CAN004', 'GID016'),  -- Guest GID016 visited Canteen C004
('CAN001', 'GID017'),  -- Guest GID017 visited Canteen C001
('CAN002', 'GID017'),  -- Guest GID017 visited Canteen C002
('CAN003', 'GID017'),  -- Guest GID017 visited Canteen C003
('CAN004', 'GID017'),  -- Guest GID017 visited Canteen C004
('CAN001', 'GID018'),  -- Guest GID018 visited Canteen C001
('CAN002', 'GID018'),  -- Guest GID018 visited Canteen C002
('CAN003', 'GID018'),  -- Guest GID018 visited Canteen C003
('CAN004', 'GID018'),  -- Guest GID018 visited Canteen C004
(NULL, 'GID019'), 
(NULL, 'GID020'),
(NULL, 'GID021'),
(NULL, 'GID022'),
(NULL, 'GID023'),
(NULL, 'GID024'),
(NULL, 'GID025'),
(NULL, 'GID026'),
(NULL, 'GID027'),
(NULL, 'GID028'),
(NULL, 'GID029'),
(NULL, 'GID030');




--RIDE MANAGEMENT TEAM TABLE
CREATE TABLE Ride_Management_Team (
    RM_ID char(8) not null ,
    TimeOfOperation time not null,
    Queue_Time time not null,
    Ride_ID CHAR(8) not null,
	CONSTRAINT RM_pk PRIMARY KEY(RM_ID),
    CONSTRAINT RM_FK FOREIGN KEY (Ride_ID) REFERENCES Ride(Ride_ID),
);

INSERT INTO Ride_Management_Team (RM_ID, TimeOfOperation, Queue_Time, Ride_ID) VALUES
('RM001', '08:00:00', '00:05:00', 'RID001'),
('RM002', '08:00:00', '00:04:00', 'RID002'),
('RM003', '09:00:00', '00:03:00', 'RID003'),
('RM004', '09:00:00', '00:06:00', 'RID004'),
('RM005', '10:00:00', '00:04:30', 'RID005'),
('RM006', '10:00:00', '00:03:30', 'RID006'),
('RM007', '11:00:00', '00:04:30', 'RID007'),
('RM008', '11:00:00', '00:05:00', 'RID008'),
('RM009', '12:00:00', '00:04:30', 'RID009'),
('RM010', '12:00:00', '00:03:45', 'RID010'),
('RM011', '13:00:00', '00:04:15', 'RID011'),
('RM012', '13:00:00', '00:02:00', 'RID012'),
('RM013', '14:00:00', '00:06:30', 'RID013'),
('RM014', '14:00:00', '00:05:00', 'RID014'),
('RM015', '15:00:00', '00:04:30', 'RID015');



--EMPLOYEE TABLE

CREATE TABLE Employee (
    Emp_ID Char(8) not null ,
    E_FirstName VARCHAR(50) not null,
    E_LastName VARCHAR(50) not null,
    Salary numeric(30,0)not null,
    Canteen_ID char(8), 
	RM_ID char(8),
	CONSTRAINT Employee_pk PRIMARY KEY(Emp_ID),
    CONSTRAINT Employee_Canteen_fk FOREIGN KEY (Canteen_ID) REFERENCES Canteen(Canteen_ID),
	CONSTRAINT Employee_RM_fk FOREIGN KEY(RM_ID) REFERENCES Ride_Management_Team(RM_ID)
)
INSERT INTO Employee (Emp_ID, E_FirstName, E_LastName, Salary, Canteen_ID, RM_ID)
VALUES
-- Employees assigned to Canteen CAN001
('EID001', 'Ali', 'Khan', 50000, 'CAN001', null),
('EID002', 'Fatima', 'Ali', 45000, 'CAN001', null),
('EID012', 'Saima', 'Iqbal', 48000, 'CAN001', null),
('EID033', 'Hassan', 'Kamran', 52000, 'CAN001', null),

-- Employees assigned to Canteen CAN002
('EID003', 'Ahmed', 'Raza', 55000, 'CAN002', null),
('EID004', 'Ayesha', 'Ahmed', 48000, 'CAN002', null),
('EID014', 'Aisha', 'Nawaz', 49000, 'CAN002', null),
('EID034', 'Sara', 'Rafique', 52000, 'CAN002', null),

-- Employees assigned to Canteen CAN003
('EID005', 'Hassan', 'Malik', 52000, 'CAN003', null),
('EID006', 'Sana', 'Khan', 60000, 'CAN003', null),
('EID022', 'Samina', 'Shah', 52000, 'CAN003', null),
('EID035', 'Adil', 'Hameed', 50000, 'CAN003', null),

-- Employees assigned to Canteen CAN004
('EID007', 'Faisal', 'Ali', 48000, 'CAN004', null),
('EID008', 'Zainab', 'Qureshi', 53000, 'CAN004', null),
('EID024', 'Zara', 'Khalid', 48000, 'CAN004', null),
('EID036', 'Usman', 'Raza', 49000, 'CAN004', null),

-- Employees assigned to RM RM001
('EID037', 'Noman', 'Khan', 56000, null, 'RM001'),
('EID038', 'Asma', 'Hussain', 48000, null, 'RM001'),
('EID039', 'Qasim', 'Ali', 52000, null, 'RM001'),
('EID040', 'Saba', 'Malik', 53000, null, 'RM001'),
('EID041', 'Ibrahim', 'Ahmed', 55000, null, 'RM001'),
('EID042', 'Nadia', 'Khalid', 51000, null, 'RM001'),

-- Employees assigned to RM RM002
('EID043', 'Yasir', 'Akram', 50000, null, 'RM002'),
('EID044', 'Sadaf', 'Rashid', 52000, null, 'RM002'),
('EID045', 'Farhan', 'Raza', 49000, null, 'RM002'),
('EID046', 'Sara', 'Khan', 53000, null, 'RM002'),
('EID047', 'Imran', 'Hussain', 53000, null, 'RM002'),
('EID048', 'Amina', 'Malik', 48000, null, 'RM002'),

-- Employees assigned to RM RM003
('EID049', 'Kamran', 'Ali', 49000, null, 'RM003'),
('EID050', 'Sadia', 'Rafique', 48000, null, 'RM003'),
('EID051', 'Waqar', 'Khan', 54000, null, 'RM003'),
('EID052', 'Samina', 'Iqbal', 52000, null, 'RM003'),
('EID053', 'Ahmed', 'Raza', 57000, null, 'RM003'),
('EID054', 'Ayesha', 'Rashid', 53000, null, 'RM003'),

-- Employees assigned to RM RM004
('EID055', 'Bilal', 'Hussain', 52000, null, 'RM004'),
('EID056', 'Aisha', 'Nawaz', 55000, null, 'RM004'),
('EID057', 'Hassan', 'Kamran', 52000, null, 'RM004'),
('EID058', 'Zainab', 'Khan', 51000, null, 'RM004'),
('EID059', 'Sara', 'Qureshi', 53000, null, 'RM004'),
('EID060', 'Faisal', 'Ali', 50000, null, 'RM004'),

-- Employees assigned to RM RM005
('EID061', 'Hamza', 'Khan', 57000, null, 'RM005'),
('EID062', 'Nida', 'Imran', 52000, null, 'RM005'),
('EID063', 'Khalid', 'Rashid', 50000, null, 'RM005'),
('EID064', 'Sadia', 'Kamran', 54000, null, 'RM005'),
('EID065', 'Ahmed', 'Qureshi', 55000, null, 'RM005'),
('EID066', 'Ayesha', 'Hassan', 51000, null, 'RM005'),

-- Employees assigned to RM RM006
('EID067', 'Farhan', 'Rashid', 54000, null, 'RM006'),
('EID068', 'Saima', 'Iqbal', 48000, null, 'RM006'),
('EID069', 'Yasir', 'Raza', 52000, null, 'RM006'),
('EID070', 'Sadaf', 'Khan', 53000, null, 'RM006'),
('EID071', 'Farhan', 'Akram', 57000, null, 'RM006'),
('EID072', 'Sana', 'Malik', 55000, null, 'RM006'),

-- Employees assigned to RM RM007
('EID073', 'Imran', 'Hussain', 53000, null, 'RM007'),
('EID074', 'Zara', 'Khalid', 48000, null, 'RM007'),
('EID075', 'Junaid', 'Akram', 53000, null, 'RM007'),
('EID076', 'Rabia', 'Nadeem', 48000, null, 'RM007'),
('EID077', 'Noman', 'Rasheed', 55000, null, 'RM007'),
('EID078', 'Ayesha', 'Hassan', 54000, null, 'RM007'),

-- Employees assigned to RM RM008
('EID079', 'Kamran', 'Khan', 57000, null, 'RM008'),
('EID080', 'Sara', 'Rafique', 53000, null, 'RM008'),
('EID081', 'Usman', 'Saeed', 55000, null, 'RM008'),
('EID082', 'Mehreen', 'Akhtar', 52000, null, 'RM008'),
('EID083', 'Zara', 'Kamran', 53000, null, 'RM008'),
('EID084', 'Nida', 'Qureshi', 51000, null, 'RM008'),

-- Employees assigned to RM RM009
('EID085', 'Adnan', 'Ali', 48000, null, 'RM009'),
('EID086', 'Sadia', 'Raza', 51000, null, 'RM009'),
('EID087', 'Waqar', 'Khan', 54000, null, 'RM009'),
('EID088', 'Samina', 'Shah', 52000, null, 'RM009'),
('EID089', 'Ali', 'Raza', 50000, null, 'RM009'),
('EID090', 'Sana', 'Hameed', 53000, null, 'RM009'),

-- Employees assigned to RM RM010
('EID091', 'Junaid', 'Kamran', 54000, null, 'RM010'),
('EID092', 'Rabia', 'Rashid', 52000, null, 'RM010'),
('EID093', 'Noman', 'Khan', 55000, null, 'RM010'),
('EID094', 'Ayesha', 'Akram', 54000, null, 'RM010'),
('EID095', 'Sara', 'Malik', 56000, null, 'RM010'),
('EID096', 'Usman', 'Raza', 53000, null, 'RM010'),

-- Employees assigned to RM RM011
('EID097', 'Hassan', 'Kamran', 52000, null, 'RM011'),
('EID098', 'Zainab', 'Khan', 55000, null, 'RM011'),
('EID099', 'Sara', 'Qureshi', 52000, null, 'RM011'),
('EID100', 'Ali', 'Ali', 54000, null, 'RM011'),
('EID101', 'Nadia', 'Hassan', 53000, null, 'RM011'),
('EID102', 'Saima', 'Akram', 50000, null, 'RM011'),

-- Employees assigned to RM RM012
('EID103', 'Farhan', 'Khan', 53000, null, 'RM012'),
('EID104', 'Saba', 'Malik', 49000, null, 'RM012'),
('EID105', 'Yasir', 'Rashid', 54000, null, 'RM012'),
('EID106', 'Sadaf', 'Raza', 52000, null, 'RM012'),
('EID107', 'Ahmed', 'Hussain', 55000, null, 'RM012'),
('EID108', 'Amina', 'Khan', 50000, null, 'RM012'),

-- Employees assigned to RM RM013
('EID109', 'Kamran', 'Ali', 57000, null, 'RM013'),
('EID110', 'Sadia', 'Rafique', 52000, null, 'RM013'),
('EID111', 'Usman', 'Saeed', 55000, null, 'RM013'),
('EID112', 'Mehreen', 'Akhtar', 52000, null, 'RM013'),
('EID113', 'Zara', 'Kamran', 54000, null, 'RM013'),
('EID114', 'Nida', 'Qureshi', 50000, null, 'RM013'),

-- Employees assigned to RM RM014
('EID115', 'Adnan', 'Ali', 48000, null, 'RM014'),
('EID116', 'Sadia', 'Raza', 51000, null, 'RM014'),
('EID117', 'Waqar', 'Khan', 54000, null, 'RM014'),
('EID118', 'Samina', 'Shah', 52000, null, 'RM014'),
('EID119', 'Ali', 'Raza', 50000, null, 'RM014'),
('EID120', 'Sana', 'Hameed', 53000, null, 'RM014'),

-- Employees assigned to RM RM015
('EID121', 'Junaid', 'Kamran', 52000, null, 'RM015'),
('EID122', 'Rabia', 'Rashid', 55000, null, 'RM015'),
('EID123', 'Noman', 'Khan', 54000, null, 'RM015'),
('EID124', 'Ayesha', 'Akram', 56000, null, 'RM015'),
('EID125', 'Sara', 'Malik', 53000, null, 'RM015'),
('EID126', 'Usman', 'Raza', 54000, null, 'RM015');


--MENU TABLE
CREATE TABLE Menu (
    Menu_ID char(8) not null ,
    Canteen_ID char(8) not null, 
    CONSTRAINT Menu_pk PRIMARY KEY(Menu_ID) ,
	CONSTRAINT Menu_fk FOREIGN KEY (Canteen_ID) REFERENCES Canteen(Canteen_ID),
); 

INSERT INTO Menu (Menu_ID, Canteen_ID) VALUES
('MID001', 'CAN001'),
('MID002', 'CAN002'),
('MID003', 'CAN003'),
('MID004', 'CAN004');



--MENU ITEM TABLE
CREATE TABLE Menu_Item (
    Menu_Item_ID char(8) not null ,
    Item_Name VARCHAR(50) not null,
	Availability_Info char(8) not null,
    Price numeric(30,0) not null,
    Menu_ID char(8) not null,
	CONSTRAINT Menu_Item_pk PRIMARY KEY(Menu_Item_ID),
    CONSTRAINT Menu_Item_fk FOREIGN KEY (Menu_ID) REFERENCES Menu(Menu_ID),
);

-- Menu items for Canteen 1 (Beverages)
INSERT INTO Menu_Item (Menu_Item_ID, Item_Name, Price, Menu_ID, Availability_info)
VALUES
('MI001', 'Tea', 200, 'MID001', 'Yes'),
('MI002', 'Coffee', 240, 'MID001', 'No'),
('MI003', 'Soft Drinks', 160, 'MID001', 'Yes'),
('MI004', 'Juice', 300, 'MID001', 'Yes'),
('MI005', 'Water', 100, 'MID001', 'Yes'),
('MI006', 'Milkshake', 360, 'MID001', 'Yes'),
('MI007', 'Lemonade', 180, 'MID001', 'Yes'),
('MI008', 'Iced Tea', 260, 'MID001', 'No'),
('MI009', 'Hot Chocolate', 320, 'MID001', 'Yes'),
('MI010', 'Smoothie', 400, 'MID001', 'Yes'),
('MI011', 'Soda', 140, 'MID001', 'Yes'),
('MI012', 'Energy Drink', 400, 'MID001', 'No'),
('MI013', 'Fruit Punch', 240, 'MID001', 'Yes'),
('MI014', 'Mango Lassi', 280, 'MID001', 'Yes'),
('MI015', 'Cappuccino', 300, 'MID001', 'Yes'),
('MI016', 'Iced Coffee', 340, 'MID001', 'Yes'),
('MI017', 'Hot Tea', 200, 'MID001', 'Yes'),
('MI018', 'Cola', 160, 'MID001', 'Yes'),
('MI019', 'Mint Lemonade', 220, 'MID001', 'No'),
('MI020', 'Chai Latte', 260, 'MID001', 'Yes');

-- Insert menu items for Canteen 2 (Dessert)
INSERT INTO Menu_Item (Menu_Item_ID, Item_Name, Price, Menu_ID, Availability_info)
VALUES
('MI021', 'Ice Cream', 400, 'MID002', 'Yes'),
('MI022', 'Cake', 500, 'MID002', 'Yes'),
('MI023', 'Pudding', 360, 'MID002', 'Yes'),
('MI024', 'Gulab Jamun', 300, 'MID002', 'Yes'),
('MI025', 'Chocolate Brownie', 440, 'MID002', 'No'),
('MI026', 'Cheesecake', 560, 'MID002', 'Yes'),
('MI027', 'Custard', 320, 'MID002', 'Yes'),
('MI028', 'Fruit Trifle', 400, 'MID002', 'Yes'),
('MI029', 'Sundae', 480, 'MID002', 'No'),
('MI030', 'Waffle', 360, 'MID002', 'Yes'),
('MI031', 'Pancake', 300, 'MID002', 'Yes'),
('MI032', 'Fruit Salad', 240, 'MID002', 'Yes'),
('MI033', 'Tiramisu', 520, 'MID002', 'No'),
('MI034', 'Mousse', 380, 'MID002', 'Yes'),
('MI035', 'Panna Cotta', 420, 'MID002', 'No'),
('MI036', 'Ice Cream Sandwich', 340, 'MID002', 'Yes'),
('MI037', 'Fried Ice Cream', 460, 'MID002', 'No'),
('MI038', 'Churros', 360, 'MID002', 'No'),
('MI039', 'Banana Split', 500, 'MID002', 'No'),
('MI040', 'Caramel Flan', 380, 'MID002', 'No');

-- Insert menu items for Canteen 3 (Desi Food)
INSERT INTO Menu_Item (Menu_Item_ID, Item_Name, Price, Menu_ID, Availability_info)
VALUES
('MI041', 'Biryani', 500, 'MID003', 'Yes'),
('MI042', 'Karahi', 600, 'MID003', 'Yes'),
('MI043', 'Kebabs', 350, 'MID003', 'Yes'),
('MI044', 'Naan', 80, 'MID003', 'No'),
('MI045', 'Curry', 400, 'MID003', 'Yes'),
('MI046', 'Pakora', 250, 'MID003', 'Yes'),
('MI047', 'Samosa', 200, 'MID003', 'Yes'),
('MI048', 'Chicken Tikka', 450, 'MID003', 'Yes'),
('MI049', 'Seekh Kabab', 350, 'MID003', 'Yes'),
('MI050', 'Tandoori Roti', 60, 'MID003', 'Yes'),
('MI051', 'Pulao', 300, 'MID003', 'Yes'),
('MI052', 'Haleem', 380, 'MID003', 'Yes'),
('MI053', 'Nihari', 500, 'MID003', 'Yes'),
('MI054', 'Chapli Kabab', 350, 'MID003', 'Yes'),
('MI055', 'Korma', 400, 'MID003', 'Yes'),
('MI056', 'Paratha', 80, 'MID003', 'Yes'),
('MI057', 'Paneer Tikka', 450, 'MID003', 'Yes'),
('MI058', 'Daal', 250, 'MID003', 'Yes'),
('MI059', 'Raita', 120, 'MID003', 'Yes'),
('MI060', 'Lassi', 150, 'MID003', 'Yes');

-- Insert menu items for Canteen 4 (All Cuisines)
INSERT INTO Menu_Item (Menu_Item_ID, Item_Name, Price, Menu_ID, Availability_info)
VALUES
('MI061', 'Pizza', 800, 'MID004', 'Yes'),
('MI062', 'Burger', 600, 'MID004', 'Yes'),
('MI063', 'Pasta', 700, 'MID004', 'Yes'),
('MI064', 'Salad', 400, 'MID004', 'Yes'),
('MI065', 'Sushi', 850, 'MID004', 'Yes'),
('MI066', 'Steak', 1700, 'MID004', 'Yes'),
('MI067', 'Tacos', 380, 'MID004', 'Yes'),
('MI068', 'Fish and Chips', 550, 'MID004', 'Yes'),
('MI069', 'Noodles', 450, 'MID004', 'Yes'),
('MI070', 'Fried Rice', 380, 'MID004', 'Yes'),
('MI071', 'Burrito', 560, 'MID004', 'Yes'),
('MI072', 'Sandwich', 300, 'MID004', 'Yes'),
('MI073', 'Chicken Wings', 400, 'MID004', 'Yes'),
('MI074', 'Shawarma', 380, 'MID004', 'Yes'),
('MI075', 'Quesadilla', 450, 'MID004', 'Yes'),
('MI076', 'Lasagna', 550, 'MID004', 'Yes'),
('MI077', 'Risotto', 520, 'MID004', 'Yes'),
('MI078', 'Tikka Masala', 500, 'MID004', 'Yes'),
('MI079', 'Curry Rice', 400, 'MID004', 'Yes'),
('MI080', 'Hamburger', 380, 'MID004', 'Yes');


select item_name, menu_item_id

select g.guest_id, mi.Item_Name, gcv.canteen_id, c.canteen_name, m.menu_id
from Guest as g inner join Guest_Canteen_Visit as gcv
on g.Guest_ID = gcv.Guest_ID
inner join Canteen as c on gcv.Canteen_ID = c.Canteen_ID
inner join menu as m on c.Canteen_ID= m.Canteen_ID
inner join Menu_Item as mi on m.Menu_ID= mi.Menu_ID
group by g.Guest_ID, mi.Item_Name, gcv.canteen_id, c.canteen_name, m.menu_id
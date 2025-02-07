CREATE DATABASE BeezKneez;
USE BeezKneez;

CREATE TABLE Memberships(
MembershipLevel ENUM('Bronze','Silver', 'Gold') PRIMARY KEY,
CostAdjustment DECIMAL(5,2) DEFAULT 0.00,
MembershipFee DECIMAL(6,2) DEFAULT 0.00
);

CREATE TABLE Customer (
CustomerID INT AUTO_INCREMENT PRIMARY KEY, 
CustomerName VARCHAR(50),
TelNo VARCHAR(15),
Email VARCHAR (60) UNIQUE,
MembershipLevel ENUM('Bronze','Silver', 'Gold'),
FOREIGN KEY (MembershipLevel) REFERENCES Memberships(MembershipLevel) ON DELETE SET NULL,
MembershipStartDate DATE,
MembershipEndDate DATE
);

CREATE TABLE SpaTreatments(
SpaTreatmentID CHAR(5) PRIMARY KEY,
Description TEXT,
TreatmentTime INT NOT NULL CHECK (TreatmentTime > 0),
TreatmentCost DECIMAL(5, 2) NOT NULL CHECK (TreatmentCost > 0),
SpaCategory ENUM ('Face', 'Waxing', 'Body', 'Nail', 'Eye')
);

CREATE TABLE Appointments(
AppointmentID INT AUTO_INCREMENT PRIMARY KEY,
CustomerID INT NOT NULL,
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) ON DELETE CASCADE,
BookingDate DATE NOT NULL,
BookingTime TIME NOT NULL,
TotalLengthOfAppointment INT,
TotalCostAfterDiscount DECIMAL(6,2)
);

CREATE TABLE AppointmentDetails(
DetailID INT AUTO_INCREMENT PRIMARY KEY,
AppointmentID INT,
FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID) ON DELETE CASCADE,
SpaTreatmentID CHAR(5) NOT NULL,
FOREIGN KEY (SpaTreatmentID) REFERENCES SpaTreatments(SpaTreatmentID)
);

commit;

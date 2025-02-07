INSERT INTO Memberships (MembershipLevel, CostAdjustment, MembershipFee)
VALUES ('Bronze', 0.05, 5.00),
('Silver', 0.1, 10.00),
('Gold', 0.15, 15.00);

INSERT INTO Customer (CustomerName, TelNo, Email, MembershipLevel, MembershipStartDate, MembershipEndDate)
VALUES ('Mahima Raab', '543 777123', 'raabm@btd.com', 'Bronze', '01/01/22',	'31/12/23'),
('Samantha Kibson',	'07890 67123', 'kibsons@yakkity.co.uk', 'Gold', '10/05/23', '09/05/23'),
('Peter Small', '123 654263', 'small@gsnail.com', NULL, NULL, NULL),
('Jordan Foster', '6734321022', 'FosterMJ@Yahoop.com', NULL, NULL, NULL),
('Joe Brown', '0121 543182', 'Jbrown@gmaiy.com', 'SILVER', '03/02/22', '02/02/23'),
('Fathima Masud', '342 907652', 'Masud@gsnail.com', NULL, NULL, NULL),
('Samuel Johnson', '231 592833', 'Johnsons@yakkity.com', NULL, NULL, NULL),
('Colin Daniels', '2476 90345',	'cs@aoool.com', NULL, NULL, NULL),
('Wen Chung', '123 654263',	'wchung@btbt.com', NULL, NULL, NULL),
('Penny Patel',	'0121 543182', 'ppatel@gsnail.com', NULL, NULL, NULL);

INSERT INTO SpaTreatments (SpaTreatmentID, Description, TreatmentTime, TreatmentCost, SpaCategory)
VALUES ('F011',	'Brilliance Facial', 50, 65.00, 'Face'),
('W034', 'Eyebrow Wax',	10,	5.00, 'Waxing'),
('B167', 'Hot Stone Massage', 90, 80.00, 'Body'),
('N432', 'Pedicure', 25, 17.50, 'Nail'),
('B902', 'Indian Head Massage', 40, 35.00, 'Body'),
('W223', 'Full Leg', 15, 20.00,	'Waxing'),
('E899', 'Lash Tint', 10, 5.00, 'Eye'),
('N021', 'Manicure', 15, 15.00,	'Nail'),
('B822', 'Deep Muscle Massage', 60, 75.00, 'Body'),
('E945', 'Lash Lift', 10, 10.00, 'Eye'),
('F677', 'Dermaplaining', 50, 45, 'Face'); 

INSERT INTO Appointments (CustomerID, BookingDate, BookingTime, TotalLengthOfAppointment, TotalCostAfterDiscount)
VALUES 
(8, '2022-02-26', '11:30:00', 90, 110.00),
(6, '2022-02-26', '10:00:00', 75, 82.50),
(4, '2022-02-27', '09:45:00', 65, 52.50),
(9, '2022-03-31', '16:00:00', 90, 95.00),
(3, '2022-04-05', '14:30:00', 110, 140.00),
(1, '2022-04-05', '11:00:00', 25, 15.75),
(2, '2022-06-03', '15:45:00', 100, 74.38),
(4, '2022-06-03', '11:30:00', 80, 80.00),
(1, '2022-06-08', '14:00:00', 70, 76.00),
(10, '2022-07-12', '14:15:00', 65, 55.00),
(7, '2022-07-12', '09:30:00', 50, 45.00),
(5, '2022-08-10', '09:00:00', 105, 108.00),
(1, '2022-08-10', '15:00:00', 60, 66.50),
(5, '2022-10-15', '09:15:00', 120, 130.50),
(2, '2022-10-15', '15:00:00', 75, 55.25),
(2, '2022-12-16', '11:00:00', 130, 95.63);

INSERT INTO AppointmentDetails (AppointmentID, SpaTreatmentID)
VALUES
(1, 'B822'),
(1, 'W223'),
(1, 'N021'),
(2, 'N432'),
(2, 'F011'),
(3, 'N432'),
(3, 'B902'),
(4, 'F011'),
(4, 'B902'),
(5, 'F011'),
(5, 'B822'),
(6, 'N432'),
(7, 'N432'),
(7, 'F677'),
(7, 'W034'),
(7, 'W223'),
(8, 'W223'),
(8, 'N021'),
(8, 'F677'),
(9, 'F011'),
(9, 'E899'),
(9, 'E945'),
(10, 'F011'),
(10, 'E899'),
(10, 'E945'),
(11, 'F677'),
(12, 'N021'),
(12, 'B902'),
(12, 'W034'),
(13, 'F011'),
(13, 'W034'),
(14, 'F011'),
(14, 'B902'),
(14, 'W223'),
(15, 'F011'),
(15, 'W034'),
(15, 'B822'),
(16, 'N021'),
(16, 'F677'),
(16, 'W034'),
(17, 'B167'),
(17, 'N432'),
(17, 'N021');

commit; 
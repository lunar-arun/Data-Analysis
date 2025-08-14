-- Insert multiple patients
INSERT INTO Hospital.Patients (FirstName, LastName, DOB, Gender, Email)
VALUES 
('John', 'Doe', '1985-06-15', 'Male', 'john.doe@example.com'),
('Alice', 'Johnson', '1990-03-22', 'Female', 'alice.johnson@example.com'),
('Michael', 'Brown', '1978-11-05', 'Male', 'michael.brown@example.com'),
('Emma', 'Davis', '2000-01-10', 'Female', 'emma.davis@example.com'),
('Chris', 'Lee', '1982-09-30', 'Other', 'chris.lee@example.com'),
('David', 'Miller', '1974-12-11', 'Male', 'david.miller@example.com'),
('Sophia', 'Wilson', '1992-04-19', 'Female', 'sophia.wilson@example.com'),
('Oliver', 'Taylor', '1995-08-25', 'Male', 'oliver.taylor@example.com'),
('Lily', 'Anderson', '2003-02-03', 'Female', 'lily.anderson@example.com'),
('James', 'Thomas', '1988-10-20', 'Male', 'james.thomas@example.com'),
('Isabella', 'Martinez', '1996-01-15', 'Female', 'isabella.martinez@example.com'),
('Benjamin', 'Rodriguez', '1980-06-28', 'Male', 'benjamin.rodriguez@example.com'),
('Mia', 'Hernandez', '2001-07-11', 'Female', 'mia.hernandez@example.com'),
('Lucas', 'Garcia', '1994-09-05', 'Male', 'lucas.garcia@example.com'),
('Charlotte', 'Lopez', '1999-12-22', 'Female', 'charlotte.lopez@example.com'),
('Ethan', 'Gonzalez', '2002-04-14', 'Male', 'ethan.gonzalez@example.com'),
('Amelia', 'Young', '1993-05-07', 'Female', 'amelia.young@example.com'),
('Elijah', 'King', '1997-11-30', 'Male', 'elijah.king@example.com'),
('Ava', 'Wright', '1991-08-18', 'Female', 'ava.wright@example.com');

-- Insert multiple doctors
INSERT INTO Hospital.Doctors (FullName, Specialty, Email)
VALUES 
    ('Dr. Sarah Williams', 'Cardiology', 'sarah.williams@hospital.com'),
    ('Dr. James Taylor', 'Orthopedics', 'james.taylor@hospital.com'),
    ('Dr. Linda White', 'Neurology', 'linda.white@hospital.com'),
    ('Dr. Robert Harris', 'Pediatrics', 'robert.harris@hospital.com'),
    ('Dr. Emily Clark', 'Dermatology', 'emily.clark@hospital.com'),
    ('Dr. Mark Davis', 'General Surgery', 'mark.davis@hospital.com');

-- Insert multiple appointments
INSERT INTO Hospital.Appointments (PatientID, DoctorID, AppointmentDate, Status, Notes)
VALUES 
    (1, 1, '2025-08-20 10:00:00', 'Scheduled', 'Routine checkup'),
    (2, 3, '2025-08-21 14:00:00', 'Scheduled', 'Headache and dizziness'),
    (3, 5, '2025-08-22 09:30:00', 'Completed', 'Skin rash treatment'),
    (4, 2, '2025-08-23 11:15:00', 'Cancelled', 'Patient rescheduled'),
    (5, 4, '2025-08-24 13:00:00', 'Scheduled', 'Routine pediatrics checkup'),
    (6, 6, '2025-08-25 15:45:00', 'Completed', 'Surgical consultation'),
    (7, 1, '2025-08-26 16:30:00', 'Scheduled', 'Cardiac evaluation'),
    (8, 3, '2025-08-27 08:00:00', 'Completed', 'Neurological tests'),
    (1, 2, '2025-08-28 10:30:00', 'Completed', 'Fracture consultation'),
    (2, 6, '2025-08-29 12:15:00', 'Scheduled', 'Surgical follow-up');

INSERT INTO Hospital.Billing (AppointmentID, Amount, Paid, PaidAt)
VALUES
    (1, 500.00, TRUE, '2025-08-20 11:00:00'),
    (2, 800.00, FALSE, NULL),
    (3, 50.00, TRUE, '2025-08-23 09:00:00'),
    (5, 120.00, FALSE, NULL),
    (6, 200.00, TRUE, '2025-08-25 16:00:00'),
    (7, 150.00, FALSE, NULL),
    (8, 700.00, TRUE, '2025-08-27 09:00:00'),
    (9, 150.00, TRUE, '2025-08-29 10:00:00'),
    (10, 100.00, FALSE, NULL);

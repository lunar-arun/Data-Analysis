-- Create schema
CREATE SCHEMA Hospital;

-- Patients table
CREATE TABLE Hospital.Patients (
    PatientID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DOB DATE NOT NULL,
    Gender VARCHAR(10) CHECK (Gender IN ('Male', 'Female', 'Other')),
    Email VARCHAR(100) UNIQUE,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Doctors table
CREATE TABLE Hospital.Doctors (
    DoctorID SERIAL PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Specialty VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Appointments table
CREATE TABLE Hospital.Appointments (
    AppointmentID SERIAL PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDate TIMESTAMP NOT NULL,  
    Status VARCHAR(20) DEFAULT 'Scheduled' CHECK (Status IN ('Scheduled', 'Completed', 'Cancelled')),
    Notes TEXT,
    FOREIGN KEY (PatientID) REFERENCES Hospital.Patients(PatientID) ON DELETE CASCADE,
    FOREIGN KEY (DoctorID) REFERENCES Hospital.Doctors(DoctorID) ON DELETE SET NULL
);

-- Billing table
CREATE TABLE Hospital.Billing (
    BillID SERIAL PRIMARY KEY,
    AppointmentID INT,
    Amount DECIMAL(10, 2) NOT NULL CHECK (Amount > 0),
    Paid BOOLEAN DEFAULT FALSE,
    PaidAt TIMESTAMP,  
    FOREIGN KEY (AppointmentID) REFERENCES Hospital.Appointments(AppointmentID)
);

CREATE VIEW Hospital.AppointmentSummary AS
SELECT 
    a.AppointmentID,
    p.FirstName || ' ' || p.LastName AS PatientName,
    d.FullName AS DoctorName,
    a.AppointmentDate,
    b.Amount,
    b.Paid
FROM Hospital.Appointments a
JOIN Hospital.Patients p ON a.PatientID = p.PatientID
JOIN Hospital.Doctors d ON a.DoctorID = d.DoctorID
LEFT JOIN Hospital.Billing b ON a.AppointmentID = b.AppointmentID;

/*SELECT * FROM Hospital.AppointmentSummary;*/

-- CREATE INDEX idx_AppointmentDate ON Hospital.Appointments(AppointmentDate);

/*SELECT indexname, indexdef
FROM pg_indexes
WHERE tablename = 'Appointments' OR schemaname = 'Hospital';*/

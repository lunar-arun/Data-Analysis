-- Use and remove /* */ to run the SQL query.
-- Get all appointments for a specific patient
SELECT 
    a.AppointmentID,
    a.AppointmentDate,
    d.FullName AS Doctor,
    a.Status
FROM Hospital.Appointments a
JOIN Hospital.Doctors d ON a.DoctorID = d.DoctorID
WHERE a.PatientID = 1;

-- Use CASE and COALESCE
/*SELECT 
    b.BillID,
    b.Amount,
    CASE 
        WHEN b.Paid = TRUE THEN 'Paid'
        ELSE 'Pending'
    END AS PaymentStatus,
    CASE
        WHEN b.PaidAt IS NULL THEN 'Not Paid'
        ELSE TO_CHAR(b.PaidAt, 'YYYY-MM-DD HH24:MI:SS')  -- Convert timestamp to string for display
    END AS PaidDate
FROM Hospital.Billing b;*/
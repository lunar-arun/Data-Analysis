-- Create the procedure to mark bill as paid
CREATE OR REPLACE PROCEDURE MarkBillAsPaid(IN bill_id INT)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Hospital.Billing
    SET Paid = TRUE, PaidAt = CURRENT_TIMESTAMP
    WHERE BillID = bill_id;
END;
$$;

-- Create the trigger function to insert billing record after an appointment
/*CREATE OR REPLACE FUNCTION AfterInsertAppointment() 
RETURNS trigger AS $$
BEGIN
    INSERT INTO Hospital.Billing (AppointmentID, Amount)
    VALUES (NEW.AppointmentID, 100.00);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;*/

-- Create the trigger to call the function after an appointment is inserted
/*CREATE TRIGGER AfterInsertAppointment
AFTER INSERT ON Hospital.Appointments
FOR EACH ROW
EXECUTE FUNCTION AfterInsertAppointment();*/

-- To check if the stored procedure exists, you can run:
-- SELECT * FROM pg_catalog.pg_proc WHERE proname = 'markbillaspd';

-- To verify the trigger, you can check:
-- SELECT tgname FROM pg_trigger WHERE tgname = 'afterinsertappointment';

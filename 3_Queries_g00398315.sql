--  Queries for Database Project

--
-- SELECT statement is used to select data from a database.
--
SELECT PaymentNo, TreatmentCostTotal, DueUnpaidAmount FROM payment WHERE DueUnpaidAmount > 0
SELECT * FROM `patientchart` where PatientSurname = 'Smith'
SELECT DueUnpaidAmount, PatientNo FROM Payment where DueUnpaidAmount > 300


-- The SELECT DISTINCT statement is used to return only distinct (different) values.
SELECT DISTINCT Postcode from patientchart

/*
*The following SQL statement selects all customers from the "Customers" table, sorted *ascending by the "Country" column:
*/
SELECT* FROM patientchart ORDER BY PatientSurname ASC


SELECT DueUnpaidAmount FROM Payment where DueUnpaidAmount > 300;

-- ********************************************************************************************************************

--
-- UPDATE statement is used to modify the existing records.
--

-- Update the phone number

UPDATE patientchart SET Phone = 0877777777 WHERE Phone=0873806548

-- Update appointment time

UPDATE appointment SET AppointmentTime = '12:20:00' WHERE AppointmentNo=8

-- *********************************************************************************************************************
--
-- INSERT statement is used to insert new records in a table.
--

-- Insert records in table “appointment”

INSERT INTO `appointment` (`AppointmentNo`, `AppointmentDate`, `AppointmentTime`, `LateCnsltnFee`, `Reminder`, `PatientNo`) VALUES
(1, '2020-04-01', '10:00:00', NULL, b'1', 1);


-- *********************************************************************************************************************

--
-- CREATE statement is used to create a new SQL database.
--

-- Create a view with people born after 1990

CREATE view YoungPatients AS SELECT PatientNo, PatientName, PatientSurname, DOB from patientchart WHERE DOB > '2000-01-01'


-- *********************************************************************************************************************

/*
*A JOIN clause is used to combine rows from two or more tables, based on a related column *between them. 
*/
SELECT PatientName, PatientSurname, DueUnpaidAmount FROM patientchart, payment WHERE DueUnpaidAmount > 300


-- The INNER JOIN keyword selects records that have matching values in both tables. 

SELECT appointment.AppointmentNo, patientchart.PatientSurname FROM appointment inner JOIN patientchart ON appointment.PatientNo = patientchart.PatientNo

/*
*The LEFT JOIN keyword returns all rows from the left table, even if there are no matches in *the right table.  
*/

SELECT patientchart.PatientName, appointment.AppointmentNo FROM patientchart left JOIN appointment on patientchart.PatientNo=appointment.PatientNo ORDER BY patientchart.PatientName;

/*
*The RIGHT JOIN keyword returns all rows from the right table, even if there are no matches in *the left table.
*/

SELECT payment.PaymentNo, patientchart.PatientName, patientchart.PatientSurname
FROM payment
right JOIN patientchart on payment.PaymentNo=patientchart.PatientNo
ORDER BY payment.PaymentNo


SELECT payment.PaymentNo, payment.DueUnpaidAmount, patientchart.PatientName, patientchart.PatientSurname
FROM payment
right JOIN patientchart on payment.PaymentNo=patientchart.PatientNo
ORDER BY payment.DueUnpaidAmount

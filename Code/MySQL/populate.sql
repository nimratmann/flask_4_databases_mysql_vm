# Fake data inserted in Patients, Providers and Appointments tables 

INSERT INTO patients (
    patient_id, 
    first_name, 
    last_name, 
    date_of_birth, 
    primary_provider_id)
VALUES
    (1, 'Mia', 'Thompson', '2005-04-15', 2),
    (2, 'Jackson', 'Davis', '2002-10-28', 2),
    (3, 'Isabella', 'Martinez', '2007-02-09', 4),
    (4, 'Liam', 'Wilson', '2008-07-03', 1),
    (5, 'Ava', 'Rodriguez', '2001-11-19', 4),
    (6, 'Noah', 'Brown', '2004-05-22', 5),
    (7, 'Sophia', 'Lopez', '2009-12-07', 1),
    (8, 'Lucas', 'Harris', '2006-08-14', 3),
    (9, 'Olivia', 'Lewis', '2000-01-30', 4),
    (10, 'Ethan', 'Clark', '2003-06-12', 2),
    (11, 'Emma', 'Turner', '2007-03-05', 1),
    (12, 'Mason', 'King', '2008-09-26', 5),
    (13, 'Harper', 'Wright', '2005-07-18', 4),
    (14, 'Aiden', 'Green', '2002-11-01', 3),
    (15, 'Charlotte', 'Parker', '2006-04-10', 5);

INSERT INTO providers (
    provider_id,
    first_name, 
    last_name, 
    specialty, 
    phone_num)
VALUES
    (1, 'Amelia', 'Johnson', 'Oncology', '9876543210'),
    (2, 'Benjamin', 'Mitchell', 'Internal Medicine', '1234567890'),
    (3, 'Olivia', 'Anderson', 'Radiology', '5555555555'),
    (4, 'Ethan', 'Parker', 'Gynecology', '8888888888'),
    (5, 'Sophia', 'Williams', 'General Medicine', '7777777777');


INSERT INTO appointments (
    appointment_id, 
    date, 
    provider_id, 
    patient_id)
VALUES
    (1, '2023-10-15', 1, 1),
    (2, '2023-10-16', 2, 2),
    (3, '2023-10-17', 3, 3),
    (4, '2023-10-18', 4, 4),
    (5, '2023-10-19', 5, 5),
    (6, '2023-10-20', 1, 6),
    (7, '2023-10-21', 2, 7),
    (8, '2023-10-22', 3, 8),
    (9, '2023-10-23', 4, 9),
    (10, '2023-10-24', 5, 10),
    (11, '2023-10-25', 1, 11),
    (12, '2023-10-26', 2, 12),
    (13, '2023-10-27', 3, 13),
    (14, '2023-10-28', 4, 14),
    (15, '2023-10-29', 5, 15);

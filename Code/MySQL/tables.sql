CREATE TABLE patients(
    patient_id INT PRIMARY KEY AUTO_INCREMENT, 
    first_name TEXT NOT NULL, 
    last_name TEXT NOT NULL, 
    date_of_birth DATE,
    primary_provider_id INT,
    FOREIGN KEY (primary_provider_id) REFERENCES providers(primary_provider_id)
);

CREATE TABLE providers(
    provider_id INT PRIMARY KEY AUTO_INCREMENT, -- Updated the column name
    first_name TEXT NOT NULL, 
    last_name TEXT NOT NULL, 
    specialty TEXT NOT NULL, 
    phone_num VARCHAR(10) NOT NULL
);

CREATE TABLE appointments(
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    date DATE, 
    provider_id INT, -- Updated the column name
    patient_id INT,  -- Added patient_id
    FOREIGN KEY (provider_id) REFERENCES providers(provider_id), -- Updated foreign key
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)  -- Added foreign key for patients
);



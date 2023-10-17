CREATE TABLE providers (
    provider_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    specialty TEXT NOT NULL,
    phone_num VARCHAR(15) NOT NULL
);

CREATE TABLE patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    date_of_birth DATE,
    primary_provider_id INT, -- Assuming this is intended to link to a provider
    FOREIGN KEY (primary_provider_id) REFERENCES providers(provider_id)
);

CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    date DATE,
    provider_id INT,
    patient_id INT,
    FOREIGN KEY (provider_id) REFERENCES providers(provider_id),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);


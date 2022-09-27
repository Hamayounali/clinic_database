CREATE TABLE medical_histories (
    ID  SERIAL PRIMARY KEY,
    admitted_at timestamp,
    patient_it int,
    status varchar(100)
);

CREATE TABLE patients (
    ID  SERIAL PRIMARY KEY,
    name varchar(100),
    date_of_birth data
);

CREATE TABLE invoices (
    ID  SERIAL PRIMARY KEY,
    total_amount decimal(10,2),
    generated_at timestamp,
    payed_at timestamp,
    medical_history_id int
);

CREATE TABLE invoice_items (
    ID  SERIAL PRIMARY KEY,
    unit_price decimal(10,2),
    quantity int,
    totla_price decimal(10,2),
    invoice_id int,
    treatment_it int
);

CREATE TABLE treatments (
    ID  SERIAL PRIMARY KEY,
    type varchar(100);
    name varchar(100);
);

create table patient_treatments (
    ID SERIAL PRIMARY KEY,
    patient_id int,
    treatment_id int,
    FOREIGN KEY ( patient_id) REFERENCES patients(id),
    FOREIGN KEY (treatment_id) REFERENCES treatments(id)
);

CREATE TABLE patient_medical_histories (
    ID SERIAL PRIMARY KEY,
    patient_id int,
    medical_histories_id INT,
    FOREIGN KEY (medical_histories_id) REFERENCES medical_histories(id),
    FOREIGN KEY (patient_id) REFERENCES ppatients(id)
);
CREATE DATABASE emergency_hotline;
USE emergency_hotline;

-- Table for Baranggays
CREATE TABLE baranggays (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Table for Emergency Hotlines
CREATE TABLE emergency_hotlines (
    id INT AUTO_INCREMENT PRIMARY KEY,
    barangay_id INT NOT NULL,
    type ENUM('Medic', 'Police', 'Fire Dept') NOT NULL,
    hotline VARCHAR(20) NOT NULL,
    description TEXT NOT NULL, -- Added description column
    FOREIGN KEY (barangay_id) REFERENCES baranggays(id)
);

-- Table for Accident Prone Areas
CREATE TABLE accident_prone_areas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    photo VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO baranggays (name) VALUES ('Marawoy'), ('Pusil'), ('Balintawak');

INSERT INTO emergency_hotlines (barangay_id, type, hotline, description) VALUES
(1, 'Medic', '779 9999', 'Marawoy Health Center provides 24/7 medical services.'),
(1, 'Police', '779 8888', 'Marawoy Police Station, located in the heart of Marawoy, provides 24/7 service.'),
(1, 'Fire Dept', '779 7777', 'Marawoy Fire Department responds quickly to emergencies.'),
(2, 'Medic', '123 4567', 'Pusil Health Center offers medical assistance and services.'),
(2, 'Police', '234 5678', 'Pusil Police Department ensures safety and security in the area.'),
(2, 'Fire Dept', '345 6789', 'Pusil Fire Department is well-equipped for emergencies.'),
(3, 'Medic', '456 7890', 'Balintawak Health Center provides comprehensive healthcare services.'),
(3, 'Police', '567 8901', 'Balintawak Police Station is dedicated to community safety.'),
(3, 'Fire Dept', '678 9012', 'Balintawak Fire Department handles fire emergencies efficiently.');

show tables;
SELECT * FROM baranggays;
SELECT * FROM emergency_hotlines;



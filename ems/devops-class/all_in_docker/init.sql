CREATE DATABASE IF NOT EXISTS employeeSystem;
USE employeeSystem;

CREATE TABLE IF NOT EXISTS employees(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL, 
    age INT unsigned, 
    country VARCHAR(50), 
    position VARCHAR(50), 
    wage FLOAT NOT NULL
);
CREATE USER 'testing'@'localhost' IDENTIFIED BY 'mauFJcuf5dhRMQrjj';
GRANT ALL PRIVILEGES ON employeeSystem.* TO 'testing'@'localhost';

-- Create the user and grant privileges for any IP
CREATE USER 'testing'@'%' IDENTIFIED BY 'mauFJcuf5dhRMQrjj';
GRANT ALL PRIVILEGES ON employeeSystem.* TO 'testing'@'%';

FLUSH PRIVILEGES;

ALTER USER 'testing'@'localhost' IDENTIFIED WITH 'mysql_native_password' BY 'mauFJcuf5dhRMQrjj';
ALTER USER 'testing'@'%' IDENTIFIED WITH 'mysql_native_password' BY 'mauFJcuf5dhRMQrjj';
FLUSH PRIVILEGES;



CREATE DATABASE Tourism;
USE Tourism;

-- Таблица "Клиенты"
CREATE TABLE Clients (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(15)
);

-- Таблица "Туры"
CREATE TABLE Tours (
    tour_id INT AUTO_INCREMENT PRIMARY KEY,
    tour_name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL
);

-- Таблица "Услуги"
CREATE TABLE Services (
    service_id INT AUTO_INCREMENT PRIMARY KEY,
    service_name VARCHAR(100) NOT NULL,
    service_description TEXT
);

-- Таблица "Заказы"
CREATE TABLE Bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT,
    tour_id INT,
    booking_date DATE NOT NULL,
    FOREIGN KEY (client_id) REFERENCES Clients(client_id),
    FOREIGN KEY (tour_id) REFERENCES Tours(tour_id)
);

-- Таблица "Заказанные услуги"
CREATE TABLE Booking_Services (
    booking_service_id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT,
    service_id INT,
    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id),
    FOREIGN KEY (service_id) REFERENCES Services(service_id)
);
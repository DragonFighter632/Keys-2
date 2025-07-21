CREATE TABLE Услуги (
    id INT PRIMARY KEY AUTO_INCREMENT,
    название VARCHAR(255),
    описание TEXT
);

CREATE TABLE Туры (
    id INT PRIMARY KEY AUTO_INCREMENT,
    название VARCHAR(255),
    дата DATE,
    цена DECIMAL(10, 2),
    id_услуги INT,
    FOREIGN KEY (id_услуги) REFERENCES Услуги(id)
);

CREATE TABLE Клиенты (
    id INT PRIMARY KEY AUTO_INCREMENT,
    имя VARCHAR(255),
    контакт VARCHAR(255)
);

CREATE TABLE Заказы (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_клиента INT,
    id_тура INT,
    дата_заказа DATE,
    FOREIGN KEY (id_клиента) REFERENCES Клиенты(id),
    FOREIGN KEY (id_тура) REFERENCES Туры(id)
);
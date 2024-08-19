CREATE TABLE Users (
    userID INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(30) NOT NULL,
    lastName VARCHAR(30) NOT NULL,
    userAge INT NOT NULL,
    Gender VARCHAR(7) NOT NULL,
    userRole VARCHAR(6) DEFAULT 'user',
    emailAdd VARCHAR(100) NOT NULL UNIQUE,
    userPass VARCHAR(200) NOT NULL,
    userProfile TEXT
);

CREATE TABLE Products (
    prodID INT AUTO_INCREMENT PRIMARY KEY,
    prodName VARCHAR(40) NOT NULL,
    quantity INT NOT NULL,
    amount DECIMAL(18,2) NOT NULL,
    Category VARCHAR(30) NOT NULL,
    prodUrl TEXT
);

INSERT INTO Users (firstName, lastName, userAge, Gender, userRole, emailAdd, userPass, userProfile)
VALUES
('John', 'Doe', 28, 'Male', 'user', 'john.doe@example.com', 'passwordhash1', 'A brief profile description for John Doe.'),
('Jane', 'Smith', 34, 'Female', 'admin', 'jane.smith@example.com', 'passwordhash2', 'A brief profile description for Jane Smith.'),
('Alice', 'Johnson', 25, 'Female', 'user', 'alice.johnson@example.com', 'passwordhash3', 'A brief profile description for Alice Johnson.'),
('Bob', 'Brown', 40, 'Male', 'user', 'bob.brown@example.com', 'passwordhash4', 'A brief profile description for Bob Brown.'),
('Emily', 'Davis', 22, 'Female', 'user', 'emily.davis@example.com', 'passwordhash5', 'A brief profile description for Emily Davis.');

INSERT INTO Products (prodName, quantity, amount, Category, prodUrl)
VALUES
('Laptop', 10, 999.99, 'Electronics', 'http://example.com/laptop'),
('Headphones', 50, 199.99, 'Electronics', 'http://example.com/headphones'),
('Coffee Maker', 25, 49.99, 'Home Appliances', 'http://example.com/coffeemaker'),
('Smartphone', 30, 799.99, 'Electronics', 'http://example.com/smartphone'),
('Running Shoes', 100, 89.99, 'Sportswear', 'http://example.com/runningshoes');


CREATE TABLE Users (
    userID INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(30) NOT NULL,
    lastName VARCHAR(30) NOT NULL,
    userAge INT NOT NULL,
    Gender VARCHAR(7) DEFAULT 'Male' NOT NULL,
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
('ATBO Birch Cupboard', 15, 149.99, 'Furniture', 'https://imaraansheldon.github.io/Demure/Images/Products/Furniture/ATBO_Birch_Cupboard.jpg'),
('Mounted Crates', 20, 79.99, 'Storage', 'https://imaraansheldon.github.io/Demure/Images/Products/Storage/Mounted_Crates.jpg'),
('Gabby Gourd Vase', 25, 59.99, 'Decor', 'https://imaraansheldon.github.io/Demure/Images/Products/Decor/Gabby_Gourd_Vase.jpg'),
('Karolina Ring Vase', 30, 89.99, 'Decor', 'https://imaraansheldon.github.io/Demure/Images/Products/Decor/Karolina_Ring_Vase.jpg'),
('Black Fabric Sectional_Sofa', 10, 799.99, 'Furniture', 'https://imaraansheldon.github.io/Demure/Images/Products/Furniture/Black_Fabric_Sectional_Sofa.jpg'),
('Black Wood-Framed Black Padded Armchair', 12, 199.99, 'Furniture', 'https://imaraansheldon.github.io/Demure/Images/Products/Furniture/Black_Wooden_Framed_Black_Padded_Armchair.jpg'),
('Martin_Pechy_Couch_Brown', 8, 999.99, 'Furniture', 'https://imaraansheldon.github.io/Demure/Images/Products/Furniture/Martin_Pechy_Couch_Brown.jpg');

SET SQL_SAFE_UPDATES = 0;
DELETE FROM Products;
DELETE FROM Users;
TRUNCATE TABLE Products;
TRUNCATE TABLE Users;



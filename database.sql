CREATE DATABASE FruitStore;
GO

USE FruitStore;
GO

CREATE TABLE OrderStatus (
    OrderStatusID INT IDENTITY(1,1) PRIMARY KEY,
    FullName NVARCHAR(50)
);
GO
CREATE TABLE Category (
    CategoryID INT IDENTITY(1,1) PRIMARY KEY,
    FullName NVARCHAR(50),
    Description NVARCHAR(MAX)
);
GO

CREATE TABLE Product (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
	isBestSeller BIT DEFAULT 0,
    FullName NVARCHAR(100),
    Description NVARCHAR(MAX),
    Quantity INT,
    QuantitySold INT,
    ImageURL VARCHAR(200),
    CategoryID INT,
    Price MONEY,
	discount INT DEFAULT 0,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)  
);
GO
CREATE TABLE [User] (
    UserID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(30),
    LastName NVARCHAR(30),
    Address NVARCHAR(50),
	Role VARCHAR(10),
    AvatarURL VARCHAR(200)
);
GO
CREATE TABLE Review (
    ReviewID INT IDENTITY(1,1) PRIMARY KEY,
    Description NVARCHAR(MAX),
    UserID INT,
    ProductID INT,
    FOREIGN KEY (UserID) REFERENCES [User](UserID),  
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)  
);
GO
CREATE TABLE [Order] (
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    UserID INT,
    OrderDate DATETIME,
    ExpectedDate DATETIME,
    OrderStatusID INT, 
    TotalCost MONEY, 
    FOREIGN KEY (UserID) REFERENCES [User](UserID),  
    FOREIGN KEY (OrderStatusID) REFERENCES OrderStatus(OrderStatusID)  
);
GO
CREATE TABLE Cart (
    CartID INT IDENTITY(1,1) PRIMARY KEY,
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES [User](UserID)  
);
GO
CREATE TABLE CartItem (
    CartItemID INT IDENTITY(1,1) PRIMARY KEY,
    Quantity INT,
    TotalCost MONEY,
    CartID INT,
    ProductID INT,
    FOREIGN KEY (CartID) REFERENCES Cart(CartID),  
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)  
);
GO
CREATE TABLE OrderDetail (
    OrderDetailID INT IDENTITY(1,1) PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Cost MONEY,
    FOREIGN KEY (OrderID) REFERENCES [Order](OrderID),  
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)  
);
GO
INSERT INTO OrderStatus (FullName)
VALUES ('Pending'),  ('Delivered');
GO
INSERT INTO Category (FullName, Description)
VALUES ('Fruits', 'Fresh fruits and dried fruits'),
       ('Vegetables', 'Various types of vegetables'),
       ('Snacks', 'Healthy snacks and treats');
GO
INSERT INTO Product (isBestSeller, FullName, Description, Quantity, QuantitySold, ImageURL, CategoryID, Price, discount)
VALUES (1, 'Apple', 'Fresh and crispy apples', 100, 50, '/images/apple.jpg', 1, 1.99, 0),
       (0, 'Banana', 'Ripe and yellow bananas', 80, 30, '/images/banana.jpg', 1, 0.99, 0),
       (1, 'Carrot', 'Organic carrots', 120, 70, '/images/carrot.jpg', 2, 0.79, 0);
GO
INSERT INTO Product (isBestSeller, FullName, Description, Quantity, QuantitySold, ImageURL, CategoryID, Price, discount)
VALUES 
    (0, 'Orange', 'Fresh and juicy oranges', 80, 40, '/assets/images/orange.jpg', 1, 1.49, 0),
    (0, 'Grape', 'Sweet and seedless grapes', 100, 60, '/assets/images/grape.jpg', 1, 2.99, 0),
    (0, 'Apricot', 'Ripe and nutritious apricots', 60, 30, '/assets/images/papaya.jpg', 1, 3.49, 0),
    (0, 'Peach', 'Delicious and fuzzy peaches', 70, 35, '/assets/images/peach.jpg', 1, 1.99, 0),
    (1, 'Banana', 'Ripe and yellow bananas', 80, 50, '/assets/images/banana.jpg', 1, 0.99, 0),
    (1, 'Apple', 'Fresh and crispy apples', 100, 70, '/assets/images/apple.jpg', 1, 1.99, 0),
    (0, 'Tomato', 'Fresh tomatoes', 90, 60, '/assets/images/tomato.jpg', 2, 1.29, 0),
    (0, 'Broccoli', 'Nutritious broccoli', 50, 25, '/assets/images/broccoli.jpg', 2, 1.79, 0),
    (0, 'Bell Pepper', 'Colorful bell peppers', 40, 20, '/assets/images/bell_pepper.jpg', 2, 0.99, 0),
    (0, 'Potato', 'Versatile potatoes', 120, 80, '/assets/images/potato.jpg', 3, 0.89, 0),
    (0, 'Coriander', 'Fresh coriander leaves', 30, 15, '/assets/images/coriander.jpg', 3, 0.49, 0);
GO
INSERT INTO [User] (FirstName, LastName, Address, Role, AvatarURL)
VALUES ('Emily', 'Johnson', '789 Oak Ave', 'Customer', '/assets/images/emilyjohnson.jpg'),
       ('Michael', 'Brown', '101 Pine Rd', 'Admin', '/assets/images/michaelbrown.jpg');
GO
INSERT INTO Review (Description, UserID, ProductID)
VALUES ('Delicious!', 1, 4),
       ('Highly recommended.', 2, 5);
GO
INSERT INTO [Order] (UserID, OrderDate, ExpectedDate, OrderStatusID, TotalCost)
VALUES (1, '2024-07-12', '2024-07-17', 1, 18.97),
       (2, '2024-07-13', '2024-07-18', 2, 27.48);
GO
INSERT INTO Cart (UserID)
VALUES (1),
       (2);
GO
INSERT INTO CartItem (Quantity, TotalCost, CartID, ProductID)
VALUES (3, 7.47, 3, 1),
       (2, 2.58, 4, 2);
GO
INSERT INTO OrderDetail (OrderID, ProductID, Quantity, Cost)
VALUES (3, 1, 3, 7.47),
       (4, 2, 2, 2.58);

select * from OrderDetail

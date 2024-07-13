CREATE DATABASE FruitStore;
GO
DROP DATABASE FruitStore
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
       ('Nuts', 'Healthy nuts and treats');
GO
INSERT INTO [User] (FirstName, LastName, Address, Role, AvatarURL)
VALUES ('Emily', 'Johnson', '789 Oak Ave', 'Customer', '/assets/images/emilyjohnson.jpg'),
       ('Michael', 'Brown', '101 Pine Rd', 'Admin', 'storage/images/taoanhdep_thay_tu_50818.png');
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
VALUES (3, 7.47, 1, 1),
       (2, 2.58, 2, 2);
GO
INSERT INTO OrderDetail (OrderID, ProductID, Quantity, Cost)
VALUES (1, 1, 3, 7.47),
       (2, 2, 2, 2.58);

select * from OrderDetail


SELECT COUNT(*) AS total FROM [User]
select * from Cart
select * from [Order]
select * from Category


select  top 8 * from Product
	where isBestSeller = 1

--fruit
INSERT INTO Product (isBestSeller, FullName, Description, Quantity, QuantitySold, ImageURL, CategoryID, Price, discount)
VALUES 
    (0, 'Mango', 'Sweet and juicy mangoes', 70, 50, '/views/client/asset/img/mango.jpg', 1, 1.99, 0),
    (1, 'Pineapple', 'Fresh and tangy pineapples', 60, 30, '/views/client/asset/img/pineapple.jpg', 1, 2.49, 0),
    (0, 'Strawberry', 'Fresh and sweet strawberries', 80, 40, '/views/client/asset/img/strawberry.jpg', 1, 3.99, 0),
    (1, 'Blueberry', 'Plump and juicy blueberries', 100, 60, '/views/client/asset/img/blueberry.jpg', 1, 4.99, 0),
    (0, 'Raspberry', 'Tangy and sweet raspberries', 90, 45, '/views/client/asset/img/raspberry.jpg', 1, 5.49, 0),
    (1, 'Watermelon', 'Refreshing and juicy watermelon', 50, 25, '/views/client/asset/img/watermelon.jpg', 1, 3.49, 0),
    (0, 'Kiwi', 'Tart and sweet kiwi fruit', 60, 30, '/views/client/asset/img/kiwi.jpg', 1, 2.99, 0),
    (1, 'Cherry', 'Sweet and succulent cherries', 70, 35, '/views/client/asset/img/cherry.jpg', 1, 4.99, 0),
    (0, 'Pomegranate', 'Rich and juicy pomegranate', 40, 20, '/views/client/asset/img/pomegranate.jpg', 1, 3.99, 0),
    (0, 'Papaya', 'Delicious and tropical papaya', 50, 25, '/views/client/asset/img/papaya.jpg', 1, 2.79, 0);
GO
--vegetable
INSERT INTO Product (isBestSeller, FullName, Description, Quantity, QuantitySold, ImageURL, CategoryID, Price, discount)
VALUES 
    (0, 'Spinach', 'Fresh and nutritious spinach', 60, 30, '/views/client/asset/img/spinach.jpg', 2, 1.49, 0),
    (0, 'Lettuce', 'Crispy and fresh lettuce', 80, 40, '/views/client/asset/img/lettuce.jpg', 2, 1.29, 0),
    (0, 'Kale', 'Healthy and green kale', 50, 25, '/views/client/asset/img/kale.jpg', 2, 2.49, 0),
    (1, 'Carrot', 'Crunchy and sweet carrots', 90, 45, '/views/client/asset/img/carrot.jpg', 2, 0.99, 0),
    (0, 'Cauliflower', 'Fresh cauliflower', 70, 35, '/views/client/asset/img/cauliflower.jpg', 2, 1.79, 0),
    (1, 'Cucumber', 'Cool and refreshing cucumber', 100, 50, '/views/client/asset/img/cucumber.jpg', 2, 0.89, 0),
    (0, 'Cabbage', 'Healthy green cabbage', 60, 30, '/views/client/asset/img/cabbage.jpg', 2, 1.19, 0),
    (1, 'Zucchini', 'Fresh and versatile zucchini', 80, 40, '/views/client/asset/img/zucchini.jpg', 2, 1.59, 0),
    (0, 'Eggplant', 'Nutritious and tasty eggplant', 50, 25, '/views/client/asset/img/eggplant.jpg', 2, 1.99, 0),
    (1, 'Radish', 'Crisp and peppery radishes', 40, 20, '/views/client/asset/img/radish.jpg', 2, 1.09, 0);
GO
--nut
INSERT INTO Product (isBestSeller, FullName, Description, Quantity, QuantitySold, ImageURL, CategoryID, Price, discount)
VALUES 
    (0, 'Almond', 'Crunchy and nutritious almonds', 50, 25, '/views/client/asset/img/almond.jpg', 3, 5.99, 0),
    (1, 'Walnut', 'Rich and healthy walnuts', 60, 30, '/views/client/asset/img/walnut.jpg', 3, 6.99, 0),
    (0, 'Cashew', 'Creamy and delicious cashews', 40, 20, '/views/client/asset/img/cashew.jpg', 3, 7.49, 0),
    (1, 'Pistachio', 'Crunchy and tasty pistachios', 70, 35, '/views/client/asset/img/pistachio.jpg', 3, 8.99, 0),
    (0, 'Hazelnut', 'Nutty and rich hazelnuts', 50, 25, '/views/client/asset/img/hazelnut.jpg', 3, 6.49, 0),
    (1, 'Peanut', 'Crunchy and tasty peanuts', 90, 45, '/views/client/asset/img/peanut.jpg', 3, 3.99, 0),
    (0, 'Pine Nut', 'Rich and buttery pine nuts', 30, 15, '/views/client/asset/img/pine_nut.jpg', 3, 9.99, 0),
    (1, 'Macadamia', 'Buttery and rich macadamias', 20, 10, '/views/client/asset/img/macadamia.jpg', 3, 11.99, 0),
    (0, 'Brazil Nut', 'Rich and creamy Brazil nuts', 40, 20, '/views/client/asset/img/brazil_nut.jpg', 3, 7.99, 0),
    (0, 'Sunflower Seed', 'Crunchy and nutritious sunflower seeds', 80, 40, '/views/client/asset/img/sunflower_seed.jpg', 3, 2.99, 0);
GO

DECLARE @RandomProducts TABLE (
    ProductID INT
)
select * from Product
UPDATE Product
SET discount = 0;
UPDATE Product
SET discount = 30
WHERE ProductID IN (1, 4, 7, 12, 15, 18, 22, 25, 28, 30);


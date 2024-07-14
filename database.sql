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
    AvatarURL VARCHAR(200),
	Email VARCHAR(50),
	Password VARCHAR(50)
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
VALUES ('Pending'),  ('Delivered'), ('Cancelled');
GO
INSERT INTO Category (FullName, Description)
VALUES ('Fruits', 'Fresh fruits and dried fruits'),
       ('Vegetables', 'Various types of vegetables'),
       ('Nuts', 'Healthy nuts and treats');
GO
INSERT INTO [User] (FirstName, LastName, Address, Role, AvatarURL, Email, Password)
VALUES ('Quang', 'Hoang', 'Dannang', 'Customer', '/views/client/asset/img/emilyjohnson.jpg', 'quang@gmail', '123'),
		('Huy', 'Tran', 'Dannang', 'Customer', '/views/client/asset/img/emilyjohnson.jpg', 'huy@gmail', '123'),
		('Loi', 'Le', 'Dannang', 'Customer', '/views/client/asset/img/emilyjohnson.jpg', 'loi@gmail', '123'),
		('Trong', 'Nguyen', 'Dannang', 'Customer', '/views/client/asset/img/emilyjohnson.jpg', 'trong@gmail', '123'),
       ('Dat', 'Nguyen', 'Dannang', 'Admin', 'storage/images/taoanhdep_thay_tu_50818.png','dat@gmail', '123');
GO

--fruit
INSERT INTO Product (isBestSeller, FullName, Description, Quantity, QuantitySold, ImageURL, CategoryID, Price, discount)
VALUES 
    (0, 'Mango', 'Our mangoes are sweet and juicy, perfect for a refreshing summer treat. They are handpicked from the finest orchards to ensure the highest quality.', 70, 50, '/views/client/asset/img/mango.jpg', 1, 1.99, 0),
    (1, 'Pineapple', 'These pineapples are fresh and tangy, offering a tropical flavor that is both sweet and slightly tart. Perfect for snacking or adding to dishes.', 60, 30, '/views/client/asset/img/pineapple.jpg', 1, 2.49, 0),
    (0, 'Strawberry', 'Our strawberries are fresh and sweet, bursting with flavor. They are perfect for desserts, salads, or simply enjoying on their own.', 80, 40, '/views/client/asset/img/strawberry.jpg', 1, 3.99, 0),
    (1, 'Blueberry', 'These blueberries are plump and juicy, offering a delightful burst of sweetness. They are great for baking, smoothies, or snacking.', 100, 60, '/views/client/asset/img/blueberry.jpg', 1, 4.99, 0.30),
    (0, 'Raspberry', 'Our raspberries are tangy and sweet, providing a perfect balance of flavors. They are ideal for jams, desserts, or eating fresh.', 90, 45, '/views/client/asset/img/raspberry.jpg', 1, 5.49, 0),
    (1, 'Watermelon', 'This watermelon is refreshing and juicy, perfect for hot summer days. Its sweet and hydrating qualities make it a family favorite.', 50, 25, '/views/client/asset/img/watermelon.jpg', 1, 3.49, 0),
    (0, 'Kiwi', 'Our kiwi fruits are tart and sweet, offering a unique flavor that is both refreshing and delicious. Great for snacks or adding to fruit salads.', 60, 30, '/views/client/asset/img/kiwi.jpg', 1, 2.99, 0.30),
    (1, 'Cherry', 'These cherries are sweet and succulent, bursting with flavor. Perfect for snacking, baking, or adding a touch of sweetness to dishes.', 70, 35, '/views/client/asset/img/cherry.jpg', 1, 4.99, 0),
    (0, 'Pomegranate', 'Our pomegranates are rich and juicy, full of antioxidants and flavor. Great for juicing, snacking, or adding to salads.', 40, 20, '/views/client/asset/img/pomegranate.jpg', 1, 3.99, 0),
    (0, 'Papaya', 'This papaya is delicious and tropical, with a sweet flavor and soft texture. Perfect for smoothies, salads, or eating fresh.', 50, 25, '/views/client/asset/img/papaya.jpg', 1, 2.79, 0.30);
GO

-- Vegetable
INSERT INTO Product (isBestSeller, FullName, Description, Quantity, QuantitySold, ImageURL, CategoryID, Price, discount)
VALUES 
    (0, 'Spinach', 'Our spinach is fresh and nutritious, packed with vitamins and minerals. Perfect for salads, smoothies, or cooked dishes.', 60, 30, '/views/client/asset/img/spinach.jpg', 2, 1.49, 0.30),
    (0, 'Lettuce', 'This lettuce is crispy and fresh, providing the perfect base for salads and sandwiches. It adds a delightful crunch to any meal.', 80, 40, '/views/client/asset/img/lettuce.jpg', 2, 1.29, 0),
    (0, 'Kale', 'Our kale is healthy and green, full of antioxidants and nutrients. Ideal for salads, smoothies, or cooking.', 50, 25, '/views/client/asset/img/kale.jpg', 2, 2.49, 0.30),
    (1, 'Carrot', 'These carrots are crunchy and sweet, perfect for snacking, cooking, or adding to salads. They are packed with beta-carotene and vitamins.', 90, 45, '/views/client/asset/img/carrot.jpg', 2, 0.99, 0),
    (0, 'Cauliflower', 'Our cauliflower is fresh and versatile, perfect for roasting, steaming, or making into cauliflower rice.', 70, 35, '/views/client/asset/img/cauliflower.jpg', 2, 1.79, 0),
    (1, 'Cucumber', 'Cool and refreshing cucumbers, ideal for salads and as a hydrating snack. Crisp and delicious.', 100, 50, '/views/client/asset/img/cucumber.jpg', 2, 0.89, 0.30),
    (0, 'Cabbage', 'Healthy green cabbage, perfect for coleslaw, salads, and cooked dishes. Full of vitamins and minerals.', 60, 30, '/views/client/asset/img/cabbage.jpg', 2, 1.19, 0),
    (1, 'Zucchini', 'Fresh and versatile zucchini, great for grilling, roasting, or adding to stir-fries. A low-calorie and nutritious choice.', 80, 40, '/views/client/asset/img/zucchini.jpg', 2, 1.59, 0),
    (0, 'Eggplant', 'Nutritious and tasty eggplants, perfect for a variety of dishes including grilling and baking.', 50, 25, '/views/client/asset/img/eggplant.jpg', 2, 1.99, 0.30),
    (1, 'Radish', 'Crisp and peppery radishes, great for adding a bit of spice to salads and as a crunchy snack.', 40, 20, '/views/client/asset/img/radish.jpg', 2, 1.09, 0);
GO

-- Nut
INSERT INTO Product (isBestSeller, FullName, Description, Quantity, QuantitySold, ImageURL, CategoryID, Price, discount)
VALUES 
    (0, 'Almond', 'Crunchy and nutritious almonds, perfect for snacking and adding to recipes. High in protein and healthy fats.', 50, 25, '/views/client/asset/img/almond.jpg', 3, 5.99, 0),
    (1, 'Walnut', 'Rich and healthy walnuts, ideal for baking, snacking, and adding to salads. Full of omega-3 fatty acids.', 60, 30, '/views/client/asset/img/walnut.jpg', 3, 6.99, 0),
    (0, 'Cashew', 'Creamy and delicious cashews, great for snacking and cooking. Packed with essential nutrients.', 40, 20, '/views/client/asset/img/cashew.jpg', 3, 7.49, 0),
    (1, 'Pistachio', 'Crunchy and tasty pistachios, perfect for a healthy snack. Rich in protein and antioxidants.', 70, 35, '/views/client/asset/img/pistachio.jpg', 3, 8.99, 0.30),
    (0, 'Hazelnut', 'Nutty and rich hazelnuts, ideal for baking, snacking, and making nut butters.', 50, 25, '/views/client/asset/img/hazelnut.jpg', 3, 6.49, 0),
    (1, 'Peanut', 'Crunchy and tasty peanuts, great for snacking, cooking, and making peanut butter. High in protein.', 90, 45, '/views/client/asset/img/peanut.jpg', 3, 3.99, 0),
    (0, 'Pine Nut', 'Rich and buttery pine nuts, perfect for salads, pesto, and baking. High in healthy fats.', 30, 15, '/views/client/asset/img/pine_nut.jpg', 3, 9.99, 0),
    (1, 'Macadamia', 'Buttery and rich macadamias, great for snacking and baking. Full of monounsaturated fats.', 20, 10, '/views/client/asset/img/macadamia.jpg', 3, 11.99, 0),
    (0, 'Brazil Nut', 'Rich and creamy Brazil nuts, perfect for snacking and baking. High in selenium.', 40, 20, '/views/client/asset/img/brazil_nut.jpg', 3, 7.99, 0),
    (0, 'Sunflower Seed', 'Crunchy and nutritious sunflower seeds, great for snacking, adding to salads, and baking.', 80, 40, '/views/client/asset/img/sunflower_seed.jpg', 3, 2.99, 0);
GO
INSERT INTO Review (Description, UserID, ProductID)
VALUES 
	('The mangoes were incredibly sweet and juicy. Perfect for a summer treat!', 2, 11),
    ('Pineapples were fresh and tangy, adding a tropical flavor to my meals.', 2, 12),
    ('Strawberries were fresh and sweet, great for desserts.', 2, 3),
    ('The blueberries are absolutely delicious! They are plump, juicy, and bursting with flavor. I love adding them to my morning yogurt and smoothies. Highly recommend these to anyone looking for fresh and tasty blueberries.', 1, 7),
    ('I bought the raspberries last week, and they were amazing. They were perfectly sweet and tangy, just the way I like them. They made a great addition to my fruit salad and were also delicious on their own. Will definitely buy again.', 1, 2),
    ('The watermelon was refreshing and hydrating, perfect for a hot day.', 3, 1),
    ('Kiwis were tart and sweet, adding a unique flavor to my fruit salad.', 3, 8),
    ('Cherries were sweet and succulent, ideal for snacking.', 4, 10),
    ('Pomegranates were rich and juicy, great for adding to salads.', 4, 30),
    ('Papayas were tropical and delicious, perfect for smoothies.', 4, 20)
GO

select * from Review

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



DECLARE @RandomProducts TABLE (
    ProductID INT
)
select * from Producta
UPDATE Product
SET discount = 0;
UPDATE Product
SET discount = 30
WHERE ProductID IN (1, 4, 7, 12, 15, 18, 22, 25, 28, 30);

SELECT COUNT(*) AS number
FROM Product
WHERE CategoryID = 1;


;
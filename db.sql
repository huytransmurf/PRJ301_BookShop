CREATE DATABASE BookShop;
GO

-- S? d?ng c? s? d? li?u BookShop
USE BookShop;
GO

-- T?o b?ng OrderStatus v?i OrderStatusID là khóa chính t? t?ng và FullName là NVARCHAR(50)
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
    FullName NVARCHAR(100),
    Description NVARCHAR(MAX),
    Quantity INT,
    QuantitySold INT,
    ImageURL VARCHAR(200),
    CategoryID INT,
    Price MONEY,  
    Author NVARCHAR(50),
    NumberOfPages INT,
    Publisher NVARCHAR(50),
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)  -- Thi?t l?p khóa ngo?i tham chi?u ??n b?ng Category
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
    FOREIGN KEY (UserID) REFERENCES [User](UserID),  -- Khóa ngo?i tham chi?u ??n b?ng User
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)  -- Khóa ngo?i tham chi?u ??n b?ng Product
);
GO
CREATE TABLE [Order] (
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    UserID INT,
    OrderDate DATETIME,
    ExpectedDate DATETIME,
    OrderStatusID INT, -- ?ây là khóa ngo?i tham chi?u ??n b?ng OrderStatus
    TotalCost MONEY, 
    FOREIGN KEY (UserID) REFERENCES [User](UserID),  -- Khóa ngo?i tham chi?u ??n b?ng User
    FOREIGN KEY (OrderStatusID) REFERENCES OrderStatus(OrderStatusID)  -- Khóa ngo?i tham chi?u ??n b?ng OrderStatus
);
GO
CREATE TABLE Cart (
    CartID INT IDENTITY(1,1) PRIMARY KEY,
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES [User](UserID)  -- Thi?t l?p khóa ngo?i tham chi?u ??n b?ng User
);
GO
CREATE TABLE CartItem (
    CartItemID INT IDENTITY(1,1) PRIMARY KEY,
    Quantity INT,
    TotalCost MONEY,
    CartID INT,
    ProductID INT,
    FOREIGN KEY (CartID) REFERENCES Cart(CartID),  -- Khóa ngo?i tham chi?u ??n b?ng Cart
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)  -- Khóa ngo?i tham chi?u ??n b?ng Product
);
GO
CREATE TABLE OrderDetail (
    OrderDetailID INT IDENTITY(1,1) PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Cost MONEY,
    FOREIGN KEY (OrderID) REFERENCES [Order](OrderID),  -- Khóa ngo?i tham chi?u ??n b?ng Order
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)  -- Khóa ngo?i tham chi?u ??n b?ng Product
);
GO
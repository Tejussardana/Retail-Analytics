CREATE TABLE dbo.final_sales_analytics
(
    OrderID VARCHAR(20) NOT NULL,
    OrderDate DATE NULL,

    CustomerID VARCHAR(20) NULL,
    CustomerName VARCHAR(100) NULL,
    Email VARCHAR(150) NULL,
    City VARCHAR(50) NULL,
    State VARCHAR(50) NULL,
    Region VARCHAR(50) NULL,
    CustomerSegment VARCHAR(50) NULL,

    ProductID VARCHAR(20) NULL,
    ProductName VARCHAR(100) NULL,
    Category VARCHAR(50) NULL,
    SubCategory VARCHAR(50) NULL,
    Brand VARCHAR(50) NULL,

    Quantity INT NULL,
    Discount DECIMAL(10,4) NULL,

    OrderStatus VARCHAR(50) NULL,
    SalesChannel VARCHAR(50) NULL,
    SalesRep VARCHAR(100) NULL,

    PaymentID VARCHAR(20) NULL,
    PaymentDate DATE NULL,
    PaymentMode VARCHAR(50) NULL,
    PaymentStatus VARCHAR(50) NULL,
    AmountPaid DECIMAL(18,2) NULL,

    ReturnID VARCHAR(20) NULL,
    ReturnDate DATE NULL,
    ReturnReason VARCHAR(100) NULL,
    ReturnStatus VARCHAR(50) NULL,
    RefundAmount DECIMAL(18,2) NULL,

    UnitPrice DECIMAL(18,2) NULL,
    CostPrice DECIMAL(18,2) NULL,

    GrossAmount DECIMAL(18,2) NULL,
    DiscountAmount DECIMAL(18,2) NULL,
    NetAmount DECIMAL(18,2) NULL,
    GSTAmount DECIMAL(18,2) NULL,
    FinalAmount DECIMAL(18,2) NULL,
    AdjustedFinalAmount DECIMAL(18,2) NULL,

    CostAmount DECIMAL(18,2) NULL,
    ProfitAmount DECIMAL(18,2) NULL,
    ProfitMargin DECIMAL(10,2) NULL,

    PaymentFlag VARCHAR(10) NULL,
    ReturnFlag VARCHAR(10) NULL,
    RevenueCategory VARCHAR(50) NULL,

    LoadDateTime DATETIME DEFAULT GETDATE()
);

select * from dbo.final_sales_analytics;




-------------------------------------------



CREATE TABLE dbo.rejected_orders
(
    RejectedID INT IDENTITY(1,1) PRIMARY KEY,

    OrderID VARCHAR(20) NULL,
    OrderDate VARCHAR(50) NULL,
    CustomerID VARCHAR(20) NULL,
    ProductID VARCHAR(20) NULL,
    Quantity VARCHAR(50) NULL,
    Discount VARCHAR(50) NULL,
    OrderStatus VARCHAR(50) NULL,
    SalesChannel VARCHAR(50) NULL,
    SalesRep VARCHAR(100) NULL,

    PaymentStatus VARCHAR(50) NULL,
    ReturnStatus VARCHAR(50) NULL,

    RejectReason VARCHAR(300) NULL,
    SourceFileName VARCHAR(100) NULL,

    RejectedDateTime DATETIME DEFAULT GETDATE()
);

select * from dbo.rejected_orders;


--------------------------------------------------


CREATE TABLE dbo.summary_revenue_region_category
(
    SummaryID INT IDENTITY(1,1) PRIMARY KEY,

    Region VARCHAR(50) NULL,
    Category VARCHAR(50) NULL,

    TotalOrders INT NULL,
    TotalQuantity INT NULL,
    TotalRevenue DECIMAL(18,2) NULL,
    TotalProfit DECIMAL(18,2) NULL,
    AverageOrderValue DECIMAL(18,2) NULL,

    LoadDateTime DATETIME DEFAULT GETDATE()
);

select * from dbo.summary_revenue_region_category;


----------------------------------------------------------



CREATE TABLE dbo.summary_sales_channel
(
    SummaryID INT IDENTITY(1,1) PRIMARY KEY,

    SalesChannel VARCHAR(50) NULL,

    TotalOrders INT NULL,
    TotalQuantity INT NULL,
    TotalRevenue DECIMAL(18,2) NULL,
    TotalProfit DECIMAL(18,2) NULL,
    AverageOrderValue DECIMAL(18,2) NULL,

    LoadDateTime DATETIME DEFAULT GETDATE()
);


select * from summary_sales_channel;

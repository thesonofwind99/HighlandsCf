﻿CREATE DATABASE ASM_SOF3011
GO
USE ASM_SOF3011
GO

--drop database ASM_SOF3011
CREATE TABLE CATEGORY(
	ID_CATE varchar(4) NOT NULL,
	CATE_NAME nvarchar(100) NOT NULL,
	PRIMARY KEY(ID_CATE)
)
GO
CREATE TABLE CATE_PROD(
	ID_CATE_PROD int IDENTITY,
	ID_CATE varchar(4) NOT NULL,
	ID_PROD varchar(4) NOT NULL
	PRIMARY KEY(ID_CATE_PROD)
)
GO
CREATE TABLE PROD(
	ID_PROD varchar(4) NOT NULL,
	TITLE nvarchar(100) NOT NULL,
	IMG_MAIN varchar(MAX) NOT NULL,
	PRICE float NOT NULL,
	SALE float NOT NULL,
	NEW_PRICE float NOT NULL,
	DESCRIBE nvarchar(MAX)
	PRIMARY KEY(ID_PROD)
)
GO
CREATE TABLE IMG_PROD(
	ID_IMG varchar(4) NOT NULL,
	ID_PROD varchar(4) NOT NULL,
	IMG_CLONE varchar(MAX) NOT NULL
	PRIMARY KEY(ID_IMG)
)
GO
CREATE TABLE ADMIN(
	ID_ADMIN varchar(4) NOT NULL,
	USERNAME varchar(20) NOT NULL,
	PASSWORD varchar(20) NOT NULL,
	PRIMARY KEY(ID_ADMIN)
)
GO
CREATE TABLE ACCOUNT
(
	ID_ACC varchar(4) NOT NULL,
	LAST_NAME nvarchar(20) NOT NULL,
	FIRST_NAME nvarchar(50) NOT NULL,
	PHONE_NUMBER varchar(15) NOT NULL,
	EMAIL varchar(MAX) NOT NULL,
	PASSWORD varchar(20) NOT NULL
	PRIMARY KEY(ID_ACC)
)
GO
CREATE TABLE CART (
    ID_CART INT IDENTITY(1, 1) NOT NULL,
    ID_ACC varchar(4) NOT NULL,
    ID_PROD varchar(4) NOT NULL,
    QUANTITY INT NOT NULL,
    PRICE float  NOT NULL,
    CREATE_AT DATETIME DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(ID_CART)
);
GO
CREATE TABLE COUPON (
    ID_COUPON INT IDENTITY,
    COUPON_CODE varchar(20) NOT NULL UNIQUE,
    DISCOUNT float NOT NULL,
    START_DATE DATE NOT NULL,
    END_DATE DATE NOT NULL,
	PRIMARY KEY(ID_COUPON)
);
GO
CREATE TABLE SHIPPING_DISCOUNT (
    ID_SHIPPING INT IDENTITY,
	SHIPPING_CODE VARCHAR(20) NOT NULL UNIQUE,
    DISCOUNT DECIMAL(5,2) NOT NULL,
    MIN_ORDER_AMOUT DECIMAL(10,2) NOT NULL,
    START_DATE DATE NOT NULL,
    END_DATE DATE NOT NULL
	PRIMARY KEY(ID_SHIPPING)
);
GO
CREATE TABLE PAYMENT(
	ID_PAYT INT IDENTITY,
	ID_CART INT NOT NULL,
	ID_COUPON INT,
	ID_SHIPPING INT,
	METHOD nvarchar(20)
	PRIMARY KEY(ID_PAYT)
)
GO
ALTER TABLE IMG_PROD ADD CONSTRAINT FK_ID_PROD_IMG FOREIGN KEY(ID_PROD) REFERENCES PROD(ID_PROD);
ALTER TABLE CATE_PROD ADD CONSTRAINT FK_ID_CATE_ALL FOREIGN KEY (ID_CATE) REFERENCES CATEGORY(ID_CATE);
ALTER TABLE CATE_PROD ADD CONSTRAINT FK_ID_PROD_ALL FOREIGN KEY (ID_PROD) REFERENCES PROD(ID_PROD);
ALTER TABLE CART ADD CONSTRAINT FK_ID_ACC FOREIGN KEY (ID_ACC) REFERENCES ACCOUNT(ID_ACC);
ALTER TABLE CART ADD CONSTRAINT FK_ID_PROD FOREIGN KEY (ID_PROD) REFERENCES PROD(ID_PROD);
ALTER TABLE PAYMENT ADD CONSTRAINT FK_ID_CART FOREIGN KEY (ID_CART) REFERENCES CART(ID_CART);
ALTER TABLE PAYMENT ADD CONSTRAINT FK_ID_COUPON FOREIGN KEY (ID_COUPON) REFERENCES COUPON(ID_COUPON);
ALTER TABLE PAYMENT ADD CONSTRAINT FK_ID_SHIPPING FOREIGN KEY (ID_SHIPPING) REFERENCES SHIPPING_DISCOUNT(ID_SHIPPING);
ALTER TABLE ADMIN ADD CONSTRAINT UNI_USERNAME UNIQUE(USERNAME);

--INSERT CATEGORY
INSERT INTO CATEGORY VALUES
('c001', N'Deal đang diễn ra'),
('c002', N'Sản phẩm bán chạy'),
('c003', N'Cà phê rang say'),
('c004', N'Cà phê uống liền')
GO

--INSERT PROD
INSERT INTO PROD VALUES
('p001', N'[TẶNG THÊM 3 GÓI] Combo 2 Cà Phê Truyền Thống Highlands Coffee 1kg và 3 gói 200gr', 'anh1.webp', 885000, 25, 660000, N''),
('p002', N'COMBO 2 Gói Cà Phê Rang Xay Truyền Thống Highlands Coffee 200g/gói', 'anh2.webp', 150000, 27, 110000, N''),
('p003', N'COMBO 2 Gói Cà Phê Rang Xay Culi Highlands Coffee 200g/gói', 'anh3.webp', 190000, 24, 145000, N''),
('p004', N'COMBO 2 Gói Cà Phê Rang Xay Moka Highlands Coffee 200g/gói', 'anh4.webp', 200000, 25, 150000, N''),
('p005', N'[MUA 1 TẶNG 1] Cà Phê Bột Truyền Thống Highlands Coffee 1KG', 'anh5.webp', 0, 0, 330000, N''),
('p006', N'Thùng 24 Lon Cà Phê Sữa Highlands Coffee 235ml/lon', 'anh6.webp', 360000, 14, 310000, N''),
('p007', N'Thùng 24 Lon Cà Phê Sữa Highlands Coffee 185ml/lon', 'anh7.webp', 312000, 16, 262000, N''),
('p008', N'Thùng 48 hộp Cà phê Sữa Highlands Coffee Tetra pack (180ml /hộp)', 'anh8.webp', 480000, 13, 416000, N''),
('p009', N'Combo 2 Lốc Cà Phê Sữa Highlands Coffee 235ml/lon', 'anh9.webp', 180000, 2, 177000, N''),
('p010', N'Combo 2 Lốc Cà Phê Sữa Highlands Coffee 185ml/lon', 'anh10.webp', 156000, 2, 153000, N'')
GO

INSERT INTO CATE_PROD VALUES
('c001', 'p001'),
('c001', 'p002'),
('c001', 'p003'),
('c001', 'p004'),
('c001', 'p005'),
('c002', 'p002'),
('c002', 'p004'),
('c002', 'p006'),
('c002', 'p008'),
('c002', 'p001'),
('c003', 'p005'),
('c003', 'p002'),
('c003', 'p004'),
('c003', 'p003'),
('c003', 'p001'),
('c004', 'p006'),
('c004', 'p007'),
('c004', 'p008'),
('c004', 'p009'),
('c004', 'p010')
GO

INSERT INTO ADMIN VALUES
('ad01', 'nhandt', '123'),
('ad02', 'dtnhan', '123'),
('ad03', 'nhandt1', '321')
GO

INSERT INTO IMG_PROD VALUES
('i001', 'p001', 'anhphu.webp'),
('i002', 'p002', 'anh2_1.webp'),
('i003', 'p002', 'anh2_2.webp'),
('i004', 'p002', 'anhphu.webp'),
('i005', 'p003', 'anh3_1.webp'),
('i006', 'p003', 'anh3_2.webp'),
('i007', 'p003', 'anh3_3.webp'),
('i008', 'p003', 'anhphu.webp')
GO


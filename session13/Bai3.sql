create database QuanLyCuaHang;
use QuanLyCuaHang;
create table Customer (
	cID int primary key,
    Name varchar(25),
    cAge tinyint
);
create table qlOrder (
	oID int primary key,
    cID int,
    foreign key(cID) references customer(cID),
    oDate datetime,
    oTotalPrice int
);
create table product (
	pID int primary key,
    pName varchar(25),
    pPrice int
);
create table orderdetail(
	oID int,
    foreign key(oID) references qlOrder(oID),
    pID int,
	foreign key(pID) references product(pID),
    primary key (oID, pID),
	odQTY int
);
insert into Customer values
(1, 'Minh Quan', 10),
(2, 'Ngoc Oanh', 20),
(3, 'Hong Ha', 50);
INSERT INTO qlOrder (oID, cID, oDate, oTotalPrice) VALUES
(1, 1, '2006-03-21', NULL),
(2, 2, '2006-03-23', NULL),
(3, 1, '2006-03-16', NULL);
INSERT INTO Product (pID, pName, pPrice) VALUES
(1, 'May Giat', 3),
(2, 'Tu Lanh', 5),
(3, 'Dieu Hoa', 7),
(4, 'Quat', 1),
(5, 'Bep Dien', 2);
INSERT INTO OrderDetail (oID, pID, odQTY) VALUES
(1, 1, 3),
(1, 3, 7),
(1, 4, 2),
(2, 1, 1),
(3, 1, 8),
(2, 5, 4),
(2, 3, 3);

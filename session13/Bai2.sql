create database QuanLyBanHang;
use QuanLyBanHang;
create table Customer (
	cID int primary key,
    cName varchar(50),
    cAge int
);
create table qlOrder (
	oID int primary key,
    cID int,
    foreign key(cID) references customer(cID),
    oDate date,
    oTotalPrice float
);
create table product (
	pID int primary key,
    pName varchar(50),
    pPrice float
);
create table orderdetail(
	oID int,
    foreign key(oID) references qlOrder(oID),
    pID int,
	foreign key(pID) references product(pID),
    primary key (oID, pID),
	odQTY varchar(10)
);
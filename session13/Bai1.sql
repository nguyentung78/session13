create database bai1;
use bai1;
create table NhaCungCap (
	maNCC varchar(10) primary key,
    tenNCC varchar(50) ,
    DiaChi varchar(100),
    SoDienThoai int 
);
create table DonDatHang (
	soDH int primary key,
    ngayDH date,
    maNCC varchar(10),
    foreign key(maNCC) references nhacungcap(maNCC)
);
create table vattu (
	maVT varchar(10),
    tenVT varchar(100)
);
alter table vattu add primary key(maVT);
create table chitietdonhang(
	maVT varchar(10),
    foreign key(maVT) references vattu(maVT),
    soDH int,
    foreign key(soDH) references dondathang(soDH),
	primary key(maVT, soDH)
);
create table phieunhap(
	soPN varchar(10) primary key,
    ngayNhap date
);
create table phieunhapchitiet(
	soPN varchar(10),
    foreign key(soPN) references phieunhap(soPN),
    maVT varchar(10),
    foreign key(maVT) references vattu(maVT),
    primary key(soPN, maVT),
    dongianhap float,
    soluongnhap int
);
create table phieuxuat(
	soPX varchar(10) primary key,
    ngayXuat date
);
create table phieuxuatchitiet(
	soPX varchar(10),
    foreign key(soPX) references phieuxuat(soPX),
    maVT varchar(10),
    foreign key(maVT) references vattu(maVT),
    primary key(soPX, maVT),
    dongiaxuat float,
    soluongxuat int
);
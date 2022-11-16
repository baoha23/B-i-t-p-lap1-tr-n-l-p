create database QLDA1
go
use QLDA1
go
create table KHACHHANG
(
MAKH char(4) primary key,
HOTEN varchar(40) not null,
DCHI varchar(50) not null,
SODT varchar(20) not null,
NGSINH smalldatetime not null,
NGDK smalldatetime not null,
DOANHSO money not null,
)

create table NHANVIEN
(
MANV char(4) primary key,
HOTEN varchar(40) not null,
SODT varchar(20) not null,
NGVL smalldatetime not null,
)

create table SANPHAM
(
MASP char(4) primary key,
TENSP varchar(40) not null,
DVT varchar(20) not null,
NUOCSX varchar(40) not null,
GIA money not null,
)

create table HOADON
(
SOHD int primary key,
NGHD smalldatetime not null,
MAKH char(4) not null,
MANV char (4) not null,
TRIGIA money not null,
)

create table CTHD
(
SOHD int not null,
MASP char(4) not null,
SL int not null,
)
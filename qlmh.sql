create database QLMH
GO
USE QLMH
GO
create table KHOA
(
MAKHOA varchar(4) primary key,
TENKHOA varchar(40) not null,
NGTLAP smalldatetime not null,
TRGKHOA char(4),
)

create table MONHOC
(
MAMH varchar(4) primary key,
TENMH varchar(40) not null,
TCLT tinyint not null,
TCTH tinyint not null,
MAKHOA varchar(4) not null,
)

create table DIEUKIEN
(
MAMH varchar(10) not null,
MAMH_TRUOC varchar(10) not null,
)

create table GIAOVIEN
(
MAGV char(4) primary key,
HOTEN varchar(40) not null,
HOCVIHOCHAM varchar(10) not null,
GIOITINH varchar(3) not null,
NGSINHNGVL smalldatetime not null,
HESO numeric(4,2) not null,
MUCLUONG money not null,
MAKHOA varchar(4) not null,
)

create table LOP
(
MALOP char(3) primary key,
TENLOP varchar(40) not null,
TRGLOP char(5) not null,
SISO tinyint not null,
MAGVCN char(4) not null,
)

create table HOCVIEN
(
MAHV char(5) primary key,
HO varchar(10) not null,
TEN varchar(10) not null,
NGSINH smalldatetime not null,
GIOITINH varchar(3) not null,
NOISINH varchar(40) not null,
MALOP char(3) not null,
)

create table GIANGDAY
(
MALOP char(3) not null,
MAMH varchar(10) not null,
MAGV char(4) not null,
HOCKY tinyint not null,
NAM smallint not null,
TUNGAYDENNGAY smalldatetime not null,
)

create table KETQUATHI
(
MAHV char(5) not null,
MAMH varchar(10) not null,
LANTHI tinyint not null,
NGTHI smalldatetime not null,
DIEM numeric(4,2) not null,
KQUA varchar(10) not null,
)
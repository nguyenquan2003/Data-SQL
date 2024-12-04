create database QUANLYBANHANG
use QUANLYBANHANG
create table KHACHHANG 
( 
MAKH    char(4)primary key,  
HOTEN   varchar(40), 
DCHI   varchar(50) ,
SODT  varchar(20), 
NGSINH  smalldatetime, 
DOANHSO   money ,
NGDK   smalldatetime, 
)
create table NHANVIEN 
( 
MANV   char(4) primary key,
HOTEN   varchar(40), 
SODT  varchar(20),
NGVL    smalldatetime, 
) 
create table SANPHAM 
( 
MASP  char(4)primary key, 
TENSP  varchar(40), 
DVT    varchar(20), 
NUOCSX  varchar(40),
GIA   money,  
)
create table HOADON
( 
SOHD    int primary key, 
NGHD    smalldatetime, 
MAKH    char(4), 
MANV    char(4),
TRIGIA  money, 
)
alter table HOADON add constraint FK_HOADON_KHACHHANG  foreign key (MAKH) references KHACHHANG(MAKH)
alter table HOADON add constraint FK_HOADON_NHANVIEN  foreign key (MANV) references NHANVIEN(MANV)
create table CTHD 
( 
SOHD  int ,
MASP  char(4) ,
SL  int,
)
alter table CTHD add constraint FK_CTHD_HOADON  foreign key (SOHD) references HOADON(SOHD)
alter table CTHD add constraint FK_CTHD_SANPHAM  foreign key (MASP) references SANPHAM(MASP)

SET DATEFORMAT dmy
/*nhap du lieu nhan vien*/

insert into NHANVIEN values('NV01','Nguyen Nhu Nhut','0927345678','13/4/2006') 
insert into NHANVIEN values('NV02','Le Thi Phi Yen','0987567390','21/4/2006') 
insert into NHANVIEN values('NV03','Nguyen Van B','0997047382','27/4/2006') 
insert into NHANVIEN values('NV04','Ngo Thanh Tuan','0913758498','24/6/2006') 
insert into NHANVIEN values('NV05','Nguyen Thi Truc Thanh','0918590387','20/7/2006') 

select*from NHANVIEN 
 
SET DATEFORMAT mdy
/*NHAP DU LIEU KHACHHANG*/
insert into KHACHHANG values('KH01','Nguyen Van A','731 Tran Hung Dao, Q5, TpHCH',08823451,'10/22/1960',13060000,'7/22/2006')
insert into KHACHHANG values('KH02','Tran Ngoc Han','23/5 Nguyen Trai, Q5, TpHCM',0908256478,'4/3/1974',280000,'7/30/2006')
insert into KHACHHANG values('KH03','Tran Ngoc Linh','45 Nguyen Canh Chan, Q1, TpHCM',0938776266,'6/12/1980',3860000,'8/5/2006')
insert into KHACHHANG values('KH04','Tran Minh Long','50/34 Le Dai Hanh, Q10, TpHCM',0917325476,'3/9/1965',250000,'10/2/2006')
insert into KHACHHANG values('KH05','Le Nhat Minh','34 Truong Dinh, Q3, TpHCM',08246108,'3/10/1950',21000,'10/28/2006')
insert into KHACHHANG values('KH06','Le Hoai Thuong','227 Nguyen Van Cu, Q5, TpHCM',08631738,'12/31/1981',915000,'11/24/2006')
insert into KHACHHANG values('KH07','Nguyen Van Tam','32/3 Tran Binh Trong, Q5, TpHCM',0916783565,'4/6/1971',12500,'12/1/2006')
insert into KHACHHANG values('KH08','Phan Thi Thanh','45/2 An Duong Vuong, Q5, TpHCM',0938435756,'1/10/1971',365000,'12/13/2006')
insert into KHACHHANG values('KH09','Le Ha Vinh','873 Le Hong Phong, Q5, TpHCM',08654763,'9/3/1979',70000,'1/14/2007')
insert into KHACHHANG values('KH10','Ha Duy Lap','34/34B Nguyen Trai, Q1, TpHCM',08768904,'5/2/1983',67500,'1/16/2007')
select*from KHACHHANG
/*NHAP DU LIEU SANPHAM*/
insert into SANPHAM values('BC01','But chi','cay','Singapore',3000) 
insert into SANPHAM values('BC02','But chi','cay',' Singapore',5000) 
insert into SANPHAM values('BC03','But chi','cay',' Viet Nam',3500)
insert into SANPHAM values('BC04','But chi','hop','Viet Nam',30000) 
insert into SANPHAM values('BB01','But bi','cay','Viet Nam',5000) 
insert into SANPHAM values('BB02','But bi','cay','Trung Quoc',7000) 
insert into SANPHAM values('BB03','But bi','hop','Thai Lan',100000) 
insert into SANPHAM values('TV01','Tap 100 giay mong','quyen','Trung Quoc',2500) 
insert into SANPHAM values('TV02','Tap 200 giay mong','quyen','Trung Quoc',4500) 
insert into SANPHAM values('TV03','Tap 100 giay tot','quyen','Viet Nam',3000) 
insert into SANPHAM values('TV04','Tap 200 giay tot','quyen','Viet Nam',5500) 
insert into SANPHAM values('TV05','Tap 100 trang','chuc','Viet Nam',23000) 
insert into SANPHAM values('TV06','Tap 200 trang','chuc','Viet Nam',53000) 
insert into SANPHAM values('TV07','Tap 100 trang','chuc','Trung Quoc',34000) 
insert into SANPHAM values('ST01','So tay 500 trang','quyen','Trung Quoc',40000) 
insert into SANPHAM values('ST02','So tay loai 1','quyen','Viet Nam',55000) 
insert into SANPHAM values('ST03','So tay loai 2','quyen','Viet Nam',51000) 
insert into SANPHAM values('ST04','So tay','quyen','Thai Lan',55000) 
insert into SANPHAM values('ST05','So tay mong','quyen','Thai Lan',20000) 
insert into SANPHAM values('ST06','Phan viet bang','hop','Viet Nam',5000) 
insert into SANPHAM values('ST07','Phan khong bui','hop','Viet Nam',7000) 
insert into SANPHAM values('ST08','Bong bang','cai','Viet Nam',1000) 
insert into SANPHAM values('ST09','But long','cay','Viet Nam',5000) 
insert into SANPHAM values('ST10','But long','cay','Trung Quoc',7000) 
update SANPHAM
set nuocsx='Viet Nam'
where masp='BC03'
update sanpham
set gia=5000
where masp='BC02'
update SANPHAM
set nuocsx='Singapore'
where masp='BC02'
select * from SANPHAM

/*nhap du lieu SO HOA DON */
INSERT INTO HOADON VALUES ('1001','20060723','KH01','NV01',320000)
INSERT INTO HOADON VALUES ('1002','20060812','KH01','NV02',840000)
INSERT INTO HOADON VALUES ('1003','20060823','KH02','NV01',100000)
INSERT INTO HOADON VALUES ('1004','20060901','KH02','NV01',180000)
INSERT INTO HOADON VALUES ('1005','20061020','KH01','NV02',3800000)
INSERT INTO HOADON VALUES ('1006','20061016','KH01','NV03',2430000)
INSERT INTO HOADON VALUES ('1007','20061028','KH03','NV03',510000)
INSERT INTO HOADON VALUES ('1008','20061028','KH01','NV03',440000)
INSERT INTO HOADON VALUES ('1009','20061028','KH03','NV04',200000)
INSERT INTO HOADON VALUES ('1010','20061101','KH01','NV01',5200000)
INSERT INTO HOADON VALUES ('1011','20061104','KH04','NV03',250000)
INSERT INTO HOADON VALUES ('1012','20061130','KH05','NV03',21000)
INSERT INTO HOADON VALUES ('1013','20061212','KH06','NV01',5000)
INSERT INTO HOADON VALUES ('1014','20061231','KH03','NV02',3150000)
INSERT INTO HOADON VALUES ('1015','20070101','KH06','NV01',910000)
INSERT INTO HOADON VALUES ('1016','20070101','KH07','NV02',12500)
INSERT INTO HOADON VALUES ('1017','20070102','KH08','NV03',35000)
INSERT INTO HOADON VALUES ('1018','20070113','KH08','NV03',330000)
INSERT INTO HOADON VALUES ('1019','20070113','KH01','NV03',30000)
INSERT INTO HOADON VALUES ('1020','20070114','KH09','NV04',70000)
INSERT INTO HOADON VALUES ('1021','20070116','KH10','NV03',67500)
INSERT INTO HOADON VALUES ('1022','20070116','KH03','NV03',7000)
INSERT INTO HOADON VALUES ('1023','20070117','KH04','NV01',330000)
select*from HOADON

/*nhap du lieu CHI TIET HOA DON */
 
insert into CTHD values(1001,'TV02',10) 
insert into CTHD values(1001,'ST01',5)
insert into CTHD values(1001,'BC01',5) 
insert into CTHD values(1001,'BC02',10) 
insert into CTHD values(1001,'ST08',10) 
insert into CTHD values(1002,'BC04',20) 
insert into CTHD values(1002,'BB01',20) 
insert into CTHD values(1002,'BB02',20) 
insert into CTHD values(1003,'BB03',10) 
insert into CTHD values(1004,'TV01',20) 
insert into CTHD values(1004,'TV02',10) 
insert into CTHD values(1004,'TV03',10) 
insert into CTHD values(1004,'TV04',10) 
insert into CTHD values(1005,'TV05',50) 
insert into CTHD values(1005,'TV06',50) 
insert into CTHD values(1006,'TV07',20)  
insert into CTHD values(1006,'ST01',30) 
insert into CTHD values(1006,'ST02',10) 
insert into CTHD values(1007,'ST03',10) 
insert into CTHD values(1008,'ST04',8) 
insert into CTHD values(1009,'ST05',10)
insert into CTHD values(1010,'ST07',50)
insert into CTHD values(1010,'ST08',100)
insert into CTHD values(1010,'TV03',100) 
insert into CTHD values(1011,'ST06',50) 
insert into CTHD values(1012,'ST07',3) 
insert into CTHD values(1013,'ST08',5) 
insert into CTHD values(1014,'BB02',100) 
insert into CTHD values(1014,'BC04',60) 
insert into CTHD values(1014,'BB01',50) 
insert into CTHD values(1015,'BB02',30) 
insert into CTHD values(1015,'BB03',7) 
insert into CTHD values(1016,'TV01',5)
insert into CTHD values(1017,'TV02',1) 
insert into CTHD values(1017,'TV03',1) 
insert into CTHD values(1017,'TV04',5) 
insert into CTHD values(1018,'ST04',6) 
insert into CTHD values(1019,'ST05',1) 
insert into CTHD values(1019,'ST06',2) 
insert into CTHD values(1020,'ST07',10) 
insert into CTHD values(1021,'ST08',5) 
insert into CTHD values(1021,'TV01',7) 
insert into CTHD values(1021,'TV02',10) 
insert into CTHD values(1022,'ST07',1) 
insert into CTHD values(1023,'ST04',6) 


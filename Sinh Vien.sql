CREATE TABLE GiangVien( 
    MaGiangVien VARCHAR(10) PRIMARY KEY, 
    HoTenGiangVien VARCHAR(50), 
    TrinhDo VARCHAR(20), 
    ChuyenMon VARCHAR(50) 
); 

CREATE TABLE DonVi( 
    MaDonVi VARCHAR(10) PRIMARY KEY, 
    TenDonVi VARCHAR(50) 
); 
CREATE TABLE SinhVien( 
    MaSinhVien VARCHAR(10) PRIMARY KEY, 
    HoTenSinhVien VARCHAR(50), 
    NgaySinh DATE, 
    GioiTinh VARCHAR(10), 
    LopNienChe VARCHAR(10) 
); 
CREATE TABLE MonHoc( 
    MaMonHoc VARCHAR(10) PRIMARY KEY, 
    TenMonHoc VARCHAR(50), 
    TongSoTiet INT, 
    SoTietLyThuyet INT, 
    SoTietThucHanh INT, 
	MaGiangVien VARCHAR(10),
    FOREIGN KEY (MaGiangVien) REFERENCES GiangVien(MaGiangVien)
); 
CREATE TABLE LopMonHoc( 
    MaLopMonHoc VARCHAR(10) PRIMARY KEY, 
    TenLopMonHoc VARCHAR(50), 
    SoSinhVienToiDa INT, 
    MaMonHoc VARCHAR(10), 
    FOREIGN KEY (MaMonHoc) REFERENCES MonHoc(MaMonHoc) 
); 
CREATE TABLE PhongHoc( 
    MaPhongHoc VARCHAR(10) PRIMARY KEY, 
    TenPhongHoc VARCHAR(50), 
    DiaChi VARCHAR(100) 
); 
CREATE TABLE CaHoc( 
    MaCaHoc VARCHAR(10) PRIMARY KEY, 
    GioBD TIME, 
    GioKT TIME, 
    BuoiHoc VARCHAR(20), 
    NgayHoc DATE 
); 
CREATE TABLE DiemDanh( 
    MaDiemDanh VARCHAR(10) PRIMARY KEY, 
    MaSinhVien VARCHAR(10), 
    MaLopMonHoc VARCHAR(10), 
    MaCaHoc VARCHAR(10), 
    TrangThai VARCHAR(20), 
    FOREIGN KEY (MaSinhVien) REFERENCES SinhVien(MaSinhVien), 
    FOREIGN KEY (MaLopMonHoc) REFERENCES LopMonHoc(MaLopMonHoc), 
    FOREIGN KEY (MaCaHoc) REFERENCES CaHoc(MaCaHoc) 
); 
CREATE TABLE GiangDay( 
    MaGiangDay VARCHAR(10) PRIMARY KEY, 
    MaGiangVien VARCHAR(10), 
    MaLopMonHoc VARCHAR(10), 
    FOREIGN KEY (MaGiangVien) REFERENCES GiangVien(MaGiangVien), 
    FOREIGN KEY (MaLopMonHoc) REFERENCES LopMonHoc(MaLopMonHoc) 
); 
CREATE TABLE LichHoc( 
    MaLichHoc VARCHAR(10) PRIMARY KEY, 
    MaLopMonHoc VARCHAR(10), 
    MaPhongHoc VARCHAR(10), 
    MaCaHoc VARCHAR(10), 
    FOREIGN KEY (MaLopMonHoc) REFERENCES LopMonHoc(MaLopMonHoc), 
    FOREIGN KEY (MaPhongHoc) REFERENCES PhongHoc(MaPhongHoc), 
    FOREIGN KEY (MaCaHoc) REFERENCES CaHoc(MaCaHoc) 
); 

INSERT INTO GiangVien (MaGiangVien, HoTenGiangVien, TrinhDo, ChuyenMon) 
VALUES
('GV001', 'Tran Van Tuan', 'Tien si', 'Cong nghe thong tin'),
('GV002', 'Nguyen Thi Thu', 'Thac si', 'Ke toan'),
('GV003', 'Le Van Nghia', 'Tien si', 'Kinh te'),
('GV004', 'Pham Van Hung', 'Thac si', 'Ngoai ngu'),
('GV005', 'Hoang Thi Huyen', 'Tien si', 'Vat ly');

INSERT INTO SinhVien (MaSinhVien, HoTenSinhVien, NgaySinh, GioiTinh, LopNienChe) 
VALUES
('SV001', 'Tran Van An', '2000-01-15', 'Nam', 'K18DH1'),
('SV002', 'Nguyen Thi Binh', '2000-05-20', 'Nu', 'K18DH2'),
('SV003', 'Le Van Cuong', '1999-12-10', 'Nam', 'K18CN1'),
('SV004', 'Pham Thi Dung', '2000-03-25', 'Nu', 'K18CN2'),
('SV005', 'Hoang Van Hieu', '1999-08-05', 'Nam', 'K18QT1'),
('SV006', 'Nguyen Van Khanh', '2000-02-18', 'Nam', 'K18QT2'),
('SV007', 'Tran Thi Lan', '2000-07-30', 'Nu', 'K18DT1'),
('SV008', 'Le Van Minh', '1999-10-22', 'Nam', 'K18DT2'),
('SV009', 'Pham Thi Ngoc', '2000-04-12', 'Nu', 'K18KT1'),
('SV010', 'Nguyen Van Phong', '1999-09-08', 'Nam', 'K18KT2'),
('SV011', 'Tran Van Quyen', '2000-06-14', 'Nam', 'K18QT3'),
('SV012', 'Le Thi Tuyet', '1999-11-28', 'Nu', 'K18DT3'),
('SV013', 'Pham Van Vinh', '2000-08-19', 'Nam', 'K18CN3'),
('SV014', 'Nguyen Thi Xuan', '2000-01-03', 'Nu', 'K18QT4'),
('SV015', 'Hoang Van Yen', '1999-07-17', 'Nam', 'K18KT3');

CREATE TABLE account( 
    UserName VARCHAR(50) PRIMARY KEY, 
    DisplayName VARCHAR(50), 
    Password VARCHAR(50), 
    TypelD INT 

);

-- Thêm giảng viên vào bảng account
INSERT INTO account(UserName, DisplayName, Password, TypeID)
VALUES 
('GV001', 'Tran Van Tuan', '1234', 1),
('GV002', 'Nguyen Thi Thu', '1234', 1),
('GV003', 'Le Van Nghia', '1234', 1),
('GV004', 'Pham Van Hung', '1234', 1),
('GV005', 'Hoang Thi Huyen', '1234', 1);

select * from account;
-- Thêm sinh viên vào bảng account
INSERT INTO account(UserName, DisplayName, Password, TypeID)
VALUES 
('SV001', 'Tran Van An', '1234', 2),
('SV002', 'Nguyen Thi Binh', '1234', 2),
('SV003', 'Le Van Cuong', '1234', 2),
('SV004', 'Pham Thi Dung', '1234', 2),
('SV005', 'Hoang Van Hieu', '1234', 2),
('SV006', 'Nguyen Van Khanh', '1234', 2),
('SV007', 'Tran Thi Lan', '1234', 2),
('SV008', 'Le Van Minh', '1234', 2),
('SV009', 'Pham Thi Ngoc', '1234', 2),
('SV010', 'Nguyen Van Phong', '1234', 2),
('SV011', 'Tran Van Quyen', '1234', 2),
('SV012', 'Le Thi Tuyet', '1234', 2),
('SV013', 'Pham Van Vinh', '1234', 2),
('SV014', 'Nguyen Thi Xuan', '1234', 2),
('SV015', 'Hoang Van Yen', '1234', 2);

INSERT INTO MonHoc(MaMonHoc, TenMonHoc, TongSoTiet, SoTietLyThuyet, SoTietThucHanh, MaGiangVien) 
VALUES ('MH01', 'Lap trinh huong doi tuong', 90, 60, 30, 'GV001'), 
       ('MH02', 'Phat trien ung dung Web', 90, 60, 30, 'GV002'), 
       ('MH03', 'Kien truc may tinh', 90, 60, 30, 'GV003'), 
       ('MH04', 'Do hoa may tinh', 90, 60, 30, 'GV004'), 
       ('MH05', 'Nhap mon lap trinh', 90, 60, 30, 'GV005'), 
       ('MH06', 'Xu ly tin hieu so', 90, 60, 30, 'GV001'), 
       ('MH07', 'He quan tri CSDL', 90, 60, 30, 'GV002'), 
       ('MH08', 'Quan tri du an phan mem', 90, 60, 30, 'GV003'), 
       ('MH09', 'He thong may tinh', 90, 60, 30, 'GV004'), 
       ('MH10', 'CSDL', 90, 60, 30,'GV005');

INSERT INTO LopMonHoc(MaLopMonHoc, TenLopMonHoc, SoSinhVienToiDa, MaMonHoc) 

VALUES ('LMH01', 'Lap trinh huong doi tuong', 15, 'MH01'), 
       ('LMH02', 'Phat trien ung dung Web', 20, 'MH02'), 
       ('LMH03', 'Kien truc may tinh', 20, 'MH03'), 
       ('LMH04', 'Do hoa may tinh', 17, 'MH04'), 
       ('LMH05', 'Nhap mon lap trinh', 16, 'MH05'), 
       ('LMH06', 'Xu ly tin hieu so', 15, 'MH06'), 
       ('LMH07', 'He quan tri CSDL', 15, 'MH07'), 
       ('LMH08', 'Quan tri du an phan mem', 17, 'MH08'), 
       ('LMH09', 'He thong may tinh', 15, 'MH09'), 
       ('LMH10', 'CSDL', 18, 'MH10');

SELECT MonHoc.TenMonHoc, LopMonHoc.MaLopMonHoc
FROM MonHoc
INNER JOIN LopMonHoc ON MonHoc.MaMonHoc = LopMonHoc.MaMonHoc;

SELECT MaLopMonHoc 
FROM LopMonHoc 
WHERE MaMonHoc IN 
(SELECT MaMonHoc 
FROM MonHoc WHERE MaGiangVien = 'GV001')
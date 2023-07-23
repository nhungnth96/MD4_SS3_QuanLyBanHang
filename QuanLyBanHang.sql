create database QuanLyBanHang;
use QuanLyBanHang;
-- ========== KHACH HANG ==========
CREATE TABLE KhachHang (
    MaKH VARCHAR(4) PRIMARY KEY,
    TenKH VARCHAR(30) NOT NULL,
    Diachi VARCHAR(50),
    NgaySinh DATETIME,
    SoDT VARCHAR(15) UNIQUE
);
insert into KhachHang values 
("KH01","Khach Hang 01","Hanoi","19960427","111111111"),
("KH02","Khach Hang 02","Hanoi","19960427","222222222"),
("KH03","Khach Hang 03","Hanoi","19960427","333333333"),
("KH04","Khach Hang 04","Hanoi","19960427","444444444"),
("KH05","Khach Hang 05","Hanoi","19960427","555555555"),
("KH06","Khach Hang 06","Hanoi","19960427","666666666"),
("KH07","Khach Hang 07","Hanoi","19960427","777777777"),
("KH08","Khach Hang 08","Hanoi","19960427","888888888"),
("KH09","Khach Hang 09","Hanoi","19960427","999999999"),
("KH10","Khach Hang 10","Hanoi","19960427","000000000");
-- ========== NHAN VIEN ==========
CREATE TABLE NhanVien (
    MaNV VARCHAR(4) PRIMARY KEY,
    HoTen VARCHAR(30) NOT NULL,
    GioiTinh BIT NOT NULL,
    DiaChi VARCHAR(50) NOT NULL,
    NgaySinh DATETIME NOT NULL,
    DienThoai VARCHAR(15),
    Email TEXT,
    NoiSinh VARCHAR(20) NOT NULL,
    NgayVaoLam DATETIME,
    MaNQL VARCHAR(4)
);
insert into NhanVien (MaNV,HoTen,GioiTinh,DiaChi,NgaySinh,DienThoai,Email,NoiSinh,NgayVaoLam) values
("NV01","Nhan Vien 01",0,"Ha Noi","19960427","0123456789","nhanvien01@gmail.com","Ha Noi","20210927"),
("NV02","Nhan Vien 02",1,"Ha Noi","19960427","0123456789","nhanvien02@gmail.com","Hai Phong","20210927"),
("NV03","Nhan Vien 03",0,"Ha Noi","19960427","0123456789","nhanvien03@gmail.com","Da Nang","20130524"),
("NV04","Nhan Vien 04",1,"Ha Noi","19960427","0123456789","nhanvien40@gmail.com","Ho Chi Minh","20150724"),
("NV05","Nhan Vien 05",1,"Ha Noi","19960427","0123456789","nhanvien05@gmail.com","Hue","20180612"),
("NV06","Nhan Vien 06",0,"Ha Noi","19960427","0123456789","nhanvien06@gmail.com","Nghe An","20180714"),
("NV07","Nhan Vien 07",0,"Ha Noi","19960427","0123456789","nhanvien07@gmail.com","Thanh Hoa","20190423"),
("NV08","Nhan Vien 08",1,"Ha Noi","19960427","0123456789","nhanvien08@gmail.com","Nam Dinh","20190905"),
("NV09","Nhan Vien 09",0,"Ha Noi","19960427","0123456789","nhanvien09@gmail.com","Hai Duong","20220826"),
("NV10","Nhan Vien 10",1,"Ha Noi","19960427","0123456789","nhanvien10@gmail.com","Ca Mau","20230721");
-- ========== NHA CUNG CAP ==========
CREATE TABLE NhaCungCap (
    MaNCC VARCHAR(5) PRIMARY KEY,
    TenNCC VARCHAR(50) NOT NULL,
    Diachi VARCHAR(50) NOT NULL,
    Dienthoai VARCHAR(15) NOT NULL,
    Email VARCHAR(30) NOT NULL,
    Website VARCHAR(30)
);
insert into NhaCungCap (MaNCC,TenNCC,Diachi,Dienthoai,Email) values
("NCC01","Nha Cung Cap 01","Hanoi","0123456789","nhacungcap01@gmail.com"),
("NCC02","Nha Cung Cap 02","Hanoi","0123456789","nhacungcap02@gmail.com"),
("NCC03","Nha Cung Cap 03","Hanoi","0123456789","nhacungcap03@gmail.com"),
("NCC04","Nha Cung Cap 04","Hanoi","0123456789","nhacungcap04@gmail.com"),
("NCC05","Nha Cung Cap 05","Hanoi","0123456789","nhacungcap05@gmail.com"),
("NCC06","Nha Cung Cap 06","Hanoi","0123456789","nhacungcap06@gmail.com"),
("NCC07","Nha Cung Cap 07","Hanoi","0123456789","nhacungcap07@gmail.com"),
("NCC08","Nha Cung Cap 08","Hanoi","0123456789","nhacungcap08@gmail.com"),
("NCC09","Nha Cung Cap 09","Hanoi","0123456789","nhacungcap09@gmail.com"),
("NCC10","Nha Cung Cap 10","Hanoi","0123456789","nhacungcap10@gmail.com");
-- ========== CATALOG ==========
CREATE TABLE LoaiSP (
    MaloaiSP VARCHAR(5) PRIMARY KEY,
    TenloaiSP VARCHAR(30) NOT NULL,
    Ghichu VARCHAR(100) NOT NULL
);

insert into LoaiSP values 
("LSP01","Quan Ao","Ghi chu 01"),
("LSP02","Hoa Pham","Ghi chu 02"),
("LSP03","Nuoc Giai Khat","Ghi chu 03"),
("LSP04","Gia vi","Ghi chu 04"),
("LSP05","Do an lien","Ghi chu 05");
-- ========== PRODUCT ==========
CREATE TABLE SanPham (
    MaSP VARCHAR(4) PRIMARY KEY,
    MaloaiSP VARCHAR(5) NOT NULL,
    TenSP VARCHAR(50) NOT NULL,
    Donvitinh VARCHAR(100) NOT NULL,
    Ghichu VARCHAR(100)
);
ALTER TABLE SanPham add foreign key (MaloaiSP) references LoaiSP(MaloaiSP);
insert into SanPham values 
("SP01","LSP01","Ao Phong","Cai","Ghi chu"),
("SP02","LSP01","Ao So Mi","Cai","Ghi chu"),
("SP03","LSP01","Quan Jeans","Cai","Ghi chu"),
("SP04","LSP01","Quan Kaki","Cai","Ghi chu"),
("SP05","LSP02","Comfort","Chai","Ghi chu"),
("SP06","LSP02","Omo","Tui","Ghi chu"),
("SP07","LSP02","Sunlight","Chai","Ghi chu"),
("SP08","LSP02","Downy","Chai","Ghi chu"),
("SP09","LSP02","Tide","Tui","Ghi chu"),
("SP10","LSP03","Bia","Lon","Ghi chu"),
("SP11","LSP03","Coca","Chai","Ghi chu"),
("SP12","LSP03","Coconut","Chai","Ghi chu"),
("SP13","LSP03","Nutri Boost","Chai","Ghi chu"),
("SP14","LSP03","Sting","Chai","Ghi chu"),
("SP15","LSP03","Coffee","Lon","Ghi chu"),
("SP16","LSP04","Hat nem","Tui","Ghi chu"),
("SP17","LSP04","Mi Chinh","Tui","Ghi chu"),
("SP18","LSP04","Muoi Iot","Tui","Ghi chu"),
("SP19","LSP04","Dau An","Chai","Ghi chu"),
("SP20","LSP04","Nuoc Mam","Chai","Ghi chu"),
("SP21","LSP04","Bot Mi","Tui","Ghi chu"),
("SP22","LSP04","Mi Hao Hao","Goi","Ghi chu"),
("SP23","LSP05","Mien Phu Huong","Goi","Ghi chu"),
("SP24","LSP05","Mi Omachi","Goi","Ghi chu"),
("SP25","LSP05","Pho Ga","Goi","Ghi chu"),
("SP26","LSP05","Pho Bo","Goi","Ghi chu"),
("SP27","LSP05","Bun Bo Hue","Goi","Ghi chu"),
("SP28","LSP05","Bun Rieu Cua","Goi","Ghi chu"),
("SP29","LSP05","Mi Indomie","Goi","Ghi chu"),
("SP30","LSP05","Chao Thit","Goi","Ghi chu");
-- ========== PHIEU NHAP ==========
CREATE TABLE PhieuNhap (
	SoPN VARCHAR(5) PRIMARY KEY,
	MaNV VARCHAR(4) NOT NULL,
	MaNCC VARCHAR(5) NOT NULL,
	Ngaynhap DATETIME DEFAULT(now()) NOT NULL,
	Ghichu VARCHAR(100)
);
ALTER TABLE PhieuNhap add foreign key (MaNV) references NhanVien(MaNV);
ALTER TABLE PhieuNhap add foreign key (MaNCC) references NhaCungCap(MaNCC);
insert into PhieuNhap (SoPN,MaNV,MaNCC) values 
("PN01","NV01","NCC01"),
("PN02","NV01","NCC01"),
("PN03","NV02","NCC01"),
("PN04","NV02","NCC02"),
("PN05","NV02","NCC02"),
("PN06","NV03","NCC02"),
("PN07","NV03","NCC02"),
("PN08","NV03","NCC03"),
("PN09","NV04","NCC03"),
("PN10","NV04","NCC03"),
("PN11","NV04","NCC03"),
("PN12","NV04","NCC03");
-- ========== CHI TIET PHIEU NHAP ==========
CREATE TABLE CTPhieuNhap (
    MaSP VARCHAR(4) NOT NULL,
    SoPN VARCHAR(5) NOT NULL,
    Soluong TINYINT DEFAULT 0 NOT NULL,
    Gianhap DOUBLE CHECK (Gianhap >= 0) NOT NULL
);
ALTER TABLE CTPhieuNhap add primary key (MaSP,SoPN);
ALTER TABLE CTPhieuNhap add foreign key (MaSP) references SanPham(MaSP);
ALTER TABLE CTPhieuNhap add foreign key (SoPN) references PhieuNhap(SoPN);
insert into CTPhieuNhap values
("SP01","PN01",10,150000),
("SP03","PN02",10,200000),
("SP05","PN03",20,89000),
("SP07","PN04",20,22000),
("SP09","PN05",20,68000),
("SP11","PN06",30,4500),
("SP13","PN07",30,10000),
("SP15","PN08",30,8000),
("SP17","PN09",40,25000),
("SP19","PN10",40,28000),
("SP21","PN11",40,10000),
("SP23","PN12",50,11000);
-- ========== PHIEU XUAT ==========
CREATE TABLE PhieuXuat (
    SoPX VARCHAR(5) PRIMARY KEY,
    MaNV VARCHAR(4) NOT NULL,
    MaKH VARCHAR(4) NOT NULL,
    NgayBan DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    GhiChu TEXT
);
ALTER TABLE PhieuXuat add foreign key (MaNV) references NhanVien(MaNV);
ALTER TABLE PhieuXuat add foreign key (MaKH) references KhachHang(MaKH);
insert into PhieuXuat (SoPX,MaNV,MaKH) values
("PX01","NV05","KH01"),
("PX02","NV05","KH01"),
("PX03","NV06","KH02"),
("PX04","NV06","KH02"),
("PX05","NV06","KH02"),
("PX06","NV07","KH03"),
("PX07","NV07","KH03"),
("PX08","NV07","KH03"),
("PX09","NV08","KH04"),
("PX10","NV08","KH04"),
("PX11","NV08","KH04"),
("PX12","NV08","KH04");
-- ========== CHI TIET PHIEU XUAT ==========
CREATE TABLE CTPhieuXuat (
    SoPX VARCHAR(5) NOT NULL,
    MaSP VARCHAR(4) NOT NULL,
    SoLuong TINYINT NOT NULL,
    GiaBan DOUBLE NOT NULL
);
ALTER TABLE CTPhieuXuat add primary key (MaSP,SoPX);
ALTER TABLE CTPhieuXuat add foreign key (MaSP) references SanPham(MaSP);
ALTER TABLE CTPhieuXuat add foreign key (SoPX) references PhieuXuat(SoPX);
insert into CTPhieuXuat (MaSP,SoPX,SoLuong,GiaBan) values
("SP01","PX01",1,200000),
("SP03","PX02",1,250000),
("SP05","PX03",2,96000),
("SP07","PX04",2,25000),
("SP09","PX05",3,73000),
("SP11","PX06",3,5800),
("SP13","PX07",4,11000),
("SP15","PX08",4,10000),
("SP17","PX09",4,29000),
("SP19","PX10",5,32000),
("SP21","PX11",5,12000),
("SP23","PX12",5,13000);
-- 1. ALTER khóa ngoại

-- 2. INSERT
-- Thêm 2 Phiếu nhập trong tháng hiện hành. Mỗi phiếu nhập có 2 sản phẩm.

-- Thêm 2 Phiếu xuất trong ngày hiện hành. Mỗi phiếu xuất có 3 sản phẩm.

-- Thêm 1 nhân viên mới 
insert into NhanVien (MaNV,HoTen,GioiTinh,DiaChi,NgaySinh,DienThoai,Email,NoiSinh,NgayVaoLam) values
("NV11","Nhan Vien 11",1,"Ha Noi","19960427","111111110","nhanvien11@gmail.com","Ha Noi","20230721");
-- 3. UPDATE 
-- Cập nhật lại số điện thoại mới cho khách hàng mã KH10.
update KhachHang set SoDT = "101010101" where MaKH = "KH10";
-- Cập nhật lại địa chỉ mới của nhân viên mã NV05.
update NhanVien set DiaChi = "HCM" where MaNV = "NV05";
-- 4. DELETE
-- Xóa nhân viên mới vừa thêm ở 2.3
delete from NhanVien where MaNV = "NV11";
-- Xóa sản phẩm mã SP15
delete from SanPham where MaSP = "SP15"; -- vướng khóa ngoại chưa xóa được
-- 5. select
-- 1. Liệt kê thông tin về nhân viên trong cửa hàng,
-- gồm: mã nhân viên, họ tên nhân viên, giới tính, ngày sinh, địa chỉ, số điện thoại, tuổi. 
-- Kết quả sắp xếp theo tuổi.
SELECT 
    nv.MaNV `Ma_Nhan_Vien`,
    nv.HoTen `Ho_Ten`,
    nv.GioiTinh `Gioi_Tinh`,
    nv.NgaySinh `Ngay_Sinh`,
    nv.DiaChi `Dia_Chi`,
    nv.DienThoai `SDT`,
    TIMESTAMPDIFF(YEAR,
        nv.NgaySinh,
        CURDATE()) AS Age
FROM
    NhanVien nv
ORDER BY age;
-- 2. Liệt kê các hóa đơn nhập hàng trong tháng 6/2018, 
-- gồm thông tin số phiếu nhập, mã nhân viên nhập hàng, họ tên nhân viên, họ tên nhà cung cấp, ngày nhập hàng, ghi chú.
SELECT 
    pn.SoPN `so_PN`,
    nv.MaNV `ma_NV`,
    nv.HoTen `ten_NV`,
    ncc.TenNCC `ten_NCC`,
    pn.Ngaynhap `Ngay_Nhap`,
    pn.Ghichu `Ghi_Chu`
FROM
    PhieuNhap pn
        JOIN
    NhanVien nv ON pn.MaNV = nv.MaNV
        JOIN
    NhaCungCap ncc ON pn.MaNCC = ncc.MaNCC
WHERE
    MONTH(pn.NgayNhap) = 06;
-- 3. Liệt kê tất cả sản phẩm có đơn vị tính là chai, gồm tất cả thông tin về sản phẩm.
SELECT 
    *
FROM
    SanPham sp
WHERE
    sp.Donvitinh = 'Chai';
-- 4. Liệt kê chi tiết nhập hàng trong tháng hiện hành, 
-- gồm thông tin: số phiếu nhập, mã sản phẩm, tên sản phẩm, loại sản phẩm, đơn vị tính, số lượng, giá nhập, thành tiền.
SELECT 
    pn.SoPN `so_PN`,
    sp.MaSP `Ma_SP`,
    sp.TenSP `Ten_SP`,
    lsp.TenloaiSP `Loai_SP`,
    sp.Donvitinh `Don_Vi`,
    ctpn.Soluong `So_Luong`,
    ctpn.Gianhap `Gia_Nhap`,
    (ctpn.Soluong * ctpn.Gianhap) `Thanh_Tien`
FROM
    PhieuNhap pn
        JOIN
    CTPhieuNhap ctpn ON pn.SoPN = ctpn.SoPN
        JOIN
    SanPham sp ON sp.MaSP = ctpn.MaSP
        JOIN
    LoaiSP lsp ON sp.MaloaiSP = lsp.MaloaiSP
WHERE
    MONTH(pn.NgayNhap) = MONTH(NOW());
-- 5. Liệt kê các nhà cung cấp có giao dịch mua bán trong tháng hiện hành, 
-- gồm thông tin: mã nhà cung cấp, họ tên nhà cung cấp, địa chỉ, số điện thoại, email, số phiếu nhập, ngày nhập. 
-- Sắp xếp thứ tự theo ngày nhập hàng.
SELECT 
    ncc.MaNCC `Ma_NCC`,
    ncc.TenNCC `Ten_NCC`,
    ncc.Diachi `Dia_Chi`,
    ncc.DienThoai `Dien_Thoai`,
    ncc.Email `Email`,
    pn.SoPN `So_PN`,
    pn.NgayNhap `Ngay_Nhap`
FROM
    NhaCungCap ncc
        JOIN
    PhieuNhap pn ON pn.MaNCC = ncc.MaNCC
WHERE
    MONTH(pn.NgayNhap) = MONTH(NOW())
ORDER BY DAY(pn.NgayNhap);
-- 6. Liệt kê chi tiết hóa đơn bán hàng trong 6 tháng đầu năm 2023,
-- gồm thông tin: số phiếu xuất, nhân viên bán hàng, ngày bán, mã sản phẩm, tên sản phẩm, đơn vị tính, số lượng, giá bán, doanh thu.
SELECT 
    px.SoPX `So_PX`,
    nv.HoTen `Ten_NV`,
    px.NgayBan `Ngay_Ban`,
    sp.MaSP `Ma_SP`,
    sp.TenSP `Ten_SP`,
    sp.Donvitinh `Don_vi`,
    ctpx.Soluong `So_luong`,
    ctpx.Giaban `Gia_Ban`,
    (ctpx.SoLuong * ctpx.GiaBan) `Doanh_Thu`
FROM
    PhieuXuat px
        JOIN
    NhanVien nv ON px.MaNV = nv.MaNV
        JOIN
    CTPhieuXuat ctpx ON px.SoPX = ctpx.SoPX
        JOIN
    SanPham sp ON ctpx.MaSP = sp.MaSP
WHERE
    MONTH(px.NgayBan) <= 06
        AND YEAR(px.NgayBan) = 2023
ORDER BY px.NgayBan;
-- 7. Hãy in danh sách khách hàng có ngày sinh nhật trong tháng hiện hành 
-- (gồm tất cả thông tin của khách hàng)
SELECT 
    *
FROM
    KhachHang
WHERE
    MONTH(KhachHang.NgaySinh) = MONTH(NOW());
-- 8. Liệt kê các hóa đơn bán hàng từ ngày 15/04/2018 đến 15/05/2018 
-- gồm các thông tin: số phiếu xuất, nhân viên bán hàng, ngày bán, mã sản phẩm, tên sản phẩm, đơn vị tính, số lượng, giá bán, doanh thu.
SELECT 
    px.SoPX `So_PX`,
    nv.HoTen `Ten_NV`,
    px.NgayBan `Ngay_Ban`,
    sp.MaSP `Ma_SP`,
    sp.TenSP `Ten_SP`,
    sp.Donvitinh `Don_vi`,
    ctpx.Soluong `So_luong`,
    ctpx.Giaban `Gia_Ban`,
    (ctpx.SoLuong * ctpx.GiaBan) `Doanh_Thu`
FROM
    PhieuXuat px
        JOIN
    NhanVien nv ON px.MaNV = nv.MaNV
        JOIN
    CTPhieuXuat ctpx ON px.SoPX = ctpx.SoPX
        JOIN
    SanPham sp ON ctpx.MaSP = sp.MaSP
WHERE
    px.NgayBan BETWEEN '20230415' AND '20230515'
ORDER BY px.NgayBan;
-- 9. Liệt kê các hóa đơn mua hàng theo từng khách hàng, 
-- gồm các thông tin: số phiếu xuất, ngày bán, mã khách hàng, tên khách hàng, trị giá.
SELECT 
    px.SoPX `So_PX`,
    px.NgayBan `Ngay_Ban`,
    px.MaKH ` Ma_KH`,
    kh.TenKH `Ten_KH`,
    SUM(ctpx.SoLuong * ctpx.GiaBan) `Tri_Gia`
FROM
    PhieuXuat px
        JOIN
    KhachHang kh ON px.MaKH = kh.MaKH
        JOIN
    CTPhieuXuat ctpx ON px.SoPX = ctpx.SoPX
GROUP BY px.SoPX;
-- 10. Cho biết tổng số chai nước xả vải Comfort đã bán trong 6 tháng đầu năm 2023. 
-- Thông tin hiển thị: tổng số lượng. 
SELECT 
    SUM(ctpx.Soluong)
FROM
    CTPhieuXuat ctpx
        JOIN
    SanPham sp ON ctpx.MaSP = sp.MaSP
        JOIN
    PhieuXuat px ON ctpx.SoPX = px.SoPX
WHERE
    sp.TenSP = 'Comfort'
        AND MONTH(px.NgayBan) <= 06
        AND YEAR(px.NgayBan) = 2023
GROUP BY sp.MaSP;
-- 11.Tổng kết doanh thu theo từng khách hàng theo tháng, 
-- gồm các thông tin: tháng, mã khách hàng, tên khách hàng, địa chỉ, tổng tiền.
SELECT 
    MONTH(px.NgayBan) `Thang`,
    px.MaKH `Ma KH`,
    kh.TenKH `Ten KH`,
    kh.DiaChi `Dia Chi`,
    SUM(ctpx.Soluong * ctpx.Giaban) `Tong tien`
FROM
    PhieuXuat px
        JOIN
    KhachHang kh ON px.MaKH = kh.MaKH
        JOIN
    CTPhieuXuat ctpx ON px.SoPX = ctpx.SoPX
GROUP BY MONTH(px.NgayBan) , px.MaKH
ORDER BY MONTH(px.NgayBan); 
-- 12.Thống kê tổng số lượng sản phẩm đã bán theo từng tháng trong năm, 
-- gồm thông tin: năm, tháng, mã sản phẩm, tên sản phẩm, đơn vị tính, tổng số lượng.
SELECT 
    YEAR(NgayBan) AS Nam,
    MONTH(NgayBan) AS Thang,
    sp.MaSP,
    sp.TenSP,
    sp.Donvitinh,
    SUM(SoLuong) AS TongSoLuong
FROM
    PhieuXuat px
        JOIN
    CTPhieuXuat ctpx ON px.SoPX = ctpx.SoPX
        JOIN
    SanPham sp ON ctpx.MaSP = sp.MaSP
GROUP BY YEAR(NgayBan) , MONTH(NgayBan) , MaSP , TenSP , Donvitinh
ORDER BY YEAR(NgayBan) , MONTH(NgayBan) , sp.MaSP;
-- 13.Thống kê doanh thu bán hàng trong trong 6 tháng đầu năm 2023, 
-- thông tin hiển thị gồm: tháng, doanh thu.
select 
     Month(px.NgayBan) as Thang,
    SUM(ctpx.SoLuong * ctpx.GiaBan) as DoanhThu
from 
    PhieuXuat px
join 
    CTPhieuXuat ctpx on px.SoPX = ctpx.SoPX
where 
    px.NgayBan between "20230101" and "20230630"
group by 
	Month(px.NgayBan)
order by 
   Month(px.NgayBan);
-- 14.Liệt kê các hóa đơn bán hàng của tháng 5 và tháng 6 năm 2023, 
-- gồm các thông tin: số phiếu, ngày bán, họ tên nhân viên bán hàng, họ tên khách hàng, tổng trị giá.
SELECT 
    px.SoPX,
    px.NgayBan,
    (SELECT 
            HoTen
        FROM
            NhanVien
        WHERE
            MaNV = px.MaNV) `Ten NV`,
    (SELECT 
            TenKH
        FROM
            KhachHang
        WHERE
            MaKH = px.MaKH) `Ten KH`,
    SUM(ctpx.SoLuong * ctpx.GiaBan) `Tong Tri Gia`
FROM
    PhieuXuat px
        JOIN
    CTPhieuXuat ctpx ON px.SoPX = ctpx.SoPX
WHERE
    NgayBan BETWEEN '20230501' AND '20230630'
GROUP BY px.SoPX , px.NgayBan , px.MaNV , px.MaKH
ORDER BY px.NgayBan;
-- 15.Cuối ngày, nhân viên tổng kết các hóa đơn bán hàng trong ngày, 3
-- thông tin gồm: số phiếu xuất, mã khách hàng, tên khách hàng, họ tên nhân viên bán hàng, ngày bán, trị giá.
SELECT 
    px.SoPX AS SoPhieuXuat,
    px.MaKH,
    kh.TenKH,
    (SELECT 
            HoTen
        FROM
            NhanVien
        WHERE
            MaNV = px.MaNV) `Ten NV`,
    px.NgayBan,
    SUM(ctpx.GiaBan * ctpx.SoLuong) AS `Tong Tri Gia`
FROM
    PhieuXuat px
        JOIN
    CTPhieuXuat ctpx ON px.SoPX = ctpx.SoPX
        JOIN
    KhachHang kh ON px.MaKH = kh.MaKH
WHERE
    DATE(px.NgayBan) = CURDATE()
GROUP BY px.SoPX , px.MaKH , kh.TenKH , px.MaNV , px.NgayBan
ORDER BY px.NgayBan DESC;
-- 16.Thống kê doanh số bán hàng theo từng nhân viên, 
-- gồm thông tin: mã nhân viên, họ tên nhân viên, mã sản phẩm, tên sản phẩm, đơn vị tính, tổng số lượng.
SELECT 
    px.MaNV,
    (SELECT 
            HoTen
        FROM
            NhanVien
        WHERE
            MaNV = px.MaNV) `Ten NV`,
    ctpx.MaSP,
    sp.TenSP,
    sp.Donvitinh,
    SUM(ctpx.SoLuong) `So luong`
FROM
    PhieuXuat px
        JOIN
    CTPhieuXuat ctpx ON px.SoPX = ctpx.SoPX
        JOIN
    SanPham sp ON ctpx.MaSP = sp.MaSP
GROUP BY px.MaNV , ctpx.MaSP , sp.TenSP , sp.Donvitinh
ORDER BY px.MaNV ASC , ctpx.MaSP ASC;
-- 17.Liệt kê các hóa đơn bán hàng cho khách vãng lai (KH01) trong quý 2/2023,
-- thông tin gồm số phiếu xuất, ngày bán, mã sản phẩm, tên sản phẩm, đơn vị tính, số lượng, đơn giá, thành tiền.
SELECT 
    px.SoPX,
    px.NgayBan,
    (SELECT 
            HoTen
        FROM
            NhanVien
        WHERE
            MaNV = px.MaNV) `Ten NV`,
    (SELECT 
            TenKH
        FROM
            KhachHang
        WHERE
            MaKH = px.MaKH) `Ten KH`,
    ctpx.MaSP,
    sp.TenSP,
    sp.Donvitinh,
    ctpx.SoLuong,
    (ctpx.GiaBan * ctpx.SoLuong) `Thanh tien`
FROM
    PhieuXuat px
        JOIN
    CTPhieuXuat ctpx ON px.SoPX = ctpx.SoPX
        JOIN
    SanPham sp ON ctpx.MaSP = sp.MaSP
WHERE
    px.MaKH = 'KH01'
        AND px.NgayBan BETWEEN '20230401' AND '20230630'
ORDER BY px.NgayBan ASC , ctpx.MaSP ASC;
-- 18.Liệt kê các sản phẩm chưa bán được trong 6 tháng đầu năm 2018,
-- gồm: mã sản phẩm, tên sản phẩm, loại sản phẩm, đơn vị tính.
SELECT 
    sp.MaSP,
    sp.TenSP,
    (SELECT 
            TenloaiSP
        FROM
            LoaiSP
        WHERE
            MaloaiSP = sp.MaloaiSP) `Loai SP`,
    sp.Donvitinh
FROM
    SanPham sp
WHERE
    MaSP NOT IN (SELECT 
            MaSP
        FROM
            CTPhieuXuat ctpx
                JOIN
            PhieuXuat px ON ctpx.SoPX = px.SoPX
        WHERE
            YEAR(px.NgayBan) = 2023
                AND MONTH(px.NgayBan) <= 6);
-- 19.Liệt kê danh sách nhà cung cấp không giao dịch mua bán với cửa hàng trong quý 2/2023, 
-- gồm thông tin: mã nhà cung cấp, tên nhà cung cấp, địa chỉ, số điện thoại.
SELECT 
    ncc.MaNCC, ncc.TenNCC, ncc.Diachi, ncc.Dienthoai
FROM
    NhaCungCap ncc
WHERE
    MaNCC NOT IN (SELECT DISTINCT
            MaNCC
        FROM
            PhieuNhap pn
        WHERE
            YEAR(pn.Ngaynhap) = 2023
                AND MONTH(pn.Ngaynhap) BETWEEN 4 AND 6);
-- 20.Cho biết khách hàng có tổng trị giá đơn hàng lớn nhất 
-- trong 6 tháng đầu năm 2018.
SELECT 
    kh.TenKH, SUM(ctpx.GiaBan * ctpx.SoLuong) Tổng Trị Giá
FROM
    PhieuXuat px
        JOIN
    CTPhieuXuat ctpx ON px.SoPX = ctpx.SoPX
        JOIN
    KhachHang kh ON px.MaKH = kh.MaKH
WHERE
    YEAR(px.NgayBan) = 2023
        AND MONTH(px.NgayBan) <= 6
GROUP BY kh.TenKH
ORDER BY Tổng Trị Giá DESC
LIMIT 1;
-- 21.Cho biết mã khách hàng và số lượng đơn đặt hàng của mỗi khách hàng.
SELECT 
    px.MaKH `Ma KH`, COUNT(px.SoPX) SL đơn
FROM
    PhieuXuat px
GROUP BY px.MaKH;
-- 22.Cho biết mã nhân viên, tên nhân viên, tên khách hàng 
-- kể cả những nhân viên không đại diện bán hàng.
SELECT 
    nv.MaNV,
    nv.HoTen,
    (SELECT 
            TenKH
        FROM
            KhachHang
        WHERE
            MaKH = px.MaKH) `Ten KH`
FROM
    NhanVien nv
        LEFT JOIN
    PhieuXuat px ON nv.MaNV = px.MaNV;
-- 23.Cho biết số lượng nhân viên nam, số lượng nhân viên nữ
SELECT 
    nv.GioiTinh `Gioi tinh`, COUNT(nv.GioiTinh) `So luong`
FROM
    NhanVien nv
GROUP BY nv.GioiTinh;
-- 24.Cho biết mã nhân viên, tên nhân viên, số năm làm việc của những nhân viên
-- có thâm niên cao nhất.
SELECT 
    nv.MaNV `Ma NV`,
    nv.HoTen `Ten NV`,
    (DATEDIFF(CURDATE(), nv.NgayVaoLam) / 365) `Tham Nien`
FROM
    NhanVien nv
ORDER BY `Tham Nien` DESC
LIMIT 5;
-- 25.Hãy cho biết họ tên của những nhân viên đã đến tuổi về hưu 
-- (nam:60 tuổi,nữ: 55 tuổi)

-- 26.Hãy cho biết họ tên của nhân viên và năm về hưu của họ.

-- 27.Cho biết tiền thưởng tết dương lịch của từng nhân viên. 
-- Biết rằng - thâm niên <1 năm thưởng 200.000 - 1 năm <= thâm niên < 3 năm thưởng
-- 400.000 - 3 năm <= thâm niên < 5 năm thưởng 600.000 - 5 năm <= thâm
-- niên < 10 năm thưởng 800.000 - thâm niên >= 10 năm thưởng 1.000.000

-- 28.Cho biết những sản phẩm thuộc ngành hàng Hóa mỹ phẩm
SELECT 
    *
FROM
    SanPham
        JOIN
    LoaiSP ON Sanpham.MaloaiSP = LoaiSP.MaLoaiSP
WHERE
    LoaiSP.TenloaiSP = 'Hoa Pham';
-- 29.Cho biết những sản phẩm thuộc loại Quần áo.
SELECT 
    *
FROM
    SanPham
        JOIN
    LoaiSP ON Sanpham.MaloaiSP = LoaiSP.MaLoaiSP
WHERE
    LoaiSP.TenloaiSP = 'Quan Ao';
-- 30.Cho biết số lượng sản phẩm loại Quần áo.
SELECT 
    COUNT(SanPham.MaSP)
FROM
    SanPham
        JOIN
    LoaiSP ON Sanpham.MaloaiSP = LoaiSP.MaLoaiSP
WHERE
    LoaiSP.TenloaiSP = 'Quan Ao';
-- 31.Cho biết số lượng loại sản phẩm ngành hàng Hóa mỹ phẩm.
SELECT 
    COUNT(SanPham.MaSP)
FROM
    SanPham
        JOIN
    LoaiSP ON Sanpham.MaloaiSP = LoaiSP.MaLoaiSP
WHERE
    LoaiSP.TenloaiSP = 'Hoa Pham';
-- 32.Cho biết số lượng sản phẩm theo từng loại sản phẩm.
SELECT 
    LoaiSP.TenloaiSP `Loai_SP`, COUNT(SanPham.MaSP) `So_luong`
FROM
    SanPham
        JOIN
    LoaiSP ON Sanpham.MaloaiSP = LoaiSP.MaLoaiSP
GROUP BY LoaiSP.TenloaiSP;
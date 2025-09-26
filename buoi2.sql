select * from KHACHHANG
select [TENSP] as N'tên sản phẩm', [GIA] as N'giá' from SANPHAM
select [HOTEN] as N'họ tên', [SODT] as N'số điện thoại' from NHANVIEN
select [SOHD], [NGHD] from HOADON where MAKH = 'KH01'
select * from [KHACHHANG] where [DOANHSO] > 300000
select * from [SANPHAM] where [NUOCSX] = 'VN' and GIA < 50000
select * from HOADON where YEAR(NGHD) = 2022 
select * from [KHACHHANG] where [HOTEN] like 'Nguyen%'
select * from [HOADON] where [TRIGIA] > 1000000
select * from [KHACHHANG] where YEAR(NGSINH) = 2000
select * from [NHANVIEN] where YEAR(NGVL) = 2020
select distinct [MAKH] from [HOADON] where [MAKH] <> 'NULL'
select * from [SANPHAM] where [GIA] between 20000 and 100000
select * from [KHACHHANG] order by [DOANHSO] desc 
select * from [HOADON] where [NGHD] > dateadd(DAY, -7, GETDATE())

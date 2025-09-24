-- Liệt kê tất cả các hóa đơn cùng với tên khách hàng tương ứng
select HOADON.*, KHACHHANG.HOTEN
from HOADON join KHACHHANG on HOADON.MAKH = KHACHHANG.MAKH
-- Liệt kê tất cả hóa đơn kèm tên nhân viên lập hóa đơn
select HOADON.*, NHANVIEN.HOTEN
from HOADON join NHANVIEN on HOADON.MANV = NHANVIEN.MANV
-- liệt kê tất cả hóa đơn kèm tên khách hàng và tên nhân viên lập hóa đơn
select HOADON.*, KHACHHANG.HOTEN as TENKH, NHANVIEN.HOTEN as TENNV
from HOADON 
join KHACHHANG on HOADON.MAKH = KHACHHANG.MAKH
join NHANVIEN on HOADON.MANV = NHANVIEN.MANV
-- Liệt kê chi tiết hóa đơn: số hóa đơn, ngày hóa đơn, tên sản phẩm và số lượng.
select HOADON.SOHD, HOADON.NGHD, SANPHAM.TENSP, CTHD.SL
from HOADON 
join CTHD on HOADON.SOHD = CTHD.SOHD
join SANPHAM on CTHD.MASP = SANPHAM.MASP
-- Liệt kê chi tiết hóa đơn: số hóa đơn, tên khách hàng, tên sản phẩm, số lượng, đơn giá.
select HOADON.SOHD, KHACHHANG.HOTEN, SANPHAM.TENSP, CTHD.SL, HOADON.TRIGIA
from HOADON 
join KHACHHANG on HOADON.MAKH = KHACHHANG.MAKH
join CTHD on HOADON.SOHD = CTHD.SOHD
join SANPHAM on CTHD.MASP = SANPHAM.MASP
-- Liệt kê tất cả khách hàng và các hóa đơn của họ (kể cả khách hàng chưa mua gì).
select KHACHHANG.*, HOADON.*
from HOADON 
right join KHACHHANG on HOADON.MAKH = KHACHHANG.MAKH
-- Liệt kê tất cả sản phẩm và các hóa đơn đã bán ra (kể cả sản phẩm chưa bán).
select SANPHAM.*, CTHD.*
from CTHD
right join SANPHAM on CTHD.MASP = SANPHAM.MASP
-- Liệt kê khách hàng và số hóa đơn mà họ đã lập (chỉ hiện số hóa đơn, chưa cần đếm).
select KHACHHANG.HOTEN, HOADON.SOHD
from KHACHHANG
left join HOADON on KHACHHANG.MAKH = HOADON.MAKH
-- Liệt kê danh sách nhân viên cùng các hóa đơn mà họ lập.
select NHANVIEN.HOTEN, HOADON.SOHD
from NHANVIEN
left join HOADON on NHANVIEN.MANV = HOADON.MANV
-- Liệt kê tất cả sản phẩm và thông tin chi tiết (mã hóa đơn, ngày hóa đơn, số lượng) nếu có
select SANPHAM.*, CTHD.SOHD, HOADON.NGHD, CTHD.SL
from SANPHAM
left join CTHD on SANPHAM.MASP = CTHD.MASP
left join HOADON on CTHD.SOHD = HOADON.SOHD

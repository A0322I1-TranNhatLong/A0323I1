-- Task 5.	Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien 
-- (Với tổng tiền được tính theo công thức như sau: Chi Phí Thuê + Số Lượng * Giá, với Số Lượng và Giá là từ bảng dich_vu_di_kem, hop_dong_chi_tiet) cho tất cả các khách hàng đã từng đặt phòng. 
-- (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).
select kh.ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong,
		ngay_ket_thuc, chi_phi_thue + gia * so_luong as tong_tien
from khach_hang kh
left join hop_dong hd
using (ma_khach_hang)
join hop_dong_chi_tiet
using (ma_hop_dong)
join loai_khach
using (ma_loai_khach)
left join dich_vu
using (ma_dich_vu) 
left join dich_vu_di_kem
using (ma_dich_vu_di_kem)
union
select kh.ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong,
		ngay_ket_thuc, chi_phi_thue as tong_tien
from khach_hang kh
left join hop_dong hd
using (ma_khach_hang)
left join hop_dong_chi_tiet
using (ma_hop_dong)
join loai_khach
using (ma_loai_khach)
left join dich_vu
using (ma_dich_vu) 
left join dich_vu_di_kem
using (ma_dich_vu_di_kem)
where so_luong is null
order by ma_khach_hang;
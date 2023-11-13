-- Task 4.	Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. 
-- Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
select hd.ma_khach_hang, ho_ten , count(hd.ma_khach_hang) as so_lan_dat_phong
from hop_dong hd
join khach_hang kh
using (ma_khach_hang)
where ma_loai_khach = 1
group by hd.ma_khach_hang
order by so_lan_dat_phong;
-- Task 2 :
select * from nhan_vien
where (ho_ten like 'H%' or ho_ten like 'K%' or ho_ten like 'T%') and (character_length(ho_ten) <=15);
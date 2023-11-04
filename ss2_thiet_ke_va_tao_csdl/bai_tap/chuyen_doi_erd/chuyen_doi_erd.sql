create database chuyen_doi_erd;
use chuyen_doi_erd;
create table vat_tu(
ma_vtu int not null primary key ,
ten_vtu varchar(50) not null
);
create table phieu_xuat(
so_px int not null primary key ,
ngay_xuat date 
);
create table chi_tiet_phieu_xuat(
ma_vtu int  ,
dg_xuat float,
sl_xuat int,
so_px int ,
primary key (ma_vtu, so_px),
foreign key (ma_vtu) references vat_tu(ma_vtu),
foreign key (so_px) references phieu_xuat(so_px) 
);
create table phieu_nhap(
so_pn int not null primary key ,
ngay_nhap date
);
create table chi_tiet_phieu_nhap(
ma_vtu int ,
dg_nhap float,
sl_nhap int,
so_pn int ,
primary key(ma_vtu, so_pn),
foreign key(ma_vtu) references vat_tu(ma_vtu),
foreign key(so_pn) references phieu_nhap(so_pn) 
);
create table don_dat_hang(
so_dh int not null primary key,
ngay_dh date
);
create table chi_tiet_don_dat_hang(
ma_vtu int ,
so_dh int ,
primary key (ma_vtu, so_dh),
foreign key(ma_vtu) references vat_tu(ma_vtu),
foreign key(so_dh) references don_dat_hang(so_dh)
);
create table nha_cc(
ma_ncc int not null primary key,
ten_ncc varchar(255),
dia_chi varchar (255)
);
create table sdt(
ma_ncc int not null primary key,
sdt varchar(11),
foreign key (ma_ncc) references nha_cc(ma_ncc)
);
alter table don_dat_hang add column ma_ncc int;
alter table don_dat_hang add foreign key (ma_ncc) references nha_cc(ma_ncc);
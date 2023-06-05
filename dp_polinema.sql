create database db_polinema;

use db_polinema;

create table prodi_table (kode_prodi varchar(6) primary key, nama_prodi varchar(30));

select * from prodi_table;

create table table_mahasiswa (nim int(8) primary key, nama_mhs varchar(50), jenis_kelamin enum('L', 'P') default('L'), alamat varchar(50),
kota varchar(20) default ('Malang'), asal_sma varchar(30), no_hp varchar(15), umur int, kode_prodi varchar(6));

select * from table_mahasiswa;

create table mata_kuliah (mk_id varchar(10) primary key, nama_mk varchar(50), jumlah_jam float (4,2), sks int);

select * from mata_kuliah;

create table tb_ruang (ruang_id varchar(3) primary key, nama_ruang varchar(20), kapasitas int);

select * from tb_ruang;

create table tb_dosen (nidn int(20) primary key, nama_dosen varchar(50), status_dosen enum('PNS', 'KONTRAk') default ('PNS'),
jenis_kelamin enum('L', 'P') default ('L'), no_hp varchar(15));

select * from tb_dosen;

alter table table_mahasiswa add column agama varchar(10);

select * from table_mahasiswa;

alter table tb_dosen add column alamat varchar(50);

select * from tb_dosen;

insert into prodi_table (kode_prodi, nama_prodi)
values
('KP001', 'Program Studi A'),
('KP002', 'Program Studi B'),
('KP003', 'Program Studi C'),
('KP004', 'Program Studi D'),
('KP005', 'Program Studi E'),
('KP006', 'Program Studi F'),
('KP007', 'Program Studi G'),
('KP008', 'Program Studi H'),
('KP009', 'Program Studi I'),
('KP010', 'Program Studi J');

select * from prodi_table;


insert into table_mahasiswa (nim, nama_mhs, jenis_kelamin, alamat, kota, asal_sma, no_hp, umur, kode_prodi, agama)
values
  (12345678, 'John Doe', 'L', 'Jl. Contoh No. 123', 'Malang', 'SMA Contoh', '081234567890', 20, 'KP001', 'Islam'),
  (23456789, 'Jane Smith', 'P', 'Jl. Contoh No. 456', 'Malang', 'SMA Contoh', '082345678901', 21, 'KP002', 'Kristen'),
  (34567890, 'Michael Johnson', 'L', 'Jl. Contoh No. 789', 'Malang', 'SMA Contoh', '083456789012', 19, 'KP001', 'Hindu'),
  (45678901, 'Sarah Williams', 'P', 'Jl. Contoh No. 987', 'Malang', 'SMA Contoh', '084567890123', 20, 'KP003', 'Buddha'),
  (56789012, 'David Brown', 'L', 'Jl. Contoh No. 654', 'Malang', 'SMA Contoh', '085678901234', 22, 'KP002', 'Islam'),
  (67890123, 'Emily Davis', 'P', 'Jl. Contoh No. 321', 'Malang', 'SMA Contoh', '086789012345', 21, 'KP003', 'Kristen'),
  (78901234, 'Daniel Wilson', 'L', 'Jl. Contoh No. 789', 'Malang', 'SMA Contoh', '087890123456', 19, 'KP001', 'Islam'),
  (89012345, 'Olivia Moore', 'P', 'Jl. Contoh No. 567', 'Malang', 'SMA Contoh', '088901234567', 20, 'KP002', 'Hindu'),
  (90123456, 'James Taylor', 'L', 'Jl. Contoh No. 234', 'Malang', 'SMA Contoh', '089012345678', 19, 'KP003', 'Islam'),
  (01234567, 'Sophia Anderson', 'P', 'Jl. Contoh No. 876', 'Malang', 'SMA Contoh', '090123456789', 21, 'KP001', 'Kristen');

select * from table_mahasiswa;

INSERT INTO mata_kuliah (mk_id, nama_mk, jumlah_jam, sks)
VALUES
  ('MK001', 'Matematika Dasar', 3.5, 4),
  ('MK002', 'Fisika Dasar', 4.0, 4),
  ('MK003', 'Kimia Dasar', 3.0, 3),
  ('MK004', 'Pemrograman Java', 5.5, 5),
  ('MK005', 'Basis Data', 4.5, 4),
  ('MK006', 'Algoritma dan Struktur Data', 4.0, 4),
  ('MK007', 'Sistem Operasi', 3.5, 4),
  ('MK008', 'Pengantar Teknologi Informasi', 2.5, 3),
  ('MK009', 'Statistik', 3.0, 3),
  ('MK010', 'Pemrograman Web', 4.5, 4);

select * from mata_kuliah;

INSERT INTO tb_ruang (ruang_id, nama_ruang, kapasitas)
VALUES
  ('R01', 'Ruang 101', 30),
  ('R02', 'Ruang 102', 25),
  ('R03', 'Ruang 103', 20),
  ('R04', 'Ruang 104', 35),
  ('R05', 'Ruang 105', 40),
  ('R06', 'Ruang 106', 30),
  ('R07', 'Ruang 107', 25),
  ('R08', 'Ruang 108', 20),
  ('R09', 'Ruang 109', 35),
  ('R10', 'Ruang 110', 40);
  
  select * from tb_ruang;
  
INSERT INTO tb_dosen (nidn, nama_dosen, status_dosen, jenis_kelamin, no_hp)
VALUES
  (1234567890, 'John Doe', 'PNS', 'L', '081234567890'),
  (2345678901, 'Jane Smith', 'KONTRAK', 'P', '082345678901'),
  (3456789012, 'Michael Johnson', 'PNS', 'L', '083456789012'),
  (4567890123, 'Sarah Williams', 'KONTRAK', 'P', '084567890123'),
  (5678901234, 'David Brown', 'PNS', 'L', '085678901234'),
  (6789012345, 'Emily Davis', 'KONTRAK', 'P', '086789012345'),
  (7890123456, 'Daniel Wilson', 'PNS', 'L', '087890123456'),
  (8901234567, 'Olivia Moore', 'KONTRAK', 'P', '088901234567'),
  (9012345678, 'James Taylor', 'PNS', 'L', '089012345678'),
  (0123456789, 'Sophia Anderson', 'KONTRAK', 'P', '090123456789');

create table class_table (class char primary key, big_salary float not null);

select * from class_table;

insert into class_table (class, big_salary)
values
('A', '1000000'),
('B', '900000'),
('c', '750000'); 

select * from class_table; 
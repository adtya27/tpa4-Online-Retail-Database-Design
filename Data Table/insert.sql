-- Table User
insert into user (nama_user, username, pass_user, email_user, alamat_user, status_user )
values
('adit', 'adityanf', 'adit123', 'adit@example.com', 'yogyakarta', 'aktif'),
('radit', 'radityanf', 'radit123', 'radit@example.com', 'bandung', 'aktif');

-- Table Produk
insert into produk (img_produk, nama_produk, jenis_produk, desc_produk, harga_produk, stock)
values
('produk1', 'Laptop MSI', 'Electronics', 'laptop gaming', 'Rp.10.000.000', '5'),
('produk2', 'Laptop TUF', 'Electronics', 'laptop gaming', 'Rp.15.000.000', '3'),
('produk3', 'VENTELA ', 'Sepatu', 'sepatu lokal berkualitas', 'Rp.400.000', '16'),
('produk4', 'Kaos Hitam', 'Clothing', 'Kaos Lokal', 'Rp.100.000', '10');

-- Table Transaksi
insert into transaksi (id_user, tgl_transaksi, total_transaksi)
values
(1, '2023-11-10', 'Rp.400.000'),
(2, '2023-11-10', 'Rp.800.000');

-- Table Detail Transaksi
insert into detail_transaksi (id_transaksi, id_produk, jumlah)
values
(1, 3, 1),
(2, 3, 2);
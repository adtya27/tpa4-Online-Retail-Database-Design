-- # 1 pelanggan membeli 3 barang yang berbeda.
insert into user (nama_user, username, pass_user, email_user, alamat_user, status_user )
values
('hapis', 'hapiss', 'hapis123', 'hapis@example.com', 'yogyakarta', 'aktif');

insert into transaksi (id_user, tgl_transaksi, total_transaksi)
values
(3, '2023-11-11', 'Rp.600.000');

insert into detail_transaksi (id_transaksi, id_produk, jumlah)
values
(3, 3, 1),
(3, 5, 2);

-- # Melihat 3 produk yang paling sering dibeli oleh pelanggan.
SELECT id_produk, COUNT(*) AS TotalPurchases
FROM detail_transaksi
GROUP BY id_produk
ORDER BY TotalPurchases DESC
LIMIT 3;

-- # Melihat Kategori barang yang paling banyak barangnya.
SELECT jenis_produk, COUNT(*) AS TotalProducts
FROM produk
GROUP BY jenis_produk
ORDER BY TotalProducts DESC
LIMIT 1;

-- # Nominal rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir.
SELECT AVG(total_transaksi) AS AverageTransactionAmount
FROM transaksi
WHERE tgl_transaksi >= DATE_SUB(NOW(), INTERVAL 1 MONTH);
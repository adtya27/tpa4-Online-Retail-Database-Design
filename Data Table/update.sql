-- Table User
update user 
set alamat_user = 'Ciamis'
where id_user = 1;

-- Table Produk
update produk
set desc_produk = 'sepatu lokal berkualitas bagus'
where id_produk = 3;

-- Table Transaksi
update transaksi
set total_transaksi = 'Rp.12.000.000'
where id_transaksi = 1;

-- Table Detail Transaksi
update detail_transaksi
set id_produk = 2
where id_detail_transaksi = 1;
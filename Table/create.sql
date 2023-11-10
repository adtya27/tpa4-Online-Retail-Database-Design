-- show databases;
-- show full tables;

-- Table User
create table user(
id_user INT auto_increment,
nama_user VARCHAR(70),
username varchar(50),
pass_user varchar(100),
email_user varchar(70),
alamat_user varchar(150),
status_user varchar(5),
primary key(id_user)
);

-- Table Produk
create table produk(
id_produk INT auto_increment,
nama_produk varchar(100),
img_produk varchar(100),
jenis_produk varchar(50),
desc_produk varchar(100),
harga_produk varchar(150),
stock varchar(20),
primary key(id_produk)
);

-- Table Transaksi
create table transaksi(
id_transaksi int auto_increment,
id_user int,
tgl_transaksi date,
total_transaksi varchar(150),
primary key(id_transaksi),
foreign key(id_user)references user(id_user)
);

-- Table Detail Transaksi
create table detail_transaksi(
id_detail_transaksi int auto_increment primary key,
id_transaksi int,
id_produk int,
jumlah int,
foreign key(id_transaksi)references transaksi(id_transaksi),
foreign key(id_produk) references produk(id_produk)
);




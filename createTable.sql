-- Active: 1668429872052@@127.0.0.1@3306@online_shop
CREATE TABLE pengguna(
	id_pengguna INTEGER PRIMARY KEY,
	nama_pengguna VARCHAR(45) NOT NULL,
	email_pengguna VARCHAR(45) NOT NULL,
	password_pengguna VARCHAR(12) NOT NULL);
CREATE TABLE pembeli(
	id_pembeli INTEGER PRIMARY KEY,
    id_penggunaFK INTEGER REFERENCES pengguna(id_pengguna),
	nama_pembeli VARCHAR(45) NOT NULL,
	alamat_pembeli VARCHAR(255) NOT NULL,
	telp_pembeli VARCHAR(12) NOT NULL);
CREATE TABLE produk(
	id_produk INTEGER PRIMARY KEY,
    id_penggunaFK INTEGER REFERENCES pembeli_pengguna(id_pengguna),
    id_pembeliFK INTEGER REFERENCES pembeli(id_pembeli),
	nama_produk VARCHAR(45) NOT NULL,
	kategori_produk VARCHAR(45) NOT NULL,
	harga_produk VARCHAR(20) NOT NULL);
CREATE TABLE penjualan(
	id_penjualan INTEGER PRIMARY KEY,
    id_pembeliFK INTEGER REFERENCES produk_pembeli(id_pembeli),
    id_penggunaFK INTEGER REFERENCES produk_pembeli_pengguna(id_pengguna),
    id_produkFK INTEGER REFERENCES produk(id_produk),
    id_pembeli INTEGER NOT NULL,
	nama_produk VARCHAR(45) NOT NULL,
	kategori_produk VARCHAR(45) NOT NULL,
	jumlah_produk INTEGER NOT NULL,
    waktu DATETIME NOT NULL);
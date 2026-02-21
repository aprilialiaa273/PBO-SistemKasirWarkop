CREATE TABLE user (
    id_user INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50),
    password VARCHAR(100),
    role VARCHAR(20)
);

CREATE TABLE produk (
    id_produk INT PRIMARY KEY AUTO_INCREMENT,
    nama_produk VARCHAR(100),
    harga DOUBLE,
    stok INT,
    kategori VARCHAR(50)
);

CREATE TABLE transaksi (
    id_transaksi INT PRIMARY KEY AUTO_INCREMENT,
    tanggal DATE,
    total DOUBLE,
    id_user INT,
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);

CREATE TABLE detail_transaksi (
    id_detail INT PRIMARY KEY AUTO_INCREMENT,
    id_transaksi INT,
    id_produk INT,
    jumlah INT,
    subtotal DOUBLE,
    FOREIGN KEY (id_transaksi) REFERENCES transaksi(id_transaksi),
    FOREIGN KEY (id_produk) REFERENCES produk(id_produk)
);
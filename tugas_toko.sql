-- 1.deskripsikan struktur tabel producs

CREATE TABLE products(
id VARCHAR(50) NOT NULL,
nama_produk VARCHAR(50) NOT NULL,
harga INT NOT NULL,
stok INT NOT NULL);

-- 2. perintah untuk menambahkan produk

INSERT INTO products(id,nama_produk,harga,stok)
VALUES('P0001','LAPTOP ASUS',12000000,50),
('P0002','LAPTOP SAMSUNG',15000000,60),
('P0003','LAPTOP ACER',20000000,30);

-- 3.daftar produk memiliki harga di atas rata-rata

SELECT AVG(harga) FROM products;
SELECT * FROM products WHERE harga > 15666666.666666666;

-- 4.mengubah stok produk dengan id 'P0003' menjadi 75

UPDATE products
SET stok = '75'
WHERE id = 'P0003';

-- 5.jumlah produk yang dijual di setiap kategori


SELECT SUM(stok) AS total_stok FROM products;

-- 6.produk yang memiliki stok dari 20 dan harga di bawah 15000000


SELECT * FROM products WHERE stok > 20 AND harga < 15000000;

-- 7.urutan produk berdasarkan harga termurah ke termahal

SELECT * FROM products ORDER BY harga ASC;

-- 8.jelaskan apa yang terjadi jika kita menjalankan perintah  DELETE FROM products WHERE stok < 10;

DELETE FROM products WHERE stok < 10;

jadi perintah di atas untuk menghapus jumlah stok barang yang kurang dari 10

-- 9.total nilai (harga * stok/quantity) dari setiap produk


SELECT (harga * stok) AS total_stok FROM products;

-- 10. menambahkan colum discount

ALTER TABLE products
ADD COLUMN discount DECIMAL(5,2);


CREATE DATABASE perpustakaan;
USE perpustakaan;

CREATE TABLE anggota (
    id_anggota INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100),
    alamat VARCHAR(150),
    no_telp VARCHAR(15)
);

CREATE TABLE buku (
    id_buku INT AUTO_INCREMENT PRIMARY KEY,
    judul VARCHAR(150),
    penulis VARCHAR(100),
    tahun_terbit INT,
    kategori VARCHAR(50)
);

CREATE TABLE peminjaman (
    id_peminjaman INT AUTO_INCREMENT PRIMARY KEY,
    id_anggota INT,
    id_buku INT,
    tanggal_pinjam DATE,
    tanggal_kembali DATE,
    FOREIGN KEY (id_anggota) REFERENCES anggota(id_anggota),
    FOREIGN KEY (id_buku) REFERENCES buku(id_buku)
);

INSERT INTO anggota (nama, alamat, no_telp) VALUES
('Ari Pratama', 'Jl. Melati No. 1', '081200000001'),
('Siti Marlina', 'Jl. Kenanga No. 2', '081200000002'),
('Bagus Setiawan', 'Jl. Mawar No. 5', '081200000003'),
('Dina Lestari', 'Jl. Dahlia No. 7', '081200000004'),
('Hendra Gunawan', 'Jl. Cempaka No. 10', '081200000005'),
('Lina Putri', 'Jl. Anggrek No. 3', '081200000006'),
('Rizki Pranata', 'Jl. Flamboyan No. 12', '081200000007'),
('Nadya Amalia', 'Jl. Teratai No. 8', '081200000008'),
('Fajar Hidayat', 'Jl. Sawo No. 9', '081200000009'),
('Rani Safitri', 'Jl. Rambutan No. 11', '081200000010'),
('Joko Santoso', 'Jl. Jambu No. 14', '081200000011'),
('Rizma Fadila', 'Jl. Durian No. 6', '081200000012'),
('Dodi Saputra', 'Jl. Nangka No. 4', '081200000013'),
('Fina Oktaviani', 'Jl. Pinus No. 15', '081200000014'),
('Agus Rahman', 'Jl. Apel No. 13', '081200000015');

INSERT INTO buku (judul, penulis, tahun_terbit, kategori) VALUE_

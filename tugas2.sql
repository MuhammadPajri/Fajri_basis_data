MariaDB [perpustakaan]>  SELECT *
    -> FROM buku
    -> WHERE tahun_terbit BETWEEN 2018 AND 2021;
+---------+--------------------+-----------------+--------------+------------+
| id_buku | judul              | penulis         | tahun_terbit | kategori   |
+---------+--------------------+-----------------+--------------+------------+
|       1 | Pemrograman Dasar  | Andi Wijaya     |         2020 | Teknologi  |
|       2 | Belajar MySQL      | Siti Rahayu     |         2021 | Teknologi  |
|       3 | Ekonomi Mikro      | Diana Putri     |         2018 | Ekonomi    |
|       4 | Sejarah Indonesia  | Budi Santoso    |         2019 | Sejarah    |
|       5 | Matematika Diskrit | Hendra Yulianto |         2020 | Matematika |
|       8 | Jaringan Komputer  | Rudi Hidayat    |         2021 | Teknologi  |
|      11 | Statistika Dasar   | Dodi Setiadi    |         2019 | Matematika |
|      13 | Sistem Operasi     | Ivan Supriyadi  |         2020 | Teknologi  |
|      14 | Kimia Dasar        | Nadia Rahma     |         2018 | Sains      |
+---------+--------------------+-----------------+--------------+------------+
9 rows in set (0.001 sec)

MariaDB [perpustakaan]> SELECT *
    -> FROM anggota
    -> WHERE nama LIKE '%a%';
+------------+----------------+----------------------+--------------+
| id_anggota | nama           | alamat               | no_telp      |
+------------+----------------+----------------------+--------------+
|          1 | Ari Pratama    | Jl. Melati No. 1     | 081200000001 |
|          2 | Siti Marlina   | Jl. Kenanga No. 2    | 081200000002 |
|          3 | Bagus Setiawan | Jl. Mawar No. 5      | 081200000003 |
|          4 | Dina Lestari   | Jl. Dahlia No. 7     | 081200000004 |
|          5 | Hendra Gunawan | Jl. Cempaka No. 10   | 081200000005 |
|          6 | Lina Putri     | Jl. Anggrek No. 3    | 081200000006 |
|          7 | Rizki Pranata  | Jl. Flamboyan No. 12 | 081200000007 |
|          8 | Nadya Amalia   | Jl. Teratai No. 8    | 081200000008 |
|          9 | Fajar Hidayat  | Jl. Sawo No. 9       | 081200000009 |
|         10 | Rani Safitri   | Jl. Rambutan No. 11  | 081200000010 |
|         11 | Joko Santoso   | Jl. Jambu No. 14     | 081200000011 |
|         12 | Rizma Fadila   | Jl. Durian No. 6     | 081200000012 |
|         13 | Dodi Saputra   | Jl. Nangka No. 4     | 081200000013 |
|         14 | Fina Oktaviani | Jl. Pinus No. 15     | 081200000014 |
|         15 | Agus Rahman    | Jl. Apel No. 13      | 081200000015 |
+------------+----------------+----------------------+--------------+
15 rows in set (0.000 sec)

MariaDB [perpustakaan]> SELECT *
    -> FROM peminjaman
    -> WHERE tanggal_pinjam BETWEEN '2025-11-03' AND '2025-11-08';
+---------------+------------+---------+----------------+-----------------+
| id_peminjaman | id_anggota | id_buku | tanggal_pinjam | tanggal_kembali |
+---------------+------------+---------+----------------+-----------------+
|             4 |          4 |       2 | 2025-11-03     | 2025-11-11      |
|             5 |          5 |       6 | 2025-11-03     | 2025-11-10      |
|             6 |          6 |       4 | 2025-11-04     | 2025-11-12      |
|             7 |          7 |       7 | 2025-11-05     | 2025-11-15      |
|             8 |          8 |       8 | 2025-11-05     | 2025-11-14      |
|             9 |          9 |       9 | 2025-11-06     | 2025-11-16      |
|            10 |         10 |      10 | 2025-11-07     | 2025-11-17      |
|            11 |         11 |      11 | 2025-11-08     | 2025-11-18      |
|            12 |         12 |      12 | 2025-11-08     | 2025-11-19      |
+---------------+------------+---------+----------------+-----------------+
9 rows in set (0.001 sec)

MariaDB [perpustakaan]> SELECT *
    -> FROM buku
    -> WHERE kategori = 'Teknologi'
    ->   AND tahun_terbit BETWEEN 2019 AND 2021;
+---------+-------------------+----------------+--------------+-----------+
| id_buku | judul             | penulis        | tahun_terbit | kategori  |
+---------+-------------------+----------------+--------------+-----------+
|       1 | Pemrograman Dasar | Andi Wijaya    |         2020 | Teknologi |
|       2 | Belajar MySQL     | Siti Rahayu    |         2021 | Teknologi |
|       8 | Jaringan Komputer | Rudi Hidayat   |         2021 | Teknologi |
|      13 | Sistem Operasi    | Ivan Supriyadi |         2020 | Teknologi |
+---------+-------------------+----------------+--------------+-----------+
4 rows in set (0.001 sec)

MariaDB [perpustakaan]> SELECT *
    -> FROM peminjaman
    -> WHERE id_anggota BETWEEN 5 AND 12;
+---------------+------------+---------+----------------+-----------------+
| id_peminjaman | id_anggota | id_buku | tanggal_pinjam | tanggal_kembali |
+---------------+------------+---------+----------------+-----------------+
|             5 |          5 |       6 | 2025-11-03     | 2025-11-10      |
|             6 |          6 |       4 | 2025-11-04     | 2025-11-12      |
|             7 |          7 |       7 | 2025-11-05     | 2025-11-15      |
|             8 |          8 |       8 | 2025-11-05     | 2025-11-14      |
|             9 |          9 |       9 | 2025-11-06     | 2025-11-16      |
|            10 |         10 |      10 | 2025-11-07     | 2025-11-17      |
|            11 |         11 |      11 | 2025-11-08     | 2025-11-18      |
|            12 |         12 |      12 | 2025-11-08     | 2025-11-19      |
+---------------+------------+---------+----------------+-----------------+
8 rows in set (0.001 sec)

# P2_Probstat_E_5025201034

## Laporan Praktikum Probabilitas dan Statistik

### Nama  : Lia Kharisma Putri
### NRP   : 5025201034
### Kelas : Probabilitas dan Statistik E

======================================================================================
### No 1
#### Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴

![]()

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.

#### Poin 1A
Mencari Standar Deviasi dari data selisih pasangan pengamatan pada tabel 
```c
> x = c(78,75,67,77,70,72,78,74,77)
> y = c(100,95,70,90,90,90,89,90,100) 
> data = data.frame(x,y)
> sd(data$x-data$y)
[1] 6.359595
```
Hasil

#### Poin 1B
mencari nilai t (p-value)

#### Poin 1C

### No 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan library seperti referensi pada modul).

#### Poin 2A
Setuju

#### Poin 2B

#### Poin 2C

### No 3
Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.

tabel

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)? Buatlah :

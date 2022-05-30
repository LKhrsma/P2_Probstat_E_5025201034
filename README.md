# P2_Probstat_E_5025201034

## Laporan Praktikum Probabilitas dan Statistik

### Nama  : Lia Kharisma Putri
### NRP   : 5025201034
### Kelas : Probabilitas dan Statistik E

==========================================================================
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
```c
t.test(x, y, alternative = "greater", var.equal = FALSE)
```

#### Poin 1C
tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”
```c
var.test(x,y)
t.tes(x,y, alternative = "two.sided", mu=0)
```

### No 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan library seperti referensi pada modul).

#### Poin 2A
Apakah Anda setuju dengan klaim tersebut?
Setuju

#### Poin 2B
Jelaskan maksud dari output yang dihasilkan
```c
library(BSDA)

tsum.test(
  mean.x = 23500, 
  s.x = sd(3900), 
  n.x = 100
)
```

#### Poin 2C
Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!
kesimpulan yang di dapatkan dari soal diatas adalah mobil yang digunakan rata-ratanya lebih dari 20.000 km/tahun

### No 3
Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.

tabel

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)? Buatlah :

#### Poin 3A
H0 dan H1

#### Poin 3B
Hitung Sampel Statistik
```c
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y =2.79 , s.y = 1.32, n.y = 27, 
          alternative = "greater", var.equal = TRUE)
```

#### Poin 3C
Lakukan Uji Statistik (df =2)
```c
library(mosaic)
plotDist(dist = 't', df = 2, col = "Red")
```

#### Poin 3D
Nilai Kritikal
```c
qchisq(p = 0.05, df = 2, lower.tail = FALSE)
```

#### Poin 3E
Keputusan
Teori keputusan adalah teori formal pengambilan keputusan di bawah ketidakpastian. Aksinya adalah : ({a}_{a∈A}) Kemungkinan konsekuensi : ({c}_{c∈C}) (tergantung pada keadaan dan tindakan) Maka keputusan dapat dibuat dengan t.test
Hasil uji terletak di interval nilai kritikal, maka H0 tidak ditolak/sample tidak memiliki cukup bukti yang bertentangan dengan H0.

#### Poin 3F
Kesimpulan
Kesimpulan yang didapatkan yaitu perbedaan rata-rata yang terjadi tidak ada jika dilihat dari uji statistik dan akan ada tetapi tidak signifikan jika dipengaruhi nilai kritikal. sehingga kesimpulannya adalah 95% rata-rata saham di Bali dan di Bandung adalah sama.


### No 4
Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing. Jika : diketahui dataset https://intip.in/datasetprobstat1
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama
#### Poin 4A
Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.
```c
myFile  <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
dim(myFile)
head(myFile)
attach(myFile)

myFile$V1 <- as.factor(myFile$V1)
myFile$V1 = factor(myFile$V1,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih","Kucing Oren"))

class(myFile$V1)

group1 <- subset(myFile, V1=="Kucing Oren")
group2 <- subset(myFile, V1=="Kucing Hitam")
group3 <- subset(myFile, V1=="Kucing Putih")
```

#### Poin 4B
carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil?
```c
bartlett.test(Length~Group, data=dataoneway)
```

#### Poin 4C
Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1.
```c
qqnorm(group1$Length)
qqline(group1$Length)
```

#### Poin 4D
Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan dari H0?
p-value =  0.8054.

#### Poin 4E
Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain?
```c
model1 <- lm(Length~Group, data=myFile)
anova(model1)
TukeyHSD(aov(model1))
```

#### Poin 4F
Visualisasikan data dengan ggplot2
```c
library(ggplot2)
ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)")
```


### No 5
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil Eksperimen. Dengan data tersebut:

#### Poin 5A
Buatlah plot sederhana untuk visualisasi data
```c
install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

GTL <- read_csv("GTL.csv")
head(GTL)

str(GTL)

qplot(x = Temp, y = Light, geom = "point", data = GTL) +
  facet_grid(.~Glass, labeller = label_both)
```

#### Poin 5B
Lakukan uji ANOVA dua arah
```c
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)
```

#### Poin 5C
Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)
```c
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)
```

#### Poin 5D 
Lakukan uji Tukey
```c
tukey <- TukeyHSD(anova)
print(tukey)
```

#### Poin 5E
Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey
```c
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)

cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)

write.csv("GTL_summary.csv")
```


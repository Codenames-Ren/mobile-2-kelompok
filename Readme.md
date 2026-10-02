# Studi Kasus - Tarif Parkir

## Anggota
* Bayu Sukma
* Muhammad Rayhan

## Actor
Actor atau pengguna yang akan menggunakan program ini antara lain :
* Pemilik kendaraan
* Petugas Parkir

## Business Rule 
| Kode  | Business Rule                                                                  |
|-------|--------------------------------------------------------------------------------|
| BR-01 | Durasi parkir dihitung per jam, sisa menit dibulatkan ke atas (minimal 1 jam). |
| BR-02 | Motor: Rp2.000 jam pertama, Rp1.000 untuk setiap jam berikutnya.               |
| BR-03 | Mobil: Rp5.000 jam pertama, Rp3.000 untuk setiap jam berikutnya.               |


## Input, Output dan Abstraction
| Aspek       | Hasil Analisis                                                                 |
|-------------|--------------------------------------------------------------------------------|
| Input       | Jenis kendaraan (motorcycle (motor) / car (mobil)), durasi parkir dalam menit  |
| Output      | Tarif parkir dalam rupiah (Rp)                                                 |
| Abstraction | enum vehicle (motorcycle, car), vehicle type, time (minute & hours), rate      |

## Decomposition
parkingRates
    ├── vehicleType -> bedain jenis kendaraan antara motorcycle (motor) dan car (mobil) dari isi data enum
    ├── time -> hitung durasi perjam. sisa menit dibulatkan keatas (1 jam) [BR-01]
    └── rate -> hitung tarif parkir.
         ├── motorcycle (motor) : 2000 untuk 1 jam pertama + tambahan 1000 untuk tiap jam berikutnya [BR-02]
         └── car (mobil) : 5000 untuk 1 jam pertama + tambahan 3000 untuk tiap jam berikutnya [BR-03]

## Flowchart

              START
                │
                ▼
    Input Jenis Kendaraan, 
    Durasi parkir (menit)
                │
                ▼
    Hitung durasi perjam. setiap sisa 
    menit dibulatkan minimal 1 jam
                │                                             
                ▼                                             
    ┌──────────────────┐   Mobil                              
    │ Jenis Kendaraan? ├──────────► Tarif 1 jam pertama Rp.5000 ─┐
    └───────────┬──────┘            tambahan Rp.3000 tiap jam    │
        Motor   │                   berikutnya                   │
                │                                                |
                ▼                                                │
    Tarif 1 jam pertama Rp.2000                                  │
    tambahan Rp.1000 tiap jam                                    │
            berikutnya                                           │
                │                                                │
                ▼                                                │
    Tampilkan Tarif Parkir ◄─────────────────────────────────────┘
                │            
                ▼
               END

## Skenario
| Kendaraan   | Durasi       | Expected Tarif    |
|-------------|----------------------------------|
| Motor       | 30 Menit     | Rp.2000           |
| Motor       | 150 Menit    | Rp.4000           |
| Mobil       | 60 Menit     | Rp. 5000          |
| Mobil       | 181 Menit    | Rp. 14000         |
# 📝 Laporan Tugas Akhir

**Mata Kuliah**: Sistem Operasi  
**Semester**: Genap / Tahun Ajaran 2024–2025  
**Nama**: Bagus Alldiansyah  
**NIM**: 240202830  
**Modul yang Dikerjakan**:  
`Modul 1 – System Call dan Instrumentasi Kernel`

---

## 📌 Deskripsi Singkat Tugas

**Modul 1 – System Call dan Instrumentasi Kernel**:

Pada modul ini, mahasiswa diminta untuk menambahkan dua buah system call baru ke dalam kernel `xv6-public`. System call tersebut yaitu:

1. `getpinfo(struct pinfo *ptable)`  
   Berfungsi untuk memperoleh informasi dari proses-proses yang sedang aktif, termasuk PID, alokasi memori, dan nama proses.

2. `getReadCount()`  
   Digunakan untuk mengetahui total jumlah pemanggilan fungsi `read()` sejak sistem pertama kali dijalankan.

Tujuan utama dari penambahan ini adalah untuk memahami mekanisme system call dalam kernel serta membangun instrumentasi dasar guna memantau aktivitas sistem.

---

## 🛠️ Rincian Implementasi

1. Menambahkan struktur `struct pinfo` pada file `proc.h` untuk menyimpan informasi proses.
2. Mendefinisikan variabel global `readcount` dalam `sysproc.c` sebagai penghitung pemanggilan `read()`.
3. Mendaftarkan syscall baru (`SYS_getpinfo`, `SYS_getreadcount`) dalam `syscall.h`.
4. Menambahkan entri baru ke dalam array `syscalls[]` pada `syscall.c`.
5. Mendeklarasikan syscall baru di `user.h` serta menambahkan stub-nya di `usys.S`.
6. Mengimplementasikan `sys_getpinfo()` dan `sys_getreadcount()` di `sysproc.c`.
7. Menambahkan perintah `readcount++` pada awal fungsi `sys_read()` dalam `sysfile.c`.
8. Menyusun dua program user-level yaitu `ptest.c` dan `rtest.c` untuk menguji kedua syscall.
9. Mendaftarkan `ptest` dan `rtest` pada bagian `UPROGS` dalam file `Makefile`.

---

## ✅ Pengujian Fungsionalitas

Dua program uji digunakan untuk mengonfirmasi keberhasilan implementasi:

- **ptest**  
  Menguji fungsi `getpinfo()` apakah berhasil menampilkan proses aktif di sistem.

- **rtest**  
  Menguji akurasi `getReadCount()` dalam mencatat pemanggilan `read()`.

---

## 📷 Dokumentasi Uji

Hasil uji coba disimpan dalam folder `screenshot`. Berikut cuplikan contoh output:

### 📍 Contoh Output `ptest`:


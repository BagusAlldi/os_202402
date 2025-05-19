
## Modul: Mengkaitkan Repository GitHub ke PC dengan Git CMD

### 1. **Pastikan Git Sudah Terinstall**
Cek dengan perintah:
```bash
git --version
```
Jika belum terinstall, download dari [git-scm.com](https://git-scm.com/).

---

### 2. **Konfigurasi Identitas Git (Jika Belum)**
```bash
git config --global user.name "Nama Anda"
git config --global user.email "email@domain.com"
```

---

### 3. **Clone Repository GitHub ke PC**
Buka Git CMD, lalu jalankan:
```bash
git clone https://github.com/alvareedais/os-240202852.git
```
Perintah ini akan mengunduh seluruh isi repository ke folder `os-240202852` di direktori aktif.

---
### 5. **Cek Remote Repository**
Pastikan remote sudah benar:
```bash
git remote -v
```
Hasilnya harus menampilkan:
```
origin  https://github.com/alvareedais/os-240202852.git (fetch)
origin  https://github.com/alvareedais/os-240202852.git (push)
```

---

### 6. **Menarik Perubahan Terbaru (Pull)**
Jika ada perubahan terbaru di GitHub, bisa diambil dengan:
```bash
git pull origin master
```
Atau:
```bash
git pull origin main
```
(Sesuaikan dengan nama branch utama di repo.)

---

### 7. **Mengirim Perubahan ke GitHub**
Setelah melakukan perubahan di file lokal:
```bash
git add .
git commit -m "nama file"
git push origin master
```
Atau gunakan `main` jika branch utama bernama `main`.

---

## **Tips Otentikasi**
- Jika diminta username & password, gunakan username GitHub dan Personal Access Token (bukan password GitHub biasa).
- Untuk kemudahan, bisa juga menggunakan SSH (lihat langkah opsional pada jawaban sebelumnya).

---



# **Modul Praktikum: Menghubungkan GitHub ke PC via SSH**

**Tujuan:**  
Mahasiswa dapat mengkoneksikan repository GitHub ke PC menggunakan SSH, serta melakukan commit dan push perubahan ke GitHub.

---

## **1. Persiapkan Git dan SSH Key**

### **A. Pastikan Git Terinstal**

```bash
git --version
```
Jika belum terinstal, instal sesuai sistem operasi Anda.

---

### **B. Konfigurasi Identitas Git**

```bash
git config --global user.name "Nama Anda"
```
```bash
git config --global user.email "email@anda.com"
```
Verifikasi:
```bash
git config --list
```

---

## **2. Buat SSH Key**

### **A. Generate SSH Key**

```bash
ssh-keygen -t ed25519 -C "masukan emailmu"
```
Tekan Enter untuk semua prompt (biarkan password kosong jika tidak ingin).

---

### **B. Tambahkan SSH Key ke Agent**

```bash
eval "$(ssh-agent -s)"
```
```bash
ssh-add ~/.ssh/id_ed25519
```

---

## **3. Tambahkan SSH Key ke GitHub**

### **A. Salin Public Key**

```bash
cat ~/.ssh/id_ed25519.pub
```
Salin seluruh output (mulai dari `ssh-ed25519`).

---

### **B. Tambahkan ke GitHub**

1. **Login ke GitHub**
2. **Settings → SSH and GPG Keys**
3. **Klik New SSH Key**
4. **Tempelkan public key yang sudah dicopy**
5. **Simpan**

---

## **4. Clone Repository via SSH**

### **A. Salin URL SSH Repository**

Di GitHub, pilih repository, klik **Code → SSH**, lalu salin URL (misal: `git@github.com:username/nama-repository.git`).

---

### **B. Clone ke PC**

```bash
git clone git@github.com:username/nama-repository.git
cd nama-repository
```

---

## **5. Proses Kerja, Commit, dan Push**

### **A. Buat atau Ubah File**

Buat atau edit file di dalam folder repository.

---

### **B. Tambahkan ke Staging**

```bash
git add .
```
atau
```bash
git add nama_file
```

---

### **C. Commit Perubahan**

```bash
git commit -m "Deskripsi perubahan"
```

---

### **D. Push ke GitHub**

```bash
git push origin main
```
(Ganti `main` dengan nama branch Anda jika berbeda)

---

## **6. Ringkasan Proses SSH**

| Langkah                | Perintah/Prosedur                                  |
|------------------------|----------------------------------------------------|
| Instalasi Git          | `git --version`                                    |
| Konfigurasi Identitas  | `git config --global user.name/email`              |
| Generate SSH Key       | `ssh-keygen -t ed25519 -C "email@anda.com"`        |
| Tambah Key ke GitHub   | Tempelkan isi `~/.ssh/id_ed25519.pub` ke GitHub    |
| Clone via SSH          | `git clone git@github.com:username/nama-repo.git`  |
| Tambah ke Staging      | `git add .` atau `git add nama_file`               |
| Commit                 | `git commit -m "pesan"`                            |
| Push                   | `git push origin main`                             |

---



# Tugas Registrant App - Pertemuan 5
Nama: Larry Polin Anugrah

NIM: 2409116026

Prodi: Sistem Informasi

Kelas: A'2024

# Halaman Form Registrasi
Halaman form registrasi dibagi menjadi 3 tahapan dengan menggunakan widget `Stepper`

## 1. Data Akun
Pada tahap pertama form registrasi, yaitu **Data Akun**, pengguna akan diminta untuk mengisi beberapa informasi dasar, seperti **nama lengkap**, **email**, dan **password**

<img width="956" height="662" alt="image" src="https://github.com/user-attachments/assets/4366dfb5-a9e9-452a-95e8-1acf90ba9fd4" />

Setiap field pada tahap pertama menggunakan widget `TextFormField` yang dilengkapi dengan validasi input untuk memastikan bahwa data yang diinputkan sudah sesuai sebelum melanjutkan ke tahap selanjutnya.

<img width="956" height="743" alt="image" src="https://github.com/user-attachments/assets/aac71c30-b16b-40f7-b4f2-8281a5b328d6" />

Ketika pengguna menginputkan data dengan tidak benar, maka akan muncul pesan error seperti:
* Nama wajib diisi dengan minimal 3 karakter
* Email wajib diisi dengan format email yang valid (@gmail.com)
* Password wajib diisi dengan minimal 8 karakter.

<img width="953" height="739" alt="image" src="https://github.com/user-attachments/assets/4513847e-a75c-4a88-b2c7-e7d0e7a875bf" />
  
Jika pengguna menginput data di setiap field dengan benar dan sesuai, pengguna dapat melanjutkan ke tahap selanjutnya, yaitu **Data Pribadi** dengan menekan tombol **Continue**.

## 2. Data Pribadi
Pada tahap kedua, yaitu **Data Pribadi**, pengguna diminta untuk mengisi data pribadi mereka, seperti **jenis kelamin**, **program studi**, dan **tanggal lahir**.

<img width="956" height="767" alt="image" src="https://github.com/user-attachments/assets/600adbe4-0b84-428c-b30b-7696d6f30db5" />

Setiap field pada tahap kedua ini menggunakan widget yang berbeda-beda, seperti:
* Field jenis kelamin menggunakan widget `RadioListTile`
* Field program studi menggunakan widget `DropdownButtonFormField`
* Field tanggal lahir menggunakan DatePicker yang dibungkus dengan widget `TextFormField`

Lalu jika pengguna tidak mengisi ketiga field tersebut, pesan error pada setiap field akan muncul dan meminta pengguna mengisi field tersebut.

<img width="959" height="763" alt="image" src="https://github.com/user-attachments/assets/677885df-b8e0-4e7d-a6bb-641321b0ec9f" />

Ketika pengguna mengisi field program studi, akan muncul drop down list program studi yang terdaftar di dalam aplikasi, seperti teknik informatika, sistem informasi, teknik komputer, data science, dan desain komunikasi visual.

<img width="956" height="736" alt="image" src="https://github.com/user-attachments/assets/aa59c7bb-9e60-4090-8020-889352bb25f6" />

Kemudian pada field tanggal lahir akan muncul sebuah pop up yang meminta pengguna untuk memilih tanggal lahir (Read Only) mereka tanpa perlu mengetik, hal ini bertujuan untuk mencegah terjadinya error akibat dari perbedaan format.

## 3. Konfirmasi
<img width="957" height="551" alt="image" src="https://github.com/user-attachments/assets/c5df1015-4eb6-4edb-840a-703c19d1b546" />

Pada tahap ketiga, yaitu **Kofirmasi** berisikan pernyataan persetujuan pengguna dengan syarat dan ketentuan yang berlaku. Selain itu, pada tahap ini juga pengguna diminta untuk memastikan semua data yang telah diisi sebelumnya sudah benar.

Pada field persetujuan tersebut menggunakan widget `CheckboxListTile` yang digunakan untuk menyatakan bahwa pengguna telah menyetujui syarat dan ketentuan yang ada. Penggunaan checbox ini berfungsi sebagai validasi sebelum proses registrasi diselesaikan. 

### Notifikasi Reigstrasi Berhasil
<img width="960" height="674" alt="image" src="https://github.com/user-attachments/assets/3c6fb60e-0ad6-4329-91f1-6fdcee0a450c" />

Setelah pengguna berhasil menyelesaikan pengisian form pada setiap tahapan, sistem akan menampilkan notifikasi bahwa **Registrasi Berhasil**. Dalam notifikasi ini, terdapat dua pilihan menu bagi pengguna, seperti **Daftar Lagi** untuk mendaftar kembali akun baru atau **Lihat Daftar** untuk melihat daftar akun yang telah berhasil registrasi.

# Halaman Daftar Pendaftar
Halaman daftar pendaftar atau daftar peserta, berisikan daftar-daftar informasi pendaftar yang berhasil melakukan registrasi. Pada halamaan ini terdapat dua fitur tambahan seperti fitur **Searching** dan **Edit**

<img width="956" height="905" alt="image" src="https://github.com/user-attachments/assets/7c9a187f-9a11-4983-9e31-7852d68c4e67" />

Informasi yang ditampilkan pada daftar ini hanya menampilkan sebagian informasi seperti nama lengkap, email, dan program studi pendaftar saja.

## Membaca profil pendaftar
<img width="955" height="666" alt="image" src="https://github.com/user-attachments/assets/7d1b8a85-39d9-472a-9812-7894a17e3f70" />

Jika pengguna memilih daftar peserta yang ada, sistem akan menampilkan informasi peserta/pendaftar dengan lebih detail, seperti nama lengkap, gender, program studi, dan tanggal lahir peserta

### Fitur Seaching
Fitur searching pada halaman ini dapat mencari daftar peserta berdasarkan tiga kategori informasi, seperti nama, email, dan program studi.
  * Berdasarkan nama
    <img width="958" height="336" alt="image" src="https://github.com/user-attachments/assets/005c825e-8d29-4482-a099-d0da7ea68958" />

  * Berdasarkan Email
    <img width="957" height="381" alt="image" src="https://github.com/user-attachments/assets/b73bb7ea-93b6-4c22-8232-133d67564f2b" />

  * Berdasarkan Program Studi
    <img width="953" height="354" alt="image" src="https://github.com/user-attachments/assets/edbcb8d9-47d1-4e74-b459-6e046a41fde4" />

### Fitur Edit
Fitur edit pada halaman ini digunakan untuk memperbarui data peserta, dengan tujuan untuk memperbaiki kesalahan data maupun memperbarui data yang sudah ada. Dalam hal ini saya memperbarui nama lengkap polin menjadi "Larry Polin Anugrah"

* Sebelum edit
  <img width="954" height="351" alt="image" src="https://github.com/user-attachments/assets/0ae9b6ce-dd43-47d4-baae-1eec7f0dd3cb" />

* Edit peserta
  <img width="949" height="660" alt="image" src="https://github.com/user-attachments/assets/081d3802-d13a-4a4a-bea1-d0fd3e0a904a" />

* Sesudah edit
  <img width="953" height="349" alt="image" src="https://github.com/user-attachments/assets/1ba57356-44b5-4f8c-939d-5e864f6ef2ef" />

## Hapus Pendaftar
Selain dapat membaca, mencari dan memperbarui terdapat juga fitur untuk menghapus pendaftar dari daftar peserta jika sewaktu-waktu terdapat peserta yang tidak jadi mendaftar. Dalam hal ini, saya menghapus pendaftar yang bernama "Maestro Sarira"

* Sebelum dihapus
  <img width="954" height="349" alt="image" src="https://github.com/user-attachments/assets/f4becd78-b9ec-4d86-88a5-cd64682708e6" />

* Saat dihapus
  <img width="952" height="599" alt="image" src="https://github.com/user-attachments/assets/2737bfbd-008e-44f1-bdf4-ba8aa1743568" />

* Sesudah dihapus
  <img width="960" height="416" alt="image" src="https://github.com/user-attachments/assets/a4816c55-8a12-41b6-a3a6-33b8e79c8868" />





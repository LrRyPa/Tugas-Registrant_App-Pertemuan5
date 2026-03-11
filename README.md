# Tugas Registrant App - Pertemuan 5
Nama: Larry Polin Anugrah

NIM: 2409116026

Prodi: Sistem Informasi

Kelas: A'2024

# Halaman Form Registrasi
Halaman form registrasi dibagi menjadi 3 tahapan dengan menggunakan widget `Stepper`

## 1. Data Akun
Pada tahap pertama form registrasi, yaitu **Data Akun**, pengguna akan diminta untuk mengisi beberapa informasi dasar, seperti **nama lengkap**, **email**, dan **password**

<img width="956" height="662" alt="Screenshot 2026-03-11 092304" src="https://github.com/user-attachments/assets/8bd3b317-eaf7-44cd-8361-6fb89f37558a" />

Setiap field pada tahap pertama menggunakan widget `TextFormField` yang dilengkapi dengan validasi input untuk memastikan bahwa data yang diinputkan sudah sesuai sebelum melanjutkan ke tahap selanjutnya.

<img width="956" height="743" alt="Screenshot 2026-03-11 092406" src="https://github.com/user-attachments/assets/51b57d57-d752-435f-bc2f-c378d5f7f087" />

Ketika pengguna menginputkan data dengan tidak benar, maka akan muncul pesan error seperti:
* Nama wajib diisi dengan minimal 3 karakter
* Email wajib diisi dengan format email yang valid (@gmail.com)
* Password wajib diisi dengan minimal 8 karakter.

<img width="959" height="667" alt="Screenshot 2026-03-11 084514" src="https://github.com/user-attachments/assets/fdd13dca-228b-4983-8946-547f398be09c" />

Jika pengguna menginput data di setiap field dengan benar dan sesuai, pengguna dapat melanjutkan ke tahap selanjutnya, yaitu **Data Pribadi** dengan menekan tombol **Continue**.

## 2. Data Pribadi
Pada tahap kedua, yaitu **Data Pribadi**, pengguna diminta untuk mengisi data pribadi mereka, seperti **jenis kelamin**, **program studi**, dan **tanggal lahir**.

<img width="956" height="767" alt="Screenshot 2026-03-11 092833" src="https://github.com/user-attachments/assets/3030cd7c-8c70-4f5e-b0b9-14de3b0ee542" />

Setiap field pada tahap kedua ini menggunakan widget yang berbeda-beda, seperti:
* Field jenis kelamin menggunakan widget `RadioListTile`
* Field program studi menggunakan widget `DropdownButtonFormField`
* Field tanggal lahir menggunakan DatePicker yang dibungkus dengan widget `TextFormField`

Lalu jika pengguna tidak mengisi ketiga field tersebut, pesan error pada setiap field akan muncul dan meminta pengguna mengisi field tersebut.

<img width="959" height="763" alt="Screenshot 2026-03-11 093342" src="https://github.com/user-attachments/assets/500ede7e-77a1-474b-90df-5bd61d9af811" />

Ketika pengguna mengisi field program studi, akan muncul drop down list program studi yang terdaftar di dalam aplikasi, seperti teknik informatika, sistem informasi, teknik komputer, data science, dan desain komunikasi visual.

<img width="956" height="736" alt="Screenshot 2026-03-11 093809" src="https://github.com/user-attachments/assets/65e23305-d3ac-453f-88f1-756a4157cc55" />

Kemudian pada field tanggal lahir akan muncul sebuah pop up yang meminta pengguna untuk memilih tanggal lahir (Read Only) mereka tanpa perlu mengetik, hal ini bertujuan untuk mencegah terjadinya error akibat dari perbedaan format.

## 3. Konfirmasi
<img width="957" height="551" alt="Screenshot 2026-03-11 094613" src="https://github.com/user-attachments/assets/bf506964-7214-4a17-b900-0e4f6784657a" />

Pada tahap ketiga, yaitu **Kofirmasi** berisikan pernyataan persetujuan pengguna dengan syarat dan ketentuan yang berlaku. Selain itu, pada tahap ini juga pengguna diminta untuk memastikan semua data yang telah diisi sebelumnya sudah benar.

Pada field persetujuan tersebut menggunakan widget `CheckboxListTile` yang digunakan untuk menyatakan bahwa pengguna telah menyetujui syarat dan ketentuan yang ada. Penggunaan checbox ini berfungsi sebagai validasi sebelum proses registrasi diselesaikan. 

### Notifikasi Reigstrasi Berhasil
<img width="960" height="674" alt="Screenshot 2026-03-11 095159" src="https://github.com/user-attachments/assets/f62a7a2a-c932-487f-9993-7bfe60440891" />

Setelah pengguna berhasil menyelesaikan pengisian form pada setiap tahapan, sistem akan menampilkan notifikasi bahwa **Registrasi Berhasil**. Dalam notifikasi ini, terdapat dua pilihan menu bagi pengguna, seperti **Daftar Lagi** untuk mendaftar kembali akun baru atau **Lihat Daftar** untuk melihat daftar akun yang telah berhasil registrasi.

# Halaman Daftar Pendaftar
Halaman daftar pendaftar atau daftar peserta, berisikan daftar-daftar informasi pendaftar yang berhasil melakukan registrasi. Pada halamaan ini terdapat dua fitur tambahan seperti fitur **Searching** dan **Edit**

<img width="956" height="905" alt="Screenshot 2026-03-11 095618" src="https://github.com/user-attachments/assets/3c1a1d1f-fde0-4cdb-9f00-4f98557e683f" />

Informasi yang ditampilkan pada daftar ini hanya menampilkan sebagian informasi seperti nama lengkap, email, dan program studi pendaftar saja.

## Membaca profil pendaftar
<img width="955" height="666" alt="Screenshot 2026-03-11 100816" src="https://github.com/user-attachments/assets/cae18cc4-f5ca-4232-b1b0-f4213af655d5" />

Jika pengguna memilih daftar peserta yang ada, sistem akan menampilkan informasi peserta/pendaftar dengan lebih detail, seperti nama lengkap, gender, program studi, dan tanggal lahir peserta

### Fitur Seaching
Fitur searching pada halaman ini dapat mencari daftar peserta berdasarkan tiga kategori informasi, seperti nama, email, dan program studi.
  * Berdasarkan nama
    <img width="958" height="336" alt="Screenshot 2026-03-11 100409" src="https://github.com/user-attachments/assets/d9d83202-ff87-47f5-959a-0869f7448519" />

  * Berdasarkan Email
    <img width="957" height="381" alt="Screenshot 2026-03-11 100716" src="https://github.com/user-attachments/assets/95be1385-ddce-4cdd-b396-4dc565adf765" />
    
  * Berdasarkan Program Studi
    <img width="953" height="354" alt="Screenshot 2026-03-11 100636" src="https://github.com/user-attachments/assets/817cfdbc-b5ba-431b-bb57-ce31ae56a30b" />

### Fitur Edit
Fitur edit pada halaman ini digunakan untuk memperbarui data peserta, dengan tujuan untuk memperbaiki kesalahan data maupun memperbarui data yang sudah ada. Dalam hal ini saya memperbarui nama lengkap polin menjadi "Larry Polin Anugrah"

* Sebelum edit
  <img width="954" height="351" alt="Screenshot 2026-03-11 101320" src="https://github.com/user-attachments/assets/bde27e75-fa18-4528-980c-28018186171d" />

* Edit peserta
  <img width="949" height="660" alt="Screenshot 2026-03-11 101107" src="https://github.com/user-attachments/assets/a213318e-5ee6-46b9-ba1e-cbb2a0b1b8ab" />

* Sesudah edit
  <img width="953" height="349" alt="Screenshot 2026-03-11 101228" src="https://github.com/user-attachments/assets/005ef572-75a2-40e5-b529-57342e096e4d" />

## Hapus Pendaftar
Selain dapat membaca, mencari dan memperbarui terdapat juga fitur untuk menghapus pendaftar dari daftar peserta jika sewaktu-waktu terdapat peserta yang tidak jadi mendaftar. Dalam hal ini, saya menghapus pendaftar yang bernama "Maestro Sarira"

* Sebelum dihapus
  <img width="954" height="349" alt="Screenshot 2026-03-11 102046" src="https://github.com/user-attachments/assets/ad4319cf-f2a7-4e3f-8045-8a5331efa597" />

* Saat dihapus
  <img width="952" height="599" alt="Screenshot 2026-03-11 101817" src="https://github.com/user-attachments/assets/5b318774-a053-4a7d-acce-9e055a663877" />

* Sesudah dihapus
  <img width="960" height="416" alt="Screenshot 2026-03-11 102128" src="https://github.com/user-attachments/assets/8170fe95-93d1-40cc-8078-cd434b8b62ef" />






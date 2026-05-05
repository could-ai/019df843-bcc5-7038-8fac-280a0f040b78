# Tugas Etika dan Tanggung Jawab Profesi Hukum

Sebuah aplikasi Flutter yang menyajikan dokumen analisis kasus pelanggaran kode etik profesi hukum secara digital. Didesain khusus untuk memenuhi kebutuhan tugas mahasiswa semester 6 jurusan Hukum dengan format yang rapi, profesional, dan mudah dibaca (setara dengan 2 halaman Word).

## Ikhtisar Produk

Aplikasi ini berfungsi sebagai "Document Reader" interaktif yang memuat studi kasus nyata mengenai etika profesi hukum di Indonesia. Contoh yang diangkat difokuskan pada satu kasus utama: **Kasus Advokat Menyuap Hakim (OC Kaligis - 2015)** sesuai dengan spesifikasi tugas. 

Fitur utama aplikasi:
- **Tampilan Dokumen Profesional**: Desain yang bersih dengan batas lebar maksimal agar nyaman dibaca di layar lebar (Web/Desktop) maupun di perangkat mobile.
- **Tipografi Responsif**: Menggunakan hierarki font yang jelas untuk membedakan judul, subjudul, dan isi paragraf.
- **Tabel Pelanggaran Etik**: Menampilkan pelanggaran berdasarkan Kode Etik Advokat Indonesia, UU Advokat, dan Hukum Pidana secara terstruktur dengan baris tabel yang dapat dibedakan (alternating row colors).
- **Timeline Resolusi Kasus**: Menampilkan proses penyelesaian sistemik dari Tahap 1 (Penangkapan KPK) hingga Tahap 4 (Sanksi Profesi PERADI) dalam bentuk kartu *timeline* visual.

## Alur Pengguna

1. Pengguna membuka aplikasi dan akan langsung melihat halaman dokumen (Tugas Etika Profesi Hukum).
2. Pengguna dapat menggulir ke bawah untuk membaca latar belakang identitas penyusun tugas.
3. Pengguna meninjau **Duduk Perkara** kasus suap advokat OC Kaligis.
4. Pengguna mempelajari pasal-pasal yang dilanggar melalui **Tabel Pelanggaran Kode Etik**.
5. Pengguna menelusuri **Rekomendasi Penyelesaian Sistemik** yang disajikan dalam antarmuka berbasis *timeline*.

## Tech Stack

- **Framework**: Flutter (mendukung Web, iOS, Android, macOS, Windows, Linux)
- **Bahasa**: Dart
- **UI Design**: Material 3 (dengan skema warna profesional berwarna dasar *Dark Blue*)

## Cara Menjalankan Aplikasi

Pastikan Flutter telah terinstal di sistem Anda.

1. Lakukan `git clone` pada repositori ini.
2. Jalankan perintah `flutter pub get` untuk mengunduh dependensi (jika ada).
3. Jalankan aplikasi menggunakan perintah `flutter run` di terminal Anda.
4. (Opsional) Untuk menjalankan di web, gunakan `flutter run -d chrome`.

---

## Tentang CouldAI

Aplikasi ini dibuat menggunakan [CouldAI](https://could.ai), sebuah AI app builder untuk aplikasi lintas platform (cross-platform). CouldAI dapat mengubah prompt teks Anda menjadi aplikasi native iOS, Android, Web, dan Desktop yang nyata melalui agen AI otonom yang merancang arsitektur, membangun, menguji, melakukan *deploy*, dan melakukan iterasi pada aplikasi agar siap masuk ke tahap produksi.

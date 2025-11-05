# football_shop_mobile
PBP moment

1. JELASKAN APA ITU WIDGET TREE PADA FLUTTER DAN BAGAIMANA HUBUNGAN PARENT-CHILD BEKERJA

Widget Tree adalah struktur hierarkis yang menggambarkan hubungan antara widget-widget 
dalam aplikasi Flutter. Setiap aplikasi Flutter adalah sebuah pohon widget dimana 
widget-widget tersusun dalam hubungan parent-child.

Hubungan Parent-Child:
- Widget Parent mengontrol layout, constraints, dan properties widget child
- Widget Child mewarisi constraints dan context dari parentnya
- Parent dapat memiliki multiple children (seperti Column, Row, Stack)
- Child dapat menjadi parent untuk widget lainnya
- Perubahan pada parent dapat mempengaruhi seluruh subtree di bawahnya

2. SEBUTKAN SEMUA WIDGET YANG DIGUNAKAN DAN JELASKAN FUNGSINYA

-MaterialApp - Widget root yang menyediakan material design theme dan konfigurasi aplikasi
-Scaffold - Struktur dasar halaman material design (appBar, body, floatingActionButton)
-AppBar - Bagian atas halaman yang menampilkan judul dan action buttons
-Padding - Memberikan jarak (padding) di sekitar child widget
-Column - Menyusun widget-widget children secara vertikal
-Material - Widget material design dengan elevation, color, dan shape
-InkWell - Memberikan efek ripple (tapis) ketika ditekan (onTap)
-Container - Kotak container untuk layout, padding, dan styling
-Row - Menyusun widget-widget children secara horizontal
-Icon - Menampilkan ikon material design
-Text - Menampilkan teks dengan styling tertentu
-SizedBox - Memberikan jarak tetap (spacing) antara widget
-ScaffoldMessenger - Untuk menampilkan SnackBar
  
3. APA FUNGSI DARI WIDGET MATERIALAPP? MENGAPA SERING DIGUNAKAN SEBAGAI WIDGET ROOT?

Fungsi MaterialApp:
- Menyediakan framework material design
- Mengatur tema (theme) aplikasi
- Mengatur navigasi dan routing
- Menyediakan localization (internasionalisasi)
- Mengatur title aplikasi
- Menyediakan context untuk widget-widget material

Mengapa sebagai root widget:
- Memberikan foundation yang lengkap untuk aplikasi material design
- Menyediakan Navigator untuk perpindahan halaman
- Menyediakan Theme yang konsisten untuk seluruh aplikasi
- Required oleh banyak widget material seperti Scaffold, AppBar, dll

4. JELASKAN PERBEDAAN STATELESSWIDGET VS STATEFULWIDGET. KAPAN MEMILIH SALAH SATUNYA?

STATELESSWIDGET:
- Tidak memiliki state (data yang bisa berubah)
- Immutable - properties bersifat final
- Build sekali - UI tidak berubah setelah dibuild
- Contoh: Text, Icon, AppBar

STATEFULWIDGET:
- Memiliki state - data bisa berubah selama runtime
- Mutable - bisa update UI ketika state berubah
- Build multiple times - rebuild ketika state berubah
- Contoh: Form, Counter, Animation

PEMILIHAN:
- Gunakan StatelessWidget ketika:
  * UI statis/tidak berubah
  * Hanya menampilkan data fixed
  * Tidak ada interaksi yang mengubah tampilan

- Gunakan StatefulWidget ketika:
  * UI perlu update secara dinamis
  * Ada form input
  * Ada animasi
  * Data berubah dari user interaction

Dalam Tugas 7: Kami menggunakan StatelessWidget karena tombol-tombol hanya menampilkan 
SnackBar tanpa mengubah state UI.

5. APA ITU BUILDCONTEXT DAN MENGAPA PENTING DI FLUTTER? PENGGUNAANNYA DI METODE BUILD?

BuildContext adalah handle ke lokasi sebuah widget dalam widget tree. 
Ini seperti "alamat" widget dalam hierarki.

Mengapa penting:
- Mengidentifikasi posisi widget dalam tree
- Mengakses inherited widgets (seperti Theme, MediaQuery)
- Untuk navigation (Navigator.of(context))
- Untuk showing dialogs dan SnackBars

6. JELASKAN KONSEP "HOT RELOAD" DI FLUTTER DAN BEDA DENGAN "HOT RESTART"

HOT RELOAD:
- Mempertahankan state aplikasi
- Sangat cepat (1-2 detik)
- Hanya update code yang diubah
- Ideal untuk development UI dan styling
- Shortcut: 'r' di terminal atau Ctrl+S di IDE

HOT RESTART:
- Reset state aplikasi ke awal
- Lebih lambat (10-30 detik)
- Rebuild seluruh aplikasi
- Digunakan ketika: perubahan structural atau initState

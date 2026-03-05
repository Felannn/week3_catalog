### Flow Saat User Tekan “TAMBAH”

Alur:

1. User menekan tombol TAMBAH di UI.
2. Tombol tersebut memanggil method addItem() pada Provider.
3. Provider tidak menyimpan data langsung. Ia meneruskan permintaan ke Repository untuk memproses penambahan item.
4. Setelah proses selesai, kontrol kembali ke Provider.
5. Provider menjalankan notifyListeners() sebagai sinyal bahwa state berubah.
6. Widget yang mendengarkan Provider menerima notifikasi tersebut.
7. Flutter melakukan rebuild pada bagian UI yang terdampak.
8. Tampilan Cart ter-update dan jumlah item bertambah.

### Clean Architecture

```
lib/
├── main.dart # Entry point aplikasi
│
├── core/ # Utilitas & konfigurasi global
│ ├── routes/ # Routing konfigurasi
│ │ └── app_router.dart
│
├── features/ # Fitur-fitur aplikasi
│ └── cart/ # Fitur: Cart/Keranjang
│ ├── data/ # DATA LAYER
│ │ └── repositories/ # Implementasi repository
│ │ └── cart_repository_impl.dart
│ │
│ ├── domain/ # DOMAIN LAYER
│ │ ├── entities/ # Entity / objek bisnis murni
│ │ │ └── product.dart
│ │ └── repositories/ # Kontrak (abstract) repository
│ │ └── cart_repository.dart
│ │
│ └── presentation/ # PRESENTATION LAYER
│ ├── providers/ # Provider / State Notifier
│ │ └── cart_provider.dart
│ ├── pages/ # Halaman aplikasi
│ │ ├── catalog_page.dart
│ │ └── cart_page.dart
│ └── widgets/ # Widget komponen kecil
│ └── add_button_widget.dart
│
└── injection.dart # Dependency Injection setup
```

### View
<p align="center">
  <img src="https://github.com/user-attachments/assets/9d7ff00b-e76c-4962-841a-2bfc494c0f93" width="300"/>
  <img src="https://github.com/user-attachments/assets/c26ffc95-1be1-4c43-bf60-55258f4b90dd" width="300"/>
</p>

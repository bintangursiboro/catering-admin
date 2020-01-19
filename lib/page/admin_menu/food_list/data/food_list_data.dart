class MenuMakanan {
  String fotoMakanan;
  num hargaAwal;
  String namaMakanan;
  num id;
  String tipeCatering;

  MenuMakanan.fromJson(Map<String, dynamic> json) {
    if (json['foto_makanan'] != null) fotoMakanan = json['gambar'] ?? '';
    if (json['harga_awal'] != null) hargaAwal = json['harga'] ?? 0;
    if (json['nama_makanan'] != null) namaMakanan = json['nama'] ?? '';
    if (json['id'] != null) id = json['id'] ?? -1;
    if (json['tipe_catering'] != null)
      tipeCatering = json['tipe_catering'] ?? '';
  }
}

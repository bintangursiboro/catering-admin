class MenuMakanan {
  String fotoMakanan;
  num hargaAwal;
  String namaMakanan;
  num id;

  MenuMakanan({
    this.namaMakanan,
    this.fotoMakanan,
    this.hargaAwal,
    this.id,
  });

  MenuMakanan.fromJson(Map<String, dynamic> json) {
    if (json['foto_makanan'] != null) fotoMakanan = json['foto_makanan'] ?? '';
    if (json['harga_awal'] != null) hargaAwal = json['harga_awal'] ?? 0;
    if (json['nama_makanan'] != null) namaMakanan = json['nama_makanan'] ?? '';
    if (json['id'] != null) id = json['id'] ?? -1;
  }

  factory MenuMakanan.parseFromFirestore(Map<String, dynamic> document) {
    return MenuMakanan(
      namaMakanan: document['nama_makanan'] ?? '',
      fotoMakanan: document['foto_makanan'] ?? '',
      hargaAwal: document['harga_awal'] ?? 0,
      id: document['id'] ?? -1,
    );
  }
}

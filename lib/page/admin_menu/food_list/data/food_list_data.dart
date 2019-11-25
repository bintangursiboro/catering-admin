class FoodListData {
  String gambar;
  num harga;
  String nama;

  FoodListData.fromJson(Map<String, dynamic> json) {
    if (json['gambar'] != null) gambar = json['gambar'] ?? '';
    if (json['harga'] != null) harga = json['harga'] ?? 0;
    if (json['nama'] != null) nama = json['nama'] ?? '';
  }
}

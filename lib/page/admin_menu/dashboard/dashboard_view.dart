import 'package:catering_admin/widget/custom_widget.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  final VoidCallback onPressedTambahMenu;
  final TextEditingController namaMenuMakananController;
  final TextEditingController hargaAwalController;
  final Function(String) onChangedHargaAwal;
  final Function onEditingComplete;
  final Function onTapHargaAwal;
  final Function(String) onChangedMenuMakanan;
  final Function onOpenCamera;

  DashboardView({
    this.onPressedTambahMenu,
    this.hargaAwalController,
    this.namaMenuMakananController,
    this.onChangedHargaAwal,
    this.onEditingComplete,
    this.onTapHargaAwal,
    this.onChangedMenuMakanan,
    this.onOpenCamera,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: 'Nama Menu Makanan',
              alignLabelWithHint: true,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.lightGreen),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
            controller: namaMenuMakananController,
            onChanged: onChangedMenuMakanan,
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Harga Awal',
              alignLabelWithHint: true,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.lightGreen),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
            keyboardType: TextInputType.number,
            onEditingComplete: onEditingComplete,
            controller: hargaAwalController,
            onTap: onTapHargaAwal,
          ),
          SizedBox(
            height: 10,
          ),
          Text('Upload Foto Makanan'),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            child: ListMenuFoto(
              listImage: [],
              openCamera: () {
                onOpenCamera();
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: CustomButton(
              buttonText: 'Tambah Menu',
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }

  // void _showBottomSheetAddMenu(BuildContext context) {
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return Container(
  //           child: Wrap(
  //             children: <Widget>[
  //               ListTile(
  //                 leading: Icon(Icons.music_note),
  //                 title: Text('Music'),
  //                 onTap: () {},
  //               ),
  //               ListTile(
  //                 leading: Icon(Icons.videocam),
  //                 title: Text('Video'),
  //                 onTap: () {},
  //               ),
  //             ],
  //           ),
  //         );
  //       });
  // }
}

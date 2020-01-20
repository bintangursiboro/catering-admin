import 'package:catering_admin/page/add_food/add_food.dart';
import 'package:catering_admin/widget/custom_widget.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  final VoidCallback onPressedTambahMenu;

  DashboardView({
    this.onPressedTambahMenu,
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
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Tipe Catering',
              alignLabelWithHint: true,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.lightGreen),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
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

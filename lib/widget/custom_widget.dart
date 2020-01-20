import 'package:catering_admin/page/admin_menu/food_list/data/food_list_data.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final GestureTapCallback onPressed;
  final String buttonText;

  CustomButton({
    @required this.onPressed,
    @required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))),
      fillColor: Colors.lightBlue,
      splashColor: Colors.lightBlueAccent,
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.add,
              color: Colors.white,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              buttonText,
              maxLines: 1,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class GridMenu extends StatelessWidget {
  final MenuMakanan menuMakanan;

  GridMenu({
    this.menuMakanan,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Image.network(menuMakanan.fotoMakanan),
            ),
            Text(menuMakanan.namaMakanan)
          ],
        ),
      ),
    );
  }
}

Widget showLoadingProgress() {
  return Container(
    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
    child: Column(
      children: <Widget>[
        CircularProgressIndicator(),
        Text(
          'Memuat Data, Mohon Tunggu...',
          style: TextStyle(
            color: Colors.lightBlue,
          ),
        )
      ],
    ),
  );
}

Widget showErrorTextWidget() {
  return Container(
    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
    child: Center(
      child: Text(
        'Maaf Terjadi Kesalahan',
        style: TextStyle(color: Colors.lightBlue),
      ),
    ),
  );
}

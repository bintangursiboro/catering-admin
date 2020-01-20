import 'package:flutter/material.dart';

class AddFoodView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
      width: double.infinity,
      height: double.infinity,
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
        ],
      ),
    );
  }
}

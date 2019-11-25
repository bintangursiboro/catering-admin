import 'package:flutter/material.dart';

class AddFoodView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Menu'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Flex(
              direction: null,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Tambah menu'),
            ),
          ],
        ),
      ),
    );
  }
}

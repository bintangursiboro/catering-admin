import 'package:flutter/material.dart';

class AddFood extends StatelessWidget {
  static const String PATH = '/add-food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Food'),
      ),
    );
  }
}

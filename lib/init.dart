import 'package:catering_admin/app.dart';
import 'package:flutter/material.dart';

class Init extends StatelessWidget {
  Future init() async {}

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return App();
      },
      future: init(),
    );
  }
}

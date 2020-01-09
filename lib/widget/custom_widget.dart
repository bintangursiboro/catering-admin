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
      shape: const StadiumBorder(),
      fillColor: Colors.lightBlue,
      splashColor: Colors.lightBlueAccent,
      child: Padding(
        padding: EdgeInsets.all(10.0),
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

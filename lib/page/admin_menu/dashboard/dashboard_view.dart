import 'package:catering_admin/page/add_food/add_food.dart';
import 'package:catering_admin/widget/custom_widget.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Center(
            child: CustomButton(
              buttonText: 'Tambah Menu',
              onPressed: () {
                _showBottomSheetAddMenu(context);
              },
            ),
          )
        ],
      ),
    );
  }

  void _showBottomSheetAddMenu(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: Wrap(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.music_note),
                  title: Text('Music'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.videocam),
                  title: Text('Video'),
                  onTap: () {},
                ),
              ],
            ),
          );
        });
  }
}

import 'dart:typed_data';

import 'package:catering_admin/page/admin_menu/dashboard/bloc/dashboard_bloc.dart';
import 'package:catering_admin/page/admin_menu/dashboard/bloc/dashboard_event.dart';
import 'package:catering_admin/page/admin_menu/dashboard/bloc/dashboard_state.dart';
import 'package:catering_admin/page/admin_menu/dashboard/dashboard_view.dart';
import 'package:catering_admin/utility/formatter/formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  TextEditingController _namaMakananController = TextEditingController();
  TextEditingController _hargaAwalController = TextEditingController();
  double _hargaAwal = 0;
  String _namaMenuMakanan;
  DashboardBloc _bloc;
  VoidCallback _tambahMenu = () {};
  List<Uint8List> listImage = [];

  @override
  void initState() {
    super.initState();
    _bloc = DashboardBloc();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: _bloc,
      child: BlocBuilder(
        bloc: _bloc,
        builder: (BuildContext context, DashboardState state) {
          return DashboardView(
            hargaAwalController: _hargaAwalController,
            namaMenuMakananController: _namaMakananController,
            onChangedHargaAwal: _onChangedHargaAwal,
            onPressedTambahMenu: _tambahMenu,
            onOpenCamera: _onOpenCamera,
            listImage: listImage,
          );
        },
      ),
      listener: (BuildContext context, DashboardState state) {
        if (state is DashboardPhotoLoaded) {
          setState(() {
            listImage = state.listImage;
          });
        }
      },
    );
  }

  _onOpenCamera() {
    _bloc.add(OpenCamera());
  }

  _onChangedHargaAwal(String hargaAwal) {
    FlutterMoneyFormatter formatter = formatStringToCurrency(hargaAwal);
    setState(() {
      _hargaAwal = formatter.amount;
      _hargaAwalController.text = formatter.output.symbolOnLeft;
    });
  }

  _onEditingHargaAwalComplete() {
    print('finish editing..');
    if (_hargaAwalController.text.isNotEmpty) {
      setState(() {
        _hargaAwal = double.parse(_hargaAwalController.text);
        _hargaAwalController.text =
            formatStringToCurrency(_hargaAwalController.text)
                .output
                .symbolOnLeft;
      });
    }
  }

  _onTapHargaAwal() {
    print('tap textfield');
    if (_hargaAwalController.text.isNotEmpty) {
      setState(() {
        _hargaAwalController.text = _hargaAwal.toString();
      });
    }
  }
}

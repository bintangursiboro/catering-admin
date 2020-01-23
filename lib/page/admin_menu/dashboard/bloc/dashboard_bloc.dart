import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:catering_admin/page/admin_menu/dashboard/bloc/dashboard_event.dart';
import 'package:catering_admin/page/admin_menu/dashboard/bloc/dashboard_state.dart';
import 'package:catering_admin/page/admin_menu/dashboard/service/dashboard_platform_service.dart';
import 'package:flutter/services.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  List<Uint8List> _listImge = [];
  @override
  DashboardState get initialState => DashboardInitial();

  @override
  Stream<DashboardState> mapEventToState(DashboardEvent event) async* {
    DashboardPlatformService _platformService = DashboardPlatformService();

    if (event is OpenCamera) {
      try {
        yield await _platformService.openCamera().then((image) {
          print('listImage ${_listImge.length}');
          _listImge.add(image);
          return DashboardPhotoLoaded(listImage: _listImge);
        });
        yield DashboardInitial();
      } on PlatformException catch (_) {
        yield DashboardError();
      }
    }
  }
}

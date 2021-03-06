import 'dart:typed_data';

import 'package:flutter/services.dart';

class DashboardPlatformService {
  static const PLATFORM = 'com.ijniclohot.cateringadmin/camera';
  static const METHOD = 'openCamera';
  static const _platform = const MethodChannel(PLATFORM);

  Future<Uint8List> openCamera() async {
    return await _platform.invokeMethod(METHOD).then((result) {
      print('$result');
      return result;
    });
  }
}

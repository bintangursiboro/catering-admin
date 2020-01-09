import 'dart:io';

import 'package:catering_admin/page/add_food/add_food.dart';
import 'package:catering_admin/page/admin_menu/admin_menu_view.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class AdminMenu extends StatefulWidget {
  @override
  _AdminMenu createState() => _AdminMenu();
}

class _AdminMenu extends State<AdminMenu> {
  int currentIndex = 0;
  PageController pageController = PageController(initialPage: 0);
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  void onTapBottomNav(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    firebaseCloudMessagingListeners();
  }

  void firebaseCloudMessagingListeners() {
    if (Platform.isIOS) iOSPermission();

    _firebaseMessaging.getToken().then((token) {
      print('this is token: $token');
    });

    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        if (message['notification'] != null) {
          Navigator.pushNamed(context, AddFood.PATH);
        }
      },
      onResume: (Map<String, dynamic> message) async {
        print('on resume $message');
      },
      onLaunch: (Map<String, dynamic> message) async {
        print('on launch $message');
      },
    );
  }

  void iOSPermission() {
    _firebaseMessaging.requestNotificationPermissions(
        IosNotificationSettings(sound: true, badge: true, alert: true));
    _firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings settings) {
      print("Settings registered: $settings");
    });
  }

  @override
  Widget build(BuildContext context) {
    return AdminMenuView(
      pageController: pageController,
      currentIndex: currentIndex,
      onTapBottomNav: onTapBottomNav,
    );
  }
}

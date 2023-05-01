import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../view/pageHome.dart';
import '../../view/pageQrCode.dart';
import '../../view/pageUser.dart';

class PathRoutes {
  static const String home = '/home';
  static const String qrcode = '/qrcode';
  static const String user = '/user';
  static final routes = [
    GetPage(
      name: home,
      page: () => PageHome(),
    ),
    GetPage(
      name: qrcode,
      page: () => PageQrCode(),
    ),
    GetPage(
      name: user,
      page: () => UserPage(),
    ),
  ];
}

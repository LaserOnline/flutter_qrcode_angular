import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../module/components/Appbar.dart';
import '../module/components/ButtonLoginQrCode.dart';
import '../view_models/state_login_qrcode.dart';

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppbarHome("Login", Colors.white, Colors.black),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonLoginQrCode(
              Colors: Colors.black12,
              Title: "Login By QrCode",
              Page: "qrcode",
              Width: width,
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey[400],
    );
  }
}

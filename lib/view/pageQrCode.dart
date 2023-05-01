import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import '../module/components/QrCode.dart';
import '../module/components/Appbar.dart';
import '../view_models/state_login_qrcode.dart';
import '../view_models/state_qrcode.dart';

class PageQrCode extends StatefulWidget {
  @override
  State<PageQrCode> createState() => _PageQrCodeState();
}

class _PageQrCodeState extends State<PageQrCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarQrCode("ScanQrCode", Colors.white, Colors.black),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QrCode(),
            Obx(() {
              final Barcode? result =
                  Get.find<QrCodeState>().qrCodeResult.value;
              return Center(
                child: (result != null)
                    ? Text("${result.code}")
                    : Text("Scan a Code"),
              );
            }),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}

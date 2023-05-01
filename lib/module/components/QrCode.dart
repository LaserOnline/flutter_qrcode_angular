import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../view_models/state_qrcode.dart';

class QrCode extends StatelessWidget {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  final QrCodeState controller = Get.put(QrCodeState());

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Obx(() {
      final Barcode? result = controller.qrCodeResult.value;
      return Container(
        height: height / 3,
        width: width / 1.5,
        child: QRView(
          key: qrKey,
          onQRViewCreated: controller.scanQrCode,
        ),
      );
    });
  }
}

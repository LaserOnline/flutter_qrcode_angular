import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'state_login_qrcode.dart';

class QrCodeState extends GetxController {
  final qrCodeResult = Rx<Barcode?>(null);
  final LoginQrCodeState _loginQrCode = Get.put(LoginQrCodeState());
  void scanQrCode(QRViewController controller) {
    controller.scannedDataStream.listen((event) {
      String? qrCode = event.code;
      qrCodeResult.value = event;
      if (qrCode != null) {
        _loginQrCode.LoginQrCode(qrCode);
      }
      controller.pauseCamera(); // หยุดการสแกน
    });
  }
}

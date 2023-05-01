import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../module/routes/routes.dart';
import '../module/api/config.dart';
import '../module/models/interface/user.dart';

class LoginQrCodeState extends GetxController {
  var user = <Message>[].obs;
  Future LoginQrCode(String qrcode) async {
    try {
      final response = await http.post(
        Uri.parse(PathApi.LoginQrCode),
        body: {"qrcode": qrcode},
        headers: {
          "Authorization": PathApi.Header,
        },
      );
      final jsonData = jsonDecode(response.body);
      if (jsonData["StatusCode"] == 200) {
        if (jsonData["Message"] ==
            "You Not Permission Connect Api Please Token") {
          return Get.dialog(
            AlertDialog(
              title: Text("Login Failed"),
              content: Text("การเชื่อมต่อ ล้มเหลว"),
              actions: [
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text("${response.body}"),
                )
              ],
            ),
          );
        } else {
          user.assignAll(
            jsonData["Message"].map<Message>(
              (json) => Message.fromJson(json),
            ),
          );
          Get.toNamed("user");
        }
      } else {
        return Get.dialog(
          AlertDialog(
            title: Text("Login Failed"),
            content: Text("การเชื่อมต่อ ล้มเหลว"),
            actions: [
              TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("${response.body}"),
              )
            ],
          ),
        );
      }
    } catch (e) {
      return Get.dialog(
        AlertDialog(
          title: Text("Login Failed"),
          content: Text(
              "การเชื่อมต่อ Server ล้มเหลว ต้องตรวจสอบว่าต่อ เน็ต หรือในวง LAN เจอกันหรือไม่"),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text("${e}"),
            )
          ],
        ),
      );
    }
  }
}

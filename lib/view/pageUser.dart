import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_qrcode_angular/view_models/state_login_qrcode.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:flutter/material.dart';
import '../module/api/config.dart';
import '../module/components/Appbar.dart';

class UserPage extends StatelessWidget {
  final user = Get.find<LoginQrCodeState>().user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarUserPage("UserData", Colors.white, Colors.black),
      body: Center(child: Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: CircleAvatar(
                radius: 45,
                backgroundImage:
                    NetworkImage("${PathApi.Profile}${user[0].Profile}"),
              ),
            ),
            SizedBox(height: 10),
            Text("Name: ${user[0].Fname} ${user[0].Lname}"),
            SizedBox(height: 10),
            Text("Email: ${user[0].Email}"),
            SizedBox(height: 10),
            Text("ID Card: ${user[0].ID_card}"),
            SizedBox(height: 10),
            Text("Address: ${user[0].Address}"),
          ],
        );
      })),
    );
  }
}

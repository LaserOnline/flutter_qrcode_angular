import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonLoginQrCode extends StatelessWidget {
  final Colors;
  final Title;
  final Page;
  final Width;

  const ButtonLoginQrCode({
    super.key,
    required this.Colors,
    required this.Title,
    required this.Page,
    required this.Width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Get.toNamed("${Page}");
        },
        child: Container(
          padding: const EdgeInsets.all(
            25,
          ),
          margin: EdgeInsets.symmetric(
            horizontal: Width / 5.5,
          ),
          decoration: BoxDecoration(
            color: Colors,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              "${Title}",
            ),
          ),
        ),
      ),
    );
  }
}

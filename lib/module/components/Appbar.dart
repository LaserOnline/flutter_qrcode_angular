import 'package:flutter/material.dart';

AppbarHome(String title, Color text_color, Color color) => AppBar(
      centerTitle: true,
      title: Text(
        "${title}",
        style: TextStyle(fontWeight: FontWeight.bold, color: text_color),
      ),
      backgroundColor: color,
    );

AppbarQrCode(String title, Color text_color, Color color) => AppBar(
      centerTitle: true,
      title: Text(
        "${title}",
        style: TextStyle(fontWeight: FontWeight.bold, color: text_color),
      ),
      backgroundColor: color,
    );
AppbarUserPage(String title, Color text_color, Color color) => AppBar(
      centerTitle: true,
      title: Text(
        "${title}",
        style: TextStyle(fontWeight: FontWeight.bold, color: text_color),
      ),
      backgroundColor: color,
    );

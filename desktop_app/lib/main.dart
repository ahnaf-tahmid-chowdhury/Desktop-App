import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:desktop_app/models/global.dart';
import 'package:flutter/material.dart';
import '/UI/Window_customize.dart';

void main() {
  runApp(MyApp());
  doWhenWindowReady(() {
    final initialSize = Size(800, 500);
    appWindow.minSize = initialSize;
    appWindow.size = initialSize;
    appWindow.alignment = Alignment.center;
    appWindow.title = "SuperGeiger";
    appWindow.show();
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: WindowBorder(
              width: 1,
              color: borderColor,
              child: Row(children: [LeftSide(), RightSide()]))),
    );
  }
}

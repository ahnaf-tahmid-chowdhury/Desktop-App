import 'package:flutter/material.dart';
//import 'models/global.dart';
import '/UI/Window_customize.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Row(children: [LeftSide(), RightSide()])),
    );
  }
}

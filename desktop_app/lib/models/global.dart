import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

const leftsidebarC = Color(0xFFF6A00C); //left side color

BoxDecoration leftsidebar = new BoxDecoration(
  color: leftsidebarC,
  borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
  boxShadow: [
    new BoxShadow(
      color: Colors.black.withOpacity(.05),
      blurRadius: 10.0,
    ),
  ],
);

const backgroundStartColor = Color(0xFFFFD500); //right side
const backgroundEndColor = Color(0xFFF6A00C); //right side

const borderColor = Color(0xFF805306);

BoxDecoration rightsidebarC = new BoxDecoration(
  gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [backgroundStartColor, backgroundEndColor],
      stops: [0.0, 1.0]),
);

const buttonColors = WindowButtonColors(
    iconNormal: Color(0xFF805306),
    mouseOver: Color(0xFFF6A00C),
    mouseDown: Color(0xFF805306),
    iconMouseOver: Color(0xFF805306),
    iconMouseDown: Color(0xFFFFD500));

const closeButtonColors = WindowButtonColors(
    mouseOver: Color(0xFFD32F2F),
    mouseDown: Color(0xFFB71C1C),
    iconNormal: Color(0xFF805306),
    iconMouseOver: Colors.white);

Card cardtitle = new Card(
  elevation: 10,
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(bottomRight: Radius.circular(30))),
  child: Container(
    height: 50,
    width: 200,
  ),
);

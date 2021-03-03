import 'package:flutter/material.dart';
import '/models/global.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

class LeftSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Container(
        color: leftsidebarC,
        child: Column(
          children: [
            WindowTitleBarBox(
              child: Row(
                children: [
                  Expanded(
                    child: MoveWindow(
                      child: Center(
                        child: Text(
                          "SuperGeiger",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RightSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: <Widget>[
          Container(
            decoration: rightsidebarC,

            //facing error in linux
            child: Column(
              children: [
                WindowTitleBarBox(
                  child: Row(
                    children: [
                      Expanded(child: MoveWindow()),
                      WindowButtons(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -200,
            right: -200,
            child: CircleAvatar(
              radius: 200,
              backgroundColor: leftsidebarC,
            ),
          ),
        ],
      ),
    );
  }
}

class WindowButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(colors: buttonColors),
        MaximizeWindowButton(colors: buttonColors),
        CloseWindowButton(colors: closeButtonColors),
      ],
    );
  }
}

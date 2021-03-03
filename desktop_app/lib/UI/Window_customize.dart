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
                              fontSize: 25,
                              color: Colors.amber[100],
                              fontFamily: 'Teko',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20, right: 20, left: 0),
              padding: EdgeInsets.all(10),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    topRight: Radius.circular(50)),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black.withOpacity(.05),
                    blurRadius: 10.0,
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

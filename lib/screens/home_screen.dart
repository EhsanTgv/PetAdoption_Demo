import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(top: 40),
                      padding: EdgeInsets.only(left: 15),
                      child: Icon(Icons.menu),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 40),
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(Icons.person),
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

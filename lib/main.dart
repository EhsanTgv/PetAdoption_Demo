import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

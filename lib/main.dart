import 'package:flutter/material.dart';
import 'package:petadoption/screens/home_screen.dart';
import 'package:petadoption/screens/pet_details_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

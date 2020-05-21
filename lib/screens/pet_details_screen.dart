import 'package:flutter/material.dart';

class PetDetailsScreen extends StatefulWidget {
  @override
  _PetDetailsScreenState createState() => _PetDetailsScreenState();
}

class _PetDetailsScreenState extends State<PetDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipRRect(
              child: Image.asset("assets/dog_cover.png"),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(64)),
            ),
          ],
        ),
      ),
    );
  }
}

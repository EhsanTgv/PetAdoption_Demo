import 'package:flutter/material.dart';
import 'package:petadoption/config/colors.dart';

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
            coverImageWidget(),
            titleRowWidget(),
            detailsRowWidget(),
            ownerDetailsRowWidget(),
            buttonsRowWidget(),
            SizedBox(height: 32)
          ],
        ),
      ),
    );
  }

  Widget coverImageWidget() {
    return ClipRRect(
      child: Image.asset("assets/dog_cover.png"),
      borderRadius: BorderRadius.only(bottomRight: Radius.circular(64)),
    );
  }

  Widget titleRowWidget() {
    return Container(
      margin: EdgeInsets.only(top: 32, right: 24, left: 24),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Charlie",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Pug Dog",
                  style: TextStyle(
                    color: textGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.favorite,
            color: accentRed,
          )
        ],
      ),
    );
  }

  Widget detailsRowWidget() {
    return Container(
      margin: EdgeInsets.only(top: 32, left: 24, right: 24),
      child: Row(
        children: <Widget>[
          itemDetailsRowWidget("sex", "Male"),
          itemDetailsRowWidget("color", "Black"),
          itemDetailsRowWidget("age", "2 Yr"),
        ],
      ),
    );
  }

  Widget itemDetailsRowWidget(String label, String value) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textGrey,
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: 8),
          Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: blackColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget ownerDetailsRowWidget() {
    return Container(
      margin: EdgeInsets.only(top: 32, right: 24, left: 24),
      child: Row(
        children: <Widget>[
          ClipRRect(
            child: Image.asset("assets/pet_owner.png"),
            borderRadius: BorderRadius.all(Radius.circular(128)),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 8),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Shawn Corrigan",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: textGrey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Charlie is a smart and happy dog and needs at least one day out of apartment.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: blackColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buttonsRowWidget() {
    return Container(
      margin: EdgeInsets.only(top: 32, left: 24, right: 24),
      child: Row(
        children: <Widget>[
          buttonsRowItems("Call", Icon(Icons.call)),
          SizedBox(width: 12),
          buttonsRowItems("Chat", Icon(Icons.chat_bubble_outline)),
          SizedBox(width: 12),
          buttonsRowItems("Adopt", Icon(Icons.pets), callToAction: true),
        ],
      ),
    );
  }

  Widget buttonsRowItems(String text, Icon icon, {bool callToAction = false}) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: callToAction ? accentRed : backgroundGrey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(alignment: Alignment.centerRight, child: icon),
            Container(alignment: Alignment.centerLeft, child: Text(text)),
          ],
        ),
      ),
    );
  }
}

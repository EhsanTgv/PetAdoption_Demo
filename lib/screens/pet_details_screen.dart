import 'package:flutter/material.dart';
import 'package:petadoption/config/colors.dart';
import 'package:petadoption/custom_view/buttons_row.dart';
import 'package:petadoption/custom_view/owner_details_card.dart';

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
            OwnerDetailsCard(),
            ButtonsRow(),
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
          itemDetailsRowWidget("age", "2 Yr", unimportantValue: true),
        ],
      ),
    );
  }

  Widget itemDetailsRowWidget(String label, String value,
      {bool unimportantValue = false}) {
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
              color: unimportantValue ? textGrey : blackColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

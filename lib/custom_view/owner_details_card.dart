import 'package:flutter/material.dart';
import 'package:petadoption/config/colors.dart';

class OwnerDetailsCard extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 32, right: 24, left: 24),
      child: Row(
        children: <Widget>[
          ClipRRect(
            child: Image.asset("assets/pet_owner.png"),
            borderRadius: BorderRadius.all(Radius.circular(128)),
          ),
          ownerTextsWidget(),
        ],
      ),
    );
  }

  Expanded ownerTextsWidget() {
    return Expanded(
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
        );
  }
}
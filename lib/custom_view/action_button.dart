import 'package:flutter/material.dart';
import 'package:petadoption/config/colors.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function action;
  final bool callToAction;

  ActionButton(this.text, this.icon, this.action, {this.callToAction = false});

  @override
  Widget build(BuildContext context) {
    Color textColor = callToAction ? whiteColor : textGrey;
    return Expanded(
      child: InkWell(
        onTap: action,
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
              Container(
                  alignment: Alignment.centerRight,
                  child: Icon(icon, color: textColor)),
              Container(
                  alignment: Alignment.centerLeft,
                  child: Text(text, style: TextStyle(color: textColor))),
            ],
          ),
        ),
      ),
    );
  }
  
}

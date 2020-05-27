import 'package:flutter/material.dart';
import 'package:petadoption/custom_view/action_button.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonsRow extends StatelessWidget{
  ButtonsRow();

@override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 32, left: 24, right: 24),
      child: Row(
        children: <Widget>[
          ActionButton("Call", Icons.call, callAction),
          SizedBox(width: 12),
          ActionButton("Chat", Icons.chat_bubble_outline, smsAction),
          SizedBox(width: 12),
          ActionButton("Adopt", Icons.pets, null, callToAction: true),
        ],
      ),
    );
  }

  callAction() {
    launch("tel://21213123123");
  }

  smsAction() {
    launch("sms:5550101234");
  }
}
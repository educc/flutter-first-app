import 'package:flutter/material.dart';
import 'package:flutter_app/common/floating_action_button_green.dart';

class MiniCardWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final textWidgets = [
      Text(
        "Knuckles Mountains Range",
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16
        ),
      ),
      Text(
        "loremp ipsum",
        style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 13
        ),
      ),
      Text(
        "Steps 123,123,132",
        style: TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
            fontSize: 13
        ),
      )
    ];

    final mainContainer = Container(
      padding: EdgeInsets.all(15),
      width: 250,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0,7.0)
            )
          ]
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: textWidgets
      ),
    );

    return Stack(
      alignment: Alignment(0.8, 2.0),
      children: <Widget>[
        mainContainer,
        FloatingActionButtonGreen()
      ],
    );
  }

}
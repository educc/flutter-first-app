import 'package:flutter/material.dart';

class HeaderTitleWidget extends StatelessWidget {

  String title;


  HeaderTitleWidget(this.title);

  @override
  Widget build(BuildContext context) {

    return Container(
        padding: EdgeInsets.only(
            top: 50, left: 20
          ),
        child: Row(
          children: <Widget>[
            Text(
              this.title,
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            )
          ],
        )
    );
  }

}
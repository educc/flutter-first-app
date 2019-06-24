import 'package:flutter/material.dart';
import 'card_list.dart';

class HeaderWidget extends StatelessWidget {

  String title;

  HeaderWidget(this.title);

  @override
  Widget build(BuildContext context) {
    var listImages = [
      "assets/img/mountain1.webp",
      "assets/img/mountain2.webp",
      "assets/img/mountain3.webp",
      "assets/img/mountain4.webp",
    ];


    var titleWidget = Container(
      padding: EdgeInsets.only(
        top: 50, left: 20

      ),
      child: Text(
        this.title,
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
      ),
    );

    var listView =  Container(
      margin: EdgeInsets.only(
        top: 80
      ),
      child: CardListViewWidget(listImages)
    );

    var titleAndBack = Container(
      height: 250,

      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1)
          ])
      ),

      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[titleWidget],
          ),
        ],
      ),
    );


    return Stack(
      children: <Widget>[
        titleAndBack,
        listView
      ],
    );
  }


}
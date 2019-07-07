import 'package:flutter/material.dart';
import 'package:flutter_app/home/review_list.dart';
import 'package:flutter_app/home/button_purple.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int stars;
  String descriptionPlace;


  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {

    final star_border = Container(
      margin: EdgeInsets.only(
        right: 3.0,

      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2c611),
      ),
    );

    final star_half = Container(
      margin: EdgeInsets.only(
        right: 3.0,

      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2c611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        right: 3.0,

      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2c611),
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        Text(
        this.namePlace,
          style: TextStyle(
              fontFamily: "Amatic",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
          ),
          textAlign: TextAlign.left,
        ),
        Row (
          children: <Widget>[
            star,
            star,
            star,
            star,
            star
          ],
        )
      ],
    );

    final descriptionWidget = Text(
      this.descriptionPlace,
      textAlign: TextAlign.justify,
      style: TextStyle(
      ),
    );

    final textAllReviews = Container(
      padding: EdgeInsets.only(
        top: 15
      ),
      child: Text(
        "All Reviews",
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey
        ),
      ),
    );

    final buttonNavigate = Container(
      margin: EdgeInsets.only(
        top: 15
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ButtonPurple("Navigate"),
        ],
      ),
    );

    return Container(
      child: ListView(
        padding: EdgeInsets.only(
          left: 20.0,
          right: 20.0,

        ),
        children: <Widget>[
          titleStars,
          descriptionWidget,
          buttonNavigate,
          textAllReviews,
          ReviewList()
        ],
      ),
    );
  }
}
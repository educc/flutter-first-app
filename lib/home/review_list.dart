import 'package:flutter/material.dart';
import 'package:flutter_app/home/review.dart';

class ReviewList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    for(var i = 0; i < 5; i++){
      children.add(_buildItem());
    }

    return Column(
      children: children
    );
  }

  Widget _buildItem(){

    String pathImage = "assets/img/people.jpg";
    String userName = "Edu";
    String details = "1 review 5 photos";
    String comment = "A comment here";

    return Review(pathImage, userName, details, comment);
  }
}
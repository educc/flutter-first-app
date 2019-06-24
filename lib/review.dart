import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  String pathImage = "assets/img/people.jpg";
  String userName = "Edu";
  String details = "1 review 5 photos";
  String comment = "A comment here";

  Review(this.pathImage, this.userName, this.details, this.comment);

  @override
  Widget build(BuildContext context) {


    final userNameText = Text(
      this.userName,
      style: TextStyle(
        fontSize: 16,
        color: Colors.black
      ),
    );

    final userReviewsText = Text(
      this.details,
      style: TextStyle(
          fontSize: 12,
          color: Colors.grey
      ),
    );


    final userCommentText = Text(
      this.comment,
      style: TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.bold
      )
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 20
      ),

      width: 80,
      height: 80,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage)
            )
      )
    );



    final userDetails= Container(
      margin: EdgeInsets.only(
          left: 20
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          userNameText,
          userReviewsText,
          userCommentText
        ],
      )
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }
}
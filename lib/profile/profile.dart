import 'package:flutter/material.dart';
import 'package:flutter_app/common/header_title.dart';

import 'card_list.dart';

class ProfileWidget extends StatelessWidget {

  String userImagePath;


  ProfileWidget(this.userImagePath);

  @override
  Widget build(BuildContext context) {

    var listImages = [
      "assets/img/mountain1.webp",
      "assets/img/mountain2.webp",
      "assets/img/mountain3.webp",
      "assets/img/mountain4.webp",
    ];

    final title = HeaderTitleWidget("Profile");
    final header = Container(
      child: Column(
        children: <Widget>[
          title,
          _buildUserWidget()
        ],
      ),
    );

    final cardList = Container(
      margin: EdgeInsets.only(
        top: 250
      ),
      child: CardListWidget(listImages),
    );



    return Stack(
      children: <Widget>[
        _buildBackground(),
        header,
        cardList
      ],
    );
  }

  Widget _buildUserWidget(){

    final photo = Container(
        width: 80,
        height: 80,

        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 2
            ),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(this.userImagePath)
            )
        )
    );

    final userDetails = Container(
      padding: EdgeInsets.only(
        left: 20
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
            Text("edu",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white
              ),
            ),
            SizedBox(height: 5),
            Text(
              "edu@gmail.com",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey
              ),
            )
        ],
      ),
    );


    return Container(
      padding: EdgeInsets.only(
        left: 20, right: 20, top: 10
      ),
      child: Row(
        children: <Widget>[
          photo,
          userDetails
        ],
      ),
    );
  }

  Widget _buildBackground(){
    return Container(
      height: 300,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1)
          ])
      ),
    );
  }

}
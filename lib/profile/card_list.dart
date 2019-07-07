import 'package:flutter/material.dart';

import 'mini_card.dart';

class CardListWidget extends StatelessWidget {

  List<String> listImageUrl;

  CardListWidget(this.listImageUrl);

  @override
  Widget build(BuildContext context) {

    var listOfWidgets = new List<Widget>();
    listImageUrl.forEach( (it) {
      listOfWidgets.add(this._buildItem(it));
      listOfWidgets.add(SizedBox(height: 70,));
    });

    listOfWidgets.removeLast();

    return ListView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 70
      ),
      children: listOfWidgets,
    );
  }

  Widget _buildItem(String imagePath){
    var imageCard = Container(
        height: 180,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imagePath)
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15.0,
                  offset: Offset(0.0,7.0)
              )
            ]

        )

    );

    final miniCard = MiniCardWidget();

    return Stack(
      alignment: Alignment(0.0, 1.8),
      children: <Widget>[
        imageCard,
        miniCard
      ],
    );
  }

}
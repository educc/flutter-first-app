import 'package:flutter/material.dart';
import 'package:flutter_app/common/floating_action_button_green.dart';

class CardListViewWidget extends StatelessWidget {

  List<String> listImageUrl;


  CardListViewWidget(this.listImageUrl);

  @override
  Widget build(BuildContext context) {
    final spaceForChild = 20.0;
    final defaultMargin = 25.5;

    var listOfWidgets = new List<Widget>();
    var i = 1;
    listImageUrl.forEach( (it) {
      final marginForItem = i%2==0? defaultMargin*1.5: defaultMargin;
      listOfWidgets.add(this._buildItem(it, marginForItem));
      listOfWidgets.add(SizedBox(width: spaceForChild,));
      i += 1;
    });

    listOfWidgets.removeLast();

    return  Container(
      height: 270,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(
          left: spaceForChild,
          right: spaceForChild,
          bottom: spaceForChild
        ),
        children: listOfWidgets,
      ),
    );
  }

  Widget _buildItem(String imagePath, double margin){
    var imageCard = Container(
      //height: 350,
        width: 250,
        margin: EdgeInsets.only(
            top: margin, bottom: margin
        ),
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

    return Stack(
      alignment: Alignment(0.9, 1.0),
      children: <Widget>[
        imageCard,
        FloatingActionButtonGreen()
      ],
    );
  }

}
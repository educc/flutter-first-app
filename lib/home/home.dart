import 'package:flutter/material.dart';

import 'description_place.dart';
import 'header.dart';

class HomeWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var descriptionWidget = DescriptionPlace(
        "Chiclayo",
        4,
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    );


    final headerWidget = HeaderWidget("Bienvenido");

    final descWidgetContainer = Container(
      margin: EdgeInsets.only(
          top: 330
      ),
      child: descriptionWidget,
    );


    return Stack(
      children: <Widget>[
        descWidgetContainer,
        headerWidget
      ],
    );
  }
}
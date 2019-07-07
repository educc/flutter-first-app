import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {

  IconData buttonIconData = Icons.favorite_border;

  void onPressedFav(){

    Scaffold.of(context).showSnackBar(
      SnackBar(content: Text("Agregaste a favoritos"))
    );
    setState(() {
      this.buttonIconData = Icons.favorite;
    });

  }

  @override
  Widget build(BuildContext context) {

    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: this.onPressedFav,
      child: Icon(this.buttonIconData)
    );
  }

}
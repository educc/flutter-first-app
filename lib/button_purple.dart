import 'package:flutter/material.dart';


class ButtonPurple extends StatelessWidget {

  String title;


  ButtonPurple(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(
          SnackBar(content: Text("Navegando"))
        );
      },
      child: Container(
        height: 50,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
              colors: [
                Color(0xFF4268D3),
                Color(0xFF584CD1)
              ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp
          )
        ),
        child: Center(
          child: Text(
              this.title,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white
              ),
          ),
        ),

      ),
    );
  }

}
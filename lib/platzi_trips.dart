import 'package:flutter/material.dart';

import 'home/home.dart';
import 'profile/profile.dart';


class PlatziTrips extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips> {

  Widget selectedWidget;

  void _onTap(int idx){
    final fixedUserImg = "assets/img/people.jpg";

    setState(() {
      switch(idx){
        case 0: this.selectedWidget = HomeWidget(); break;
        case 1: this.selectedWidget = ProfileWidget(fixedUserImg); break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    if (selectedWidget == null) {
      this.selectedWidget = HomeWidget();
    }

    return Scaffold(
      body: this.selectedWidget,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
            onTap: this._onTap,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text("")
              ),
            ]
        ),
      ),
    );
  }

}

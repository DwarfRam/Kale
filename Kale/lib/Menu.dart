import 'package:flutter/material.dart';

import 'Routes.dart';

class Menu extends StatelessWidget {

  Menu({Key key, this.currentindex }): super(key: key);

  final int currentindex;


  @override
  Widget build(BuildContext context) {
    void onTabTapped(int index) {
      print(this.currentindex);
      if (index == 0){
        print("avant");
        Navigator.popAndPushNamed(context, home,);
        print("après");
      };
      if (index == 1){
        print("avant");
        print(this.currentindex);
        //Navigator.pushNamed(context, ecoresp,);
        Navigator.popAndPushNamed(context, ecoresp);
        print("après");
      };
      if (index == 2){
        print("avant");
        Navigator.popAndPushNamed(context, recherche,);
        print("après");
      };
      if (index == 3){
        print("avant");
        Navigator.popAndPushNamed(context, planif,);
        print("après");
      };
      if (index == 4){
        print("avant");
        Navigator.popAndPushNamed(context, profil,);
        print("après");
      };
    }
    return BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: currentindex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home, color: Colors.black38),
            label: 'Accueil',
            activeIcon: new Icon(Icons.home, color: Colors.lightGreen),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.agriculture, color: Colors.black38),
            label: 'Eco-responsable',
            activeIcon: new Icon(Icons.agriculture, color: Colors.lightGreen),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.search, color: Colors.black38),
            label: 'Recherche',
            activeIcon: new Icon(Icons.search, color: Colors.lightGreen),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.calendar_today, color: Colors.black38),
            label: 'Planification',
            activeIcon: new Icon(Icons.calendar_today, color: Colors.lightGreen),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black38),
            label: 'Profil',
            activeIcon: new Icon(Icons.person, color: Colors.lightGreen),
          )
        ],
      );



  }

}
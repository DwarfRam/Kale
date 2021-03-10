import 'package:flutter/material.dart';

import 'Routes.dart';

class Menu extends StatelessWidget {

  Menu({Key key, this.currentindex }): super(key: key);

  final int currentindex;

  @override
  Widget build(BuildContext context) {
    void onTabTapped(int index) {
      if (index == 0){
        // /!\ Ajouter ici, si pas connecté Navigator.popAndPushNamed(context, home_non_connecte,);
        Navigator.popAndPushNamed(context, home,);
      };
      if (index == 1){
        // /!\ Ajouter ici, si pas connecté Navigator.popAndPushNamed(context, home_non_connecte,);
        Navigator.popAndPushNamed(context, ecoresp);
      };
      if (index == 2){
        // /!\ Ajouter ici, si pas connecté Navigator.popAndPushNamed(context, home_non_connecte,);
        Navigator.popAndPushNamed(context, recherche,);
      };
      if (index == 3){
        // /!\ Ajouter ici, si pas connecté Navigator.popAndPushNamed(context, home_non_connecte,);
        Navigator.popAndPushNamed(context, planif,);
      };
      if (index == 4){
        // /!\ Ajouter ici, si pas connecté Navigator.popAndPushNamed(context, home_non_connecte,);
        Navigator.popAndPushNamed(context, profil,);
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
            icon: new Icon(Icons.eco, color: Colors.black38),
            label: 'Eco-responsable',
            activeIcon: new Icon(Icons.eco, color: Colors.lightGreen),
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
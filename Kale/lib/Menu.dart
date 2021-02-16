import 'package:flutter/material.dart';

import 'Routes.dart';

class Menu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuState();
  }
}

class _MenuState extends State<Menu> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
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
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      if (_currentIndex == 0){
        print("avant");
        Navigator.pushNamed(context, home,);
        print("après");
      };
      if (_currentIndex == 1){
        print("avant");
        Navigator.pushNamed(context, ecoresp,);
        print("après");
      };
      if (_currentIndex == 2){
        print("avant");
        Navigator.pushNamed(context, recherche,);
        print("après");
      };
      if (_currentIndex == 3){
        print("avant");
        Navigator.pushNamed(context, planif,);
        print("après");
      };
      if (_currentIndex == 4){
        print("avant");
        Navigator.pushNamed(context, profil,);
        print("après");
      };
    },
    );
  }
}
import 'package:flutter/material.dart';
import 'fondecran_widget.dart';

class Menu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuState();
  }
}

class _MenuState extends State<Menu> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green),
    PlaceholderWidget(Colors.black),
    PlaceholderWidget(Colors.black)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kale'),
        backgroundColor: Colors.black12 ,
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home, color: Colors.black38),
            title: new Text('Accueil'),
            activeIcon: new Icon(Icons.home, color: Colors.lightGreen),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.agriculture, color: Colors.black38),
            title: new Text('Eco-responsable'),
            activeIcon: new Icon(Icons.agriculture, color: Colors.lightGreen),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.search, color: Colors.black38),
            title: new Text('Recherche'),
            activeIcon: new Icon(Icons.search, color: Colors.lightGreen),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.calendar_today, color: Colors.black38),
            title: new Text('Planification'),
            activeIcon: new Icon(Icons.calendar_today, color: Colors.lightGreen),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black38),
            title: Text('Profil'),
            activeIcon: new Icon(Icons.person, color: Colors.lightGreen),
          )
        ],
      ),

    );


  }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      Navigator.pushNamed(context, '/',);
      Navigator.pushNamed(context, '/ecoresp',);
      Navigator.pushNamed(context, '/recherche',);
      Navigator.pushNamed(context, '/planif',);
      Navigator.pushNamed(context, '/profil',);
    },
    );
  }
}
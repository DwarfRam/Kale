import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'Ecoresp.dart';
import 'Recherche.dart';
import 'Planif.dart';
import 'Profil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyBottomBarWidget(),
    );
  }
}

class MyBottomBarWidget extends StatefulWidget {
  MyBottomBarWidget();

  @override
  _MyBottomBarWidgetState createState() => _MyBottomBarWidgetState();
}

int _selectedIndex = 0;


class _MyBottomBarWidgetState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: ClampingScrollPhysics(),
        onPageChanged: (index) {
          pageChanged(index);
        },
        controller: _pageController,
        children: [
          Ecoresp(),
          Recherche(),
          Planif(),
          Profil(),
        ],
      ),
      bottomNavigationBar: navyBottomBar(),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  Widget navyBottomBar() {
    return BottomNavyBar(

      backgroundColor: Color(0xFF090418),
      selectedIndex: _selectedIndex,
      showElevation: true, // use this to remove appBar's elevation
      onItemSelected: (index) {
        bottomTapped(index);
      },
      items: [
        BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Accueil'),
            activeColor: Colors.white),
        BottomNavyBarItem(
            icon: Icon(Icons.pan_tool),
            title: Text('Ecoresponsable'),
            activeColor: Colors.purpleAccent),
        BottomNavyBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Recherche'),
            activeColor: Colors.pink),
        BottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: Text('Planification'),
            activeColor: Colors.blue),
        BottomNavyBarItem(
            icon: Icon(Icons.add_a_photo),
            title: Text('Profil'),
            activeColor: Colors.amber),
      ],
    );
  }
}

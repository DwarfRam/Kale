import 'package:flutter/material.dart';
import 'Menu.dart';
import 'main.dart';

class Recherche extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RechercheState();
  }
}

class _RechercheState extends State<Recherche> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Text('Ceci est la page 3'),
      ),
      bottomNavigationBar: MyApp.menu,
    );
  }
}
import 'package:flutter/material.dart';
import 'Menu.dart';
import 'main.dart';

class Ecoresp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EcorespState();
  }
}

class _EcorespState extends State<Ecoresp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Text('Ceci est la page 2'),
      ),
      bottomNavigationBar: MyApp.menu,
    );
  }
}
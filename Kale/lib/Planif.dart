import 'package:flutter/material.dart';
import 'Menu.dart';
import 'main.dart';

class Planif extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PlanifState();
  }
}

class _PlanifState extends State<Planif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Text('Ceci est la page 4'),
      ),
      bottomNavigationBar: Menu(currentindex : 3),
    );
  }
}
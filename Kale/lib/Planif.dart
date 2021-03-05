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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: SingleChildScrollView(
      child:      Center(
        child: Text('Ceci est la page 4'),
      ),
      ),
      bottomNavigationBar: Menu(currentindex : 3),
    );
  }
}
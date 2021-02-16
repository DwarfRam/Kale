import 'package:flutter/material.dart';
import 'main.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
          padding: const EdgeInsets.all(32.0),
          alignment: Alignment.center,
          child : Text('truc'),
      ),
      bottomNavigationBar: MyApp.menu,
    );
  }
}
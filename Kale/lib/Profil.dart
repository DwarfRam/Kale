import 'package:flutter/material.dart';
import 'Menu.dart';
import 'main.dart';

class Profil extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfilState();
  }
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Text('Ceci est la page 5'),
      ),
      bottomNavigationBar: Menu(currentindex : 4),
    );
  }
}
import 'package:flutter/material.dart';
import 'Menu.dart';

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Text('Ceci est la page 5'),
      ),
      bottomNavigationBar: Menu(),
    );
  }
}
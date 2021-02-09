import 'package:flutter/material.dart';
import 'Menu.dart';

class Ecoresp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Text('Ceci est la page 2'),
      ),
      bottomNavigationBar: Menu(),
    );
  }
}
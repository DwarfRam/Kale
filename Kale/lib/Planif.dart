import 'package:flutter/material.dart';
import 'Menu.dart';

class Planif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Text('Ceci est la page 4'),
      ),
      bottomNavigationBar: Menu(),
    );
  }
}
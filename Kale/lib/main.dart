import 'package:flutter/material.dart';
import 'Routes.dart';
import 'Menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static Widget menu;
  @override
  Widget build(BuildContext context) {
    menu = new Menu();
    return MaterialApp(
      //Pour enlever la petite bannière "debug" en haut à droite.
      debugShowCheckedModeBanner: false,
      title: 'Kale',
      // Pour indiquer où se trouve les routes de l'application et les générer.
      onGenerateRoute: Routes.generateRoute,
      initialRoute: home,
    );
  }
}



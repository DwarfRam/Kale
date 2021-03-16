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
      debugShowCheckedModeBanner: false,
      title: 'Kale',
      onGenerateRoute: Routes.generateRoute,
      initialRoute: home,

    );

  }


  }

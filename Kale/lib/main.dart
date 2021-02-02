import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'Ecoresp.dart';
import 'Recherche.dart';
import 'Planif.dart';
import 'Profil.dart';
import 'Home.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kale',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/ecoresp': (context) => Ecoresp(),
        '/recherche': (context) => Recherche(),
        '/planif': (context) => Planif(),
        '/profil': (context) => Profil(),
      },
    );

  }


  }

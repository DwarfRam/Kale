import 'package:flutter/material.dart';
import 'Ecoresp.dart';
import 'Recherche.dart';
import 'Planif.dart';
import 'Profil.dart';
import 'Home.dart';

const String home = '/';
const String ecoresp = '/ecoresp';
const String recherche = '/recherche';
const String planif = '/planif';
const String profil = '/profil';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        print("home");
        return MaterialPageRoute(builder: (_) => Home());
      case ecoresp:
        print("ecoresp");
        return MaterialPageRoute(builder: (_) => Ecoresp());
      case recherche:
        return MaterialPageRoute(builder: (_) => Recherche());
      case planif :
        return MaterialPageRoute(builder: (_) => Planif());
      case profil :
        return MaterialPageRoute(builder: (_) => Profil());
      default:
        return MaterialPageRoute(
            builder: (_) =>
                Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}




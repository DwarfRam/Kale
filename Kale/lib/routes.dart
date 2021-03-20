import 'package:flutter/material.dart';
import 'Ecoresp.dart';
import 'Recherche.dart';
import 'Planif.dart';
import 'Profil.dart';
import 'Home.dart';
import 'Inscription.dart';
import 'Connexion.dart';
import 'Inscription_suite.dart';
import 'Home_non_connecte.dart';
import 'Recette.dart';
import 'Ajout_recette.dart';

const String home = '/';
const String ecoresp = '/ecoresp';
const String recherche = '/recherche';
const String planif = '/planif';
const String profil = '/profil';
const String inscription = '/inscription';
const String connexion = '/connexion';
const String inscription_suite = '/inscription_suite';
const String home_non_connecte = '/home_non_connecte';
const String recette = '/recette';
const String ajout = '/ajout';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => Home());
      case ecoresp:
        return MaterialPageRoute(builder: (_) => Ecoresp());
      case recherche:
        return MaterialPageRoute(builder: (_) => Recherche());
      case planif :
        return MaterialPageRoute(builder: (_) => Planif());
      case profil :
        return MaterialPageRoute(builder: (_) => Profil());
      case inscription :
        return MaterialPageRoute(builder: (_) => Inscription());
      case connexion :
        return MaterialPageRoute(builder: (_) => Connexion());
      case inscription_suite :
        return MaterialPageRoute(builder: (_) => Inscription_suite());
      case home_non_connecte :
        return MaterialPageRoute(builder: (_) => Home_non_connecte());
      case recette :
        return MaterialPageRoute(builder: (_) => Recette());
      case ajout :
        return MaterialPageRoute(builder: (_) => Ajout_recette());
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




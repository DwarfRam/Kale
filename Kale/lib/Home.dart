import 'package:flutter/material.dart';
import 'main.dart';
import 'Menu.dart';
import 'Routes.dart';

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
      body: Column(
        children: [
          Container(
              padding: const EdgeInsets.only(top: 500.0),
            child:
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Nouveau sur Kale ?',
                  style: TextStyle(fontFamily: 'Montserrat',fontSize: 20.0,),
                ),
                SizedBox(width: 10.0),
                InkWell(
                  onTap: () {
                    Navigator.popAndPushNamed(context, inscription,);
                  },
                  child: Text(
                    'Inscription',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            )
          ),
      Container(
        child:
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Déjà inscrit ?',
                style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0,),
              ),
              SizedBox(width: 10.0),
              InkWell(
                onTap: () {
                  Navigator.popAndPushNamed(context, connexion,);
                },
                child: Text(
                  'Connectez-vous',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
      ),
      ],
    ),
        bottomNavigationBar: Menu(currentindex : 0),
    );
  }
}
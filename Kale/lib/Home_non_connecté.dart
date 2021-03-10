import 'package:flutter/material.dart';
import 'main.dart';
import 'Menu.dart';
import 'Routes.dart';

class Home_non_connecte extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home_non_connecteState();
  }
}

class _Home_non_connecteState extends State<Home_non_connecte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              child : Row(
                children: [
                  Container(
                    width : MediaQuery.of(context).size.width * 0.8,
                    child: Text('Bienvenue sur ',style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.1, fontWeight: FontWeight.bold),)
                  ),
              //    Container(
                //    color: Colors.yellow,
               //     child: Image.asset('images/logo_texte_noir.svg')),

                ],
              )

            ),
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
      ),
      bottomNavigationBar: Menu(currentindex : 0),
    );
  }
}
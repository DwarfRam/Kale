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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.08),
                width: MediaQuery.of(context).size.width * 1,
                child: Material(
                    borderRadius: BorderRadius.circular(15.0),
                    shadowColor: Colors.black26,
                    color: Colors.white,
                    elevation: 7.0,
                    child: Container(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  child: Text('Dernières actualités',
                                    textAlign: TextAlign.left,
                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold),
                                  )
                              ),
                              SizedBox(height: MediaQuery.of(context).size.width * 0.02,),
                              Container(
                                  padding : EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                                  child : Container(
                                        // /!\ STRING PRENOM NOM devant la string
                                          child :Text('Vous n\'avez pas encore d\'amis sur Kale',
                                            textAlign: TextAlign.left,
                                            style : TextStyle(color : Colors.black38, fontSize: MediaQuery.of(context).size.width * 0.04),
                                          )
                              ),

                        )
                    ])
                )
            ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only( left: MediaQuery.of(context).size.width * 0.08, right: MediaQuery.of(context).size.width * 0.02),
                  child : Container (
                    child: Material(
                        borderRadius: BorderRadius.circular(15.0),
                        shadowColor: Colors.black26,
                        color: Colors.white,
                        elevation: 7.0,
                        child : Column (
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children : [
                              Container (
                                  padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                                  child : Text('Mission',
                                    textAlign: TextAlign.left,
                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold),
                                  )
                              ),
                              Container(
                                  padding : EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                                  child : Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // /!\ numéro mission
                                          padding : EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                                        child : Text('n° mission',
                                          textAlign: TextAlign.left,
                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                        )
                                      ),
                                      Container(
                                        // /!\ intitulé mission
                                          padding :EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                                          child : Text('intitulé mission',
                                            textAlign: TextAlign.left,
                                            style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                          )
                                      )
                                    ],
                                  )
                              )
                            ]
                        )
                    ),
                  ),
                ),


                Container(
                  padding: EdgeInsets.only( left: MediaQuery.of(context).size.width * 0.02, right: MediaQuery.of(context).size.width * 0.08),
                  child : Container (
                    child: Material(
                        borderRadius: BorderRadius.circular(15.0),
                        shadowColor: Colors.black26,
                        color: Colors.white,
                        elevation: 7.0,
                        child : Column (
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children : [

                              Container (
                              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                                child : Text('Conseil du jour',
                                textAlign: TextAlign.left,
                                style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold),
                                )
                                ),
                              Container(
                                padding : EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                                child : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                  // /!\ texte conseil
                                  padding : EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                                    child : Text('texte conseil',
                                    textAlign: TextAlign.left,
                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                    )
                                    )
                            ]
                        )
                    ),
                ])
                                  )))


  ]),
            Container(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.08),
              width: MediaQuery.of(context).size.width * 1,
              child: Material(
                  borderRadius: BorderRadius.circular(15.0),
                  shadowColor: Colors.black26,
                  color: Colors.white,
                  elevation: 7.0,
                  child: Container(
                      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Text('Prochain repas',
                                  textAlign: TextAlign.left,
                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold),
                                )
                            ),
                            SizedBox(height: MediaQuery.of(context).size.width * 0.02,),
                            Container(
                              padding : EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                              child : Container(
                                // /!\ prochaine recette
                                  child :Text('Recette',
                                    textAlign: TextAlign.left,
                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                  )
                              ),

                            )
                          ])
                  )
              ),
            ),
          ]
    ),
      ),
        bottomNavigationBar: Menu(currentindex : 0),
    );
  }
}
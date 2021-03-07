import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Menu.dart';
import 'main.dart';

class Ecoresp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EcorespState();
  }
}

class _EcorespState extends State<Ecoresp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
            tabs: [
              Tab(text: 'Tableau de bord'),
              Tab(text: 'Conseils'),
            ],
          ),
            title: Text('Page Ecoresponsable'),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: 700.0,
                      padding: EdgeInsets.only(left : 35.0, top: 25.0, right: 35.0),
                      child: Material(
                          borderRadius: BorderRadius.circular(15.0),
                          shadowColor: Colors.black26,
                          color: Colors.white,
                          elevation: 7.0,
                          child: Container(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                
                                child : Text('Statistiques',
                                  textAlign: TextAlign.left,
                                  style : TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child : Text('Depuis le début de votre aventure Kale',
                                  textAlign: TextAlign.left,
                                  style : TextStyle(fontSize: 15.0,),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                child : Row(
                                  children: [
                                  Container(
                                    width: 50.0,
                                    height: 50.0,
                                    child : Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.lightGreen,
                                              style: BorderStyle.solid,
                                              width: 3.0),
                                          color: Colors.lightGreen[50],

                                          borderRadius: BorderRadius.circular(35.0)),
                                      child: Container(
                                        padding: EdgeInsets.all(15.0),
                                          child : Text('12', textAlign: TextAlign.center,
                                        style : TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                                      )
                                  ),
                                    ),
                                  ),
                                    Container(
                                      padding : EdgeInsets.only(left: 15.0,),
                                      child : Text('Litres d\'eau éconimisés',
                                      textAlign: TextAlign.center,
                                      style : TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                                    ),
                                    ),
                                    ],
                                ),

                              ),
                              SizedBox(height: 10.0),
                              Container(
                                child : Row(
                                  children: [
                                    Container(
                                      width: 50.0,
                                      height: 50.0,
                                      child : Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.lightGreen,
                                                style: BorderStyle.solid,
                                                width: 3.0),
                                            color: Colors.lightGreen[50],

                                            borderRadius: BorderRadius.circular(35.0)),
                                        child: Container(
                                            padding: EdgeInsets.all(15.0),
                                            child : Text('12', textAlign: TextAlign.center,
                                              style : TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                                            )
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding : EdgeInsets.only(left: 15.0,),
                                      child : Text('Animaux sauvés',
                                        textAlign: TextAlign.center,
                                        style : TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                child : Row(
                                  children: [
                                    Container(
                                      width: 50.0,
                                      height: 50.0,
                                      child : Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.lightGreen,
                                                style: BorderStyle.solid,
                                                width: 3.0),
                                            color: Colors.lightGreen[50],

                                            borderRadius: BorderRadius.circular(35.0)),
                                        child: Container(
                                            padding: EdgeInsets.all(15.0),
                                            child : Text('12', textAlign: TextAlign.center,
                                              style : TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                                            )
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding : EdgeInsets.only(left: 15.0,),
                                      child : Text('Kg de déchets triés',
                                        textAlign: TextAlign.center,
                                        style : TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                            ]
                          ))
                    ),
                    ),
                    Container(
                      width: 700.0,
                      padding: EdgeInsets.only(left : 35.0, top: 25.0, right: 35.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(15.0),
                        shadowColor: Colors.black26,
                        color: Colors.white,
                        elevation: 7.0,
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Container(
                              child : Text('Missions',
                                textAlign: TextAlign.left,
                                style : TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                        ),
                    ],
                    ),
        ),
                    )
                    ),

                    Row(
                      children: [
                        Container(
                          child: Text('Niveau'),
                        ),
                        Container(
                          child: Text('Badges'),
                        )
                      ],
                    ),

                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Text('Conseils'),
                    )

                  ],
                ),
              ),
            ],
          ),

          bottomNavigationBar: Menu(currentindex : 1),
    )
    );
  }
}
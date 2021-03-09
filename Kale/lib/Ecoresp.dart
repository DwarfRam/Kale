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
                      width: MediaQuery.of(context).size.width * 1,
                      padding: EdgeInsets.only(left : MediaQuery.of(context).size.width * 0.09, top: MediaQuery.of(context).size.width * 0.05, right: MediaQuery.of(context).size.width * 0.09),
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
                                    child : Text('Statistiques',
                                      textAlign: TextAlign.left,
                                      style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                                  ),
                              ),
                                Container(
                                  child : Text('Depuis le début de votre aventure Kale',
                                    textAlign: TextAlign.left,
                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.035,),
                                ),
                              ),
                                SizedBox(height: MediaQuery.of(context).size.width * 0.03),
                                Container(
                                  child : Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.13,
                                      height: MediaQuery.of(context).size.width * 0.13,
                                      child : Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.lightGreen,
                                                style: BorderStyle.solid,
                                                width: MediaQuery.of(context).size.width * 0.007),
                                            color: Colors.lightGreen[50],

                                            borderRadius: BorderRadius.circular(35.0)),
                                        child: Container(
                                          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                                            // /!\ STRING DE L'INT
                                            child : Text('12', textAlign: TextAlign.center,
                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03, fontWeight: FontWeight.bold),
                                        )
                                    ),
                                      ),
                                    ),
                                      Container(
                                        padding : EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03),
                                        child : Text('Litres d\'eau éconimisés',
                                        textAlign: TextAlign.center,
                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04, fontWeight: FontWeight.bold),
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
                                        width: MediaQuery.of(context).size.width * 0.13,
                                        height: MediaQuery.of(context).size.width * 0.13,
                                        child : Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.lightGreen,
                                                  style: BorderStyle.solid,
                                                  width: MediaQuery.of(context).size.width * 0.007),
                                              color: Colors.lightGreen[50],

                                              borderRadius: BorderRadius.circular(35.0)),
                                          child: Container(
                                              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                                              // /!\ STRING DE L'INT
                                              child : Text('12', textAlign: TextAlign.center,
                                                style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03, fontWeight: FontWeight.bold),
                                              )
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding : EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03,),
                                        child : Text('Animaux sauvés',
                                          textAlign: TextAlign.center,
                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04, fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.width * 0.03),
                                Container(
                                  child : Row(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.13,
                                        height: MediaQuery.of(context).size.width * 0.13,
                                        child : Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.lightGreen,
                                                  style: BorderStyle.solid,
                                                  width: MediaQuery.of(context).size.width * 0.007),
                                              color: Colors.lightGreen[50],

                                              borderRadius: BorderRadius.circular(35.0)),
                                          child: Container(
                                              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                                              // /!\ STRING DE L'INT
                                              child : Text('12', textAlign: TextAlign.center,
                                                style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03, fontWeight: FontWeight.bold),
                                              )
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding : EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03,),
                                        child : Text('Kg de déchets triés',
                                          textAlign: TextAlign.center,
                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04, fontWeight: FontWeight.bold),
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
                      width: MediaQuery.of(context).size.width * 1,
                        padding: EdgeInsets.only(left : MediaQuery.of(context).size.width * 0.09, top: MediaQuery.of(context).size.width * 0.05, right: MediaQuery.of(context).size.width * 0.09),
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
                              child : Text('Missions',
                                textAlign: TextAlign.left,
                                style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                            ),
                        ),
                            Row(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.17,
                                    height: MediaQuery.of(context).size.width * 0.3,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.lightGreen,
                                            style: BorderStyle.solid,
                                            width: MediaQuery.of(context).size.width * 0.007),
                                        color: Colors.lightGreen[50],

                                        borderRadius: BorderRadius.circular(35.0)),
                                    child: Container(
                                        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                                        child : Column(
                                            children : [
                                              Container(
                                                child : Text('n°1', textAlign: TextAlign.center,
                                                style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03, fontWeight: FontWeight.bold),
                                        )
                                        ),
                                              SizedBox(height: MediaQuery.of(context).size.width * 0.02),
                                              Container(
                                                // /!\ STRING
                                                  child : Text('intitulé mission', textAlign: TextAlign.center,
                                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                                  )
                                              ),
                                            ]
                                  ),
                                    ),
                                  ),

                                  SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.3,
                                    height: MediaQuery.of(context).size.width * 0.45,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.lightGreen,
                                            style: BorderStyle.solid,
                                            width: MediaQuery.of(context).size.width * 0.007),
                                        color: Colors.lightGreen[50],

                                        borderRadius: BorderRadius.circular(35.0)),
                                    child: Container(
                                      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                                      child : Column(
                                          children : [
                                            Container(
                                                child : Text('n°2', textAlign: TextAlign.center,
                                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04, fontWeight: FontWeight.bold),
                                                )
                                            ),
                                            SizedBox(height: MediaQuery.of(context).size.width * 0.02),
                                            Expanded(
                                              child: Container(
                                                // /!\ STRING
                                                  child : Text('intitulé mission', textAlign: TextAlign.center,
                                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                  )
                                              ),
                                            ),

                                            Expanded(
                                                child: Container(
                                                    padding : EdgeInsets.all(MediaQuery.of(context).size.width * 0.065),
                                                    child: Row(
                                                      children: [
                                                        // /!\ POUR LL : FAIRE UN MEILLEUR BOUTON + MESSAGE POP UP REFUS/ACCEPTATION
                                                        Container(
                                                          height: MediaQuery.of(context).size.width * 0.04 ,
                                                          width: MediaQuery.of(context).size.width * 0.04,
                                                          child : GestureDetector(
                                                            onTap: () {
                                                              // /!\ ICI FONCTION REFUS MISSION
                                                            },
                                                            child: Container(
                                                              child: Icon(Icons.clear, color: Colors.red),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                                                        Container(
                                                          height: MediaQuery.of(context).size.width * 0.04 ,
                                                          width: MediaQuery.of(context).size.width * 0.04,

                                                          child : GestureDetector(
                                                            onTap: () {
                                                              // /!\ ICI FONCTION ACCEPTATION MISSION
                                                            },
                                                            child: Container(

                                                              child: Icon(Icons.done, color: Colors.lightGreen),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                )
                                            )
                                          ]
                                      ),
                                    ),
                                  ),

                                  SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                                  Container(
                                        width: MediaQuery.of(context).size.width * 0.17,
                                        height: MediaQuery.of(context).size.width * 0.3,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.lightGreen,
                                                style: BorderStyle.solid,
                                                width: MediaQuery.of(context).size.width * 0.007),
                                            color: Colors.lightGreen[50],

                                            borderRadius: BorderRadius.circular(35.0)),
                                        child: Container(
                                          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                                          child : Column(
                                              children : [
                                                Container(
                                                    child : Text('n°3', textAlign: TextAlign.center,
                                                      style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03, fontWeight: FontWeight.bold),
                                                    )
                                                ),
                                                SizedBox(height: 5.0),
                                                Container(
                                                  // /!\ STRING
                                                    child : Text('intitulé mission', textAlign: TextAlign.center,
                                                      style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                                    )
                                                )]
                                          ),
                                        ),
                                      )

                                ],
                              ),
                    ],
                    ),
        ),
                    )
                    ),

                    Row(
                      children: [
                        Container(
                          child : Expanded(
                            child : Container (
                              padding: EdgeInsets.only(left : MediaQuery.of(context).size.width * 0.09, top: MediaQuery.of(context).size.width * 0.05, right: MediaQuery.of(context).size.width * 0.01),
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
                                            child : Text('Niveau',
                                              textAlign: TextAlign.left,
                                              style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                                      )),
                                        Row(
                                          children: [
                                            SizedBox(width:MediaQuery.of(context).size.width * 0.1),
                                            Container (
                                              width: MediaQuery.of(context).size.width * 0.12,
                                              height: MediaQuery.of(context).size.width * 0.12,
                                              child : Container(
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black,
                                                        style: BorderStyle.solid,
                                                        width: MediaQuery.of(context).size.width * 0.005),
                                                    color: Colors.amberAccent,

                                                    borderRadius: BorderRadius.circular(35.0)),
                                                child: Container(
                                                    padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.035),
                                                    child : Text('1', textAlign: TextAlign.center,
                                                      style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03, fontWeight: FontWeight.bold),
                                                    )
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),

                                        SizedBox(height: MediaQuery.of(context).size.width * 0.03),
                                        Row(
                                          children: [
                                            SizedBox(width:MediaQuery.of(context).size.width * 0.03),
                                            Container (
                                              width: MediaQuery.of(context).size.width * 0.28,
                                              height: MediaQuery.of(context).size.width * 0.06,
                                              child : Container(
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black,
                                                        style: BorderStyle.solid,
                                                        width: MediaQuery.of(context).size.width * 0.003),
                                                    color: Colors.lightGreen,

                                                    borderRadius: BorderRadius.circular(35.0)),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                        width: MediaQuery.of(context).size.width * 0.07,
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(35.0),
                                                          color : Colors.red,)
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(width: MediaQuery.of(context).size.width * 0.08,),
                                            Container (
                                              child: Container (
                                                  padding : EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                                                  child : Text('1 / 10 XP',style : TextStyle(fontSize:MediaQuery.of(context).size.width * 0.03)
                                                  )
                                              ),
                                            )
                                          ],
                                        )


                                  ]
                                  )
                          ),
                              ),
                        ),
                          ),
                        ),
                              SizedBox(width: MediaQuery.of(context).size.width * 0.03,),
                              Container(child : Expanded(
                                child : Container (
                                  padding: EdgeInsets.only(left : MediaQuery.of(context).size.width * 0.01, top: MediaQuery.of(context).size.width * 0.05, right: MediaQuery.of(context).size.width * 0.09),
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
                                                  child : Text('Badges',
                                                    textAlign: TextAlign.left,
                                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                                      )
                                      ),
                                            SizedBox(height: MediaQuery.of(context).size.width * 0.03,),
                                            Container(
                                              child : Row(
                                                  children: [
                                                    Icon(Icons.verified)
                                                ],
                                                )
                                            )
                                          ]
                                      )
                                  ),
                                ),
                              ),
                              ),
    ),
    ]
                    ),
                    SizedBox(height: MediaQuery.of(context).size.width * 0.06)
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                  Container(
                  width: MediaQuery.of(context).size.width * 1,
                    padding: EdgeInsets.only(left : MediaQuery.of(context).size.width * 0.09, top: MediaQuery.of(context).size.width * 0.05, right: MediaQuery.of(context).size.width * 0.09),
                  child: Material(
                      borderRadius: BorderRadius.circular(15.0),
                      shadowColor: Colors.black26,
                      color: Colors.white,
                      elevation: 7.0,
                      child: Container(
                        // /!\ POUR LL ET CB : FAIRE FONCTION POUR REPETER LA CREATION DES CONSEILS
                          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Column(

                                children: [
                                    Container(
                                      child : Text('Conseil n°1',
                                      textAlign: TextAlign.left,
                                      style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                                      ),
                                      ),
                                      SizedBox(height:MediaQuery.of(context).size.width * 0.03),
                                      Container(
                                      // /!\ STRING
                                        child : Text('texte en bdd',
                                        textAlign: TextAlign.left,
                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                        ),
                                )
                                ])
                                ],
                        )
                      )
                    ),
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
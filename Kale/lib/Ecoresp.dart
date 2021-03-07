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
                            Row(
                                children: [
                                  Container(
                                    width: 85.0,
                                    height: 120.0,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.lightGreen,
                                            style: BorderStyle.solid,
                                            width: 3.0),
                                        color: Colors.lightGreen[50],

                                        borderRadius: BorderRadius.circular(35.0)),
                                    child: Container(
                                        padding: EdgeInsets.all(5.0),
                                        child : Column(
                                            children : [
                                              Container(
                                                child : Text('n°1', textAlign: TextAlign.center,
                                                style : TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
                                        )
                                        ),
                                              SizedBox(height: 5.0),
                                              Container(
                                                  child : Text('intitulé mission', textAlign: TextAlign.center,
                                                    style : TextStyle(fontSize: 10.0),
                                                  )
                                              ),
                                            ]
                                  ),
                                    ),
                                  ),
                                  SizedBox(width: 10.0),
                                  Expanded(child: Container(
                                    width: 105.0,
                                    height: 120.0,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.lightGreen,
                                            style: BorderStyle.solid,
                                            width: 3.0),
                                        color: Colors.lightGreen[50],

                                        borderRadius: BorderRadius.circular(35.0)),
                                    child: Container(
                                      padding: EdgeInsets.all(5.0),
                                      child : Column(
                                          children : [
                                            Container(
                                                child : Text('n°2', textAlign: TextAlign.center,
                                                  style : TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                                                )
                                            ),
                                            SizedBox(height: 5.0),
                                            Expanded(
                                              child: Container(
                                                  child : Text('intitulé mission', textAlign: TextAlign.center,
                                                    style : TextStyle(fontSize: 12.0),
                                                  )
                                              ),
                                            ),

                                            SizedBox(height: 5.0),
                                            Expanded(
                                                child: Container(

                                                    padding : EdgeInsets.only(left:18.0, top:21.0,right: 18.0),
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          height: 20.0 ,
                                                          width: 20.0,

                                                          child : GestureDetector(
                                                            onTap: () {},
                                                            child: Container(
                                                              child: Icon(Icons.clear, color: Colors.red),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(width: 3.0),
                                                        Container(
                                                          height: 20.0 ,
                                                          width: 20.0,

                                                          child : GestureDetector(
                                                            onTap: () {},
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
                                  ),
                                  SizedBox(width: 10.0),
                                  Expanded(
                                      child : Container(
                                        width: 85.0,
                                        height: 120.0,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.lightGreen,
                                                style: BorderStyle.solid,
                                                width: 3.0),
                                            color: Colors.lightGreen[50],

                                            borderRadius: BorderRadius.circular(35.0)),
                                        child: Container(
                                          padding: EdgeInsets.all(5.0),
                                          child : Column(
                                              children : [
                                                Container(
                                                    child : Text('n°3', textAlign: TextAlign.center,
                                                      style : TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
                                                    )
                                                ),
                                                SizedBox(height: 5.0),
                                                Container(
                                                    child : Text('intitulé mission', textAlign: TextAlign.center,
                                                      style : TextStyle(fontSize: 10.0),
                                                    )
                                                )]
                                          ),
                                        ),
                                      )
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
                              width: 100.0,
                              padding: EdgeInsets.only(left : 35.0, top: 25.0, right: 10.0),
                              child: Material(
                                  borderRadius: BorderRadius.circular(15.0),
                                  shadowColor: Colors.black26,
                                  color: Colors.white,
                                  elevation: 7.0,

                                  child : Text('Niveau',
                                    textAlign: TextAlign.left,
                                    style : TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                            )
                          ),
                        ),
                          ),
                        ),
                              SizedBox(width: 10.0,),
                              Container(child : Expanded(
                                child : Container (
                                  width: 100.0,
                                  padding: EdgeInsets.only(left : 10.0, top: 25.0, right: 35.0),
                                  child: Material(
                                      borderRadius: BorderRadius.circular(15.0),
                                      shadowColor: Colors.black26,
                                      color: Colors.white,
                                      elevation: 7.0,

                                      child : Text('Badges',
                                        textAlign: TextAlign.left,
                                        style : TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                                      )
                                  ),
                                ),
                              ),
                              ),
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
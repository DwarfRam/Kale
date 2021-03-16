import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Menu.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'SearchBar.dart';


class Ecoresp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EcorespState();
  }
}

enum Raisons {temps, moyens, interet}

class _EcorespState extends State<Ecoresp> {

  Raisons _raison = Raisons.temps;

  SearchBar searchBar;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  AppBar buildAppBar(BuildContext context) {
    return new AppBar(
        title: new Text('Search Bar Demo'),
        actions: [searchBar.getSearchAction(context)]);
  }

  void onSubmitted(String value) {
    setState(() => _scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text('You wrote $value!'))));
  }

  _EcorespState() {
    searchBar = new SearchBar(
        inBar: false,
        buildDefaultAppBar: buildAppBar,
        setState: setState,
        onSubmitted: onSubmitted,
        onCleared: () {
          print("cleared");
        },
        onClosed: () {
          print("closed");
        });
  }

  Icon actionIcon = new Icon(Icons.search);
  Widget appBarTitle = new Text("Kale");

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text("Kale",style:TextStyle(color:Colors.green)),
            actions: <Widget>[
              IconButton(
                  icon: actionIcon,
                  color:Colors.green,
                  onPressed:() {
                    setState(() {
                      showSearch(
                        context: context,
                        delegate: CustomSearchDelegate(),
                      );
                    }
                    );
                  }
              ),
              IconButton(
                icon: Icon(
                  Icons.filter_list,
                  color:Colors.green,
                ),
                onPressed: () {
                  showFilterDialog(context);
                },
              ),
            ],
            bottom: TabBar(
              labelColor: Colors.green,
              indicatorColor: Colors.green,
              tabs: [
                Tab(text: 'Tableau de bord'),
                Tab(text: 'Conseils'),
              ],
            ),
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


                                            Container(
                                                    padding : EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                                                    child: Row(
                                                      children: [
                                                        // /!\ POUR LL : FAIRE UN MEILLEUR BOUTON + MESSAGE POP UP REFUS/ACCEPTATION
                                                        Container(
                                                          child :Material(
                                                            borderRadius: BorderRadius.circular(20.0),
                                                          shadowColor: Colors.red,
                                                          color: Colors.red,
                                                          elevation: 7.0,
                                                                  child : GestureDetector(
                                                                    onTap: () {
                                                                      showDialog(context: context, builder: (_) => AlertDialog(
                                                                          title: Text("Pourquoi voulez-vous rejeter cette mission ?"),
                                                                        content : Container(
                                                                          height: MediaQuery.of(context).size.width * 0.4,
                                                                          child :
                                                                        Column (children : [
                                                                            Row( children : [
                                                                                  Radio(
                                                                                    value: Raisons.temps,
                                                                                    groupValue: _raison,
                                                                                    activeColor: Colors.lightGreen,
                                                                                    onChanged: (Raisons value) {
                                                                                      setState(() {
                                                                                        _raison = value;
                                                                                      });
                                                                                    },
                                                                                  ),
                                                                                  Text('Je n\'ai pas le temps',
                                                                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                                                    textAlign: TextAlign.left,),
                                                                                ]),
                                                                          Row( children : [
                                                                            Radio(
                                                                              value: Raisons.moyens,
                                                                              groupValue: _raison,
                                                                              activeColor: Colors.lightGreen,
                                                                              onChanged: (Raisons value) {
                                                                                setState(() {
                                                                                  _raison = value;
                                                                                });
                                                                              },
                                                                            ),
                                                                            Text('Je n\'ai pas les moyens',
                                                                              style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                                              textAlign: TextAlign.left,),
                                                                          ]),
                                                                          Row( children : [
                                                                            Radio(
                                                                              value: Raisons.interet,
                                                                              groupValue: _raison,
                                                                              activeColor: Colors.lightGreen,
                                                                              onChanged: (Raisons value) {
                                                                                setState(() {
                                                                                  _raison = value;
                                                                                });
                                                                              },
                                                                            ),
                                                                            Text('Il ne m\'intéresse pas',
                                                                              style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                                              textAlign: TextAlign.left,),
                                                                          ]),
                                                                        ]),),
                                                                      actions: [
                                                                        TextButton(child : Text("Retour"), onPressed: (){// /!\ ICI FONCTION REFUS MISSION
                                                                           },),
                                                                        TextButton(child : Text("Refuser"), onPressed: (){// /!\ ICI FONCTION REFUS MISSION
                                                                          },),
                                                                      ],
                                                                      ));
                                                                    },
                                                                    child: Container(
                                                                      child: Icon(Icons.clear, color: Colors.white),
                                                            ),
                                                          ),)
                                                        ),
                                                        SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                                                        Container(
                                                          child :Material(
                                                            borderRadius: BorderRadius.circular(20.0),
                                                            shadowColor: Colors.greenAccent,
                                                            color: Colors.lightGreen,
                                                            elevation: 7.0,

                                                            child : GestureDetector(
                                                              onTap: () {
                                                                // /!\ ICI FONCTION ACCEPTATION MISSION
                                                                print("truc");
                                                              },
                                                              child: Container(

                                                                child: Icon(Icons.done, color: Colors.white),
                                                            ),
                                                          ),
                                                        ),)
                                                      ],
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
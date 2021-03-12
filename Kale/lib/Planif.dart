import 'package:flutter/material.dart';
import 'Menu.dart';
import 'main.dart';

class Planif extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PlanifState();
  }
}

class _PlanifState extends State<Planif> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: 'Calendrier'),
              Tab(text: 'Liste de courses'),
            ],
          ),
          title: Text('Page Planification'),
        ),
        body: TabBarView(

            children: [
            SingleChildScrollView(
              child : Container(
                padding: EdgeInsets.symmetric(horizontal :MediaQuery.of(context).size.width * 0.03, vertical : MediaQuery.of(context).size.width * 0.05),
                child :
                Column(
                  children: [
                    Container(
                      padding : EdgeInsets.only(left : MediaQuery.of(context).size.width * 0.8, bottom : MediaQuery.of(context).size.width * 0.04),
                        child: InkWell(
                                onTap: () {
                                  // /!\ FONCTION POUR pop modifier la vue
                                },
                                child: Icon(Icons.settings, color: Colors.green, size : MediaQuery.of(context).size.width * 0.08)

                            ),
                          ),
                    Table(
                      border: TableBorder.all(
                          color: Colors.black38,
                          style: BorderStyle.solid,
                          width: 1),
                      children: [
                        TableRow( children: [
                          Column(children:[]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01),child : Text('Matin', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.045, fontWeight: FontWeight.bold)))]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01),child : Text('Midi', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.045, fontWeight: FontWeight.bold)))]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01),child : Text('En-cas', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.045, fontWeight: FontWeight.bold)))]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01),child : Text('Soir', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.045, fontWeight: FontWeight.bold)))]),
                        ]),
                        TableRow( children: [ // Container(padding : EdgeInsets.all(MediaQuery.of(context).size.width * 0.02), child : Text('truc', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.035,) )
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01),child : Text('Lun.', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.045, fontWeight: FontWeight.bold)))]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01) )]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01) )]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01))]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01))]),
                        ]),
                        TableRow( children: [
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01), child : Text('Mar.', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.045, fontWeight: FontWeight.bold)))]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01))]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01))]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01) )]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01) )]),
                        ]),
                        TableRow( children: [
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01), child : Text('Mer.', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.045, fontWeight: FontWeight.bold)))]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01) )]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01))]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01))]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01))]),
                        ]),
                        TableRow( children: [
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01), child : Text('Jeu.', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.045, fontWeight: FontWeight.bold)))]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01) )]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01))]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01))]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01))]),
                        ]),
                        TableRow( children: [
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01), child : Text('Ven.', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.045, fontWeight: FontWeight.bold)))]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01) )]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01))]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01))]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01))]),
                        ]),
                        TableRow( children: [
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01), child : Text('Sam.', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.045, fontWeight: FontWeight.bold)))]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01) )]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01))]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01))]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01))]),
                        ]),
                        TableRow( children: [
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01), child : Text('Dim.', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.045, fontWeight: FontWeight.bold)))]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01) )]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01))]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01))]),
                          Column(children:[Container(padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01))]),
                        ]),
                      ],
                    ),
                    Container(
                      padding : EdgeInsets.only(left : MediaQuery.of(context).size.width * 0.8, top : MediaQuery.of(context).size.width * 0.04),
                      child: InkWell(
                          onTap: () {
                            // /!\ FONCTION POUR ajouter une recette
                          },
                          child: Icon(Icons.add_circle, color: Colors.deepOrangeAccent, size : MediaQuery.of(context).size.width * 0.1)

                      ),
                    ),
                  ],
                )
            ) 

            ),
              SingleChildScrollView(
                child : Container(
                  padding: EdgeInsets.symmetric(horizontal :MediaQuery.of(context).size.width * 0.03, vertical : MediaQuery.of(context).size.width * 0.04),
                  child :
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding : EdgeInsets.only(left : MediaQuery.of(context).size.width * 0.8, bottom : MediaQuery.of(context).size.width * 0.02),
                      child: InkWell(
                          onTap: () {
                            // /!\ FONCTION POUR pop modifier la vue
                          },
                          child: Icon(Icons.settings, color: Colors.green, size : MediaQuery.of(context).size.width * 0.08)

                      ),
                    ),
                    Container(
                      padding : EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.06, vertical: MediaQuery.of(context).size.width * 0.03),
                      child : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                              decoration: BoxDecoration(
                                  border : Border(bottom : BorderSide(color: Colors.black26)
                                  )),
                            child : Text('Lundi',textAlign: TextAlign.left,
                            style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                            ))

                        ],
                      )
                    ),
                    Container(
                        padding : EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.06, vertical: MediaQuery.of(context).size.width * 0.03),
                        child : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                    border : Border(bottom : BorderSide(color: Colors.black26)
                                    )),
                                child : Text('Mardi',textAlign: TextAlign.left,
                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                                ))

                          ],
                        )
                    ),
                    Container(
                        padding : EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.06, vertical: MediaQuery.of(context).size.width * 0.03),
                        child : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                    border : Border(bottom : BorderSide(color: Colors.black26)
                                    )),
                                child : Text('Mercredi',textAlign: TextAlign.left,
                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                                ))

                          ],
                        )
                    ),
                    Container(
                        padding : EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.06, vertical: MediaQuery.of(context).size.width * 0.03),
                        child : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                    border : Border(bottom : BorderSide(color: Colors.black26)
                                    )),
                                child : Text('Jeudi',textAlign: TextAlign.left,
                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                                ))

                          ],
                        )
                    ),
                    Container(
                        padding : EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.06, vertical: MediaQuery.of(context).size.width * 0.03),
                        child : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                    border : Border(bottom : BorderSide(color: Colors.black26)
                                    )),
                                child : Text('Vendredi',textAlign: TextAlign.left,
                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                                ))

                          ],
                        )
                    ),Container(
                        padding : EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.06, vertical: MediaQuery.of(context).size.width * 0.03),
                        child : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                    border : Border(bottom : BorderSide(color: Colors.black26)
                                    )),
                                child : Text('Samedi',textAlign: TextAlign.left,
                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                                ))

                          ],
                        )
                    ),
                    Container(
                        padding : EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.06, vertical: MediaQuery.of(context).size.width * 0.03),
                        child : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                    border : Border(bottom : BorderSide(color: Colors.black26)
                                    )),
                                child : Text('Dimanche',textAlign: TextAlign.left,
                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                                ))

                          ],
                        )
                    )

                  ],
                )
                )
              ),
        ]
      ),

        bottomNavigationBar: Menu(currentindex : 3),
    )
    );
  }
}
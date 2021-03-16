import 'package:flutter/material.dart';
import 'Menu.dart';
import 'SearchBar.dart';

class Planif extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PlanifState();
  }
}

enum Affichage {tableau, liste}

class _PlanifState extends State<Planif> {

  Affichage _affichage = Affichage.tableau;

  // /!\ Initialisation des variables récupérées pour la liste de courses
  bool valuefirst = false;
  bool valuesecond = false;

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
              Tab(text: 'Calendrier'),
              Tab(text: 'Liste de courses'),
            ],
          ),
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
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return StatefulBuilder(
                                        builder: (context, setState) {
                                          return AlertDialog(
                                            content: SingleChildScrollView(
                                              child : Column (children : [
                                              Container(
                                                child : Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        child : Text('Affichage',
                                                          textAlign: TextAlign.left,
                                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold, color: Colors.green),
                                                        )
                                                    ),
                                                    Row( children : [
                                                      Row(
                                                        children : [
                                                          Radio(
                                                            value: Affichage.tableau,
                                                            groupValue: _affichage,
                                                            activeColor: Colors.lightGreen,
                                                            onChanged: (Affichage value) {
                                                              setState(() {
                                                                _affichage = value;
                                                              });
                                                            },
                                                          ),
                                                          Text('Tableau',
                                                            style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                            textAlign: TextAlign.left,),
                                                        ]),
                                                      Row( children : [
                                                        Radio(
                                                          value: Affichage.liste,
                                                          groupValue: _affichage,
                                                          activeColor: Colors.lightGreen,
                                                          onChanged: (Affichage value) {
                                                            setState(() {
                                                              _affichage = value;
                                                            });
                                                          },
                                                        ),
                                                        Text('Liste',
                                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                          textAlign: TextAlign.left,),
                                                      ]),
                                                        ]
                                                      ),
                                                  ],
                                                )
                                              ),
                                              Container(
                                                  child : Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          child : Text('Jours',
                                                            textAlign: TextAlign.left,
                                                            style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold, color: Colors.green),
                                                          )
                                                      ),
                                                      Container(
                                                        child : Column(
                                                          children :[
                                                            CheckboxListTile(
                                                                controlAffinity: ListTileControlAffinity.leading,
                                                                activeColor: Colors.green,
                                                                title: Text('Lundi',
                                                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04,),
                                                                ),
                                                                value: this.valuefirst,
                                                                onChanged: (bool value) {
                                                                  setState(() {
                                                                    this.valuefirst = value;
                                                                  });
                                                                },
                                                              ),

                                                            CheckboxListTile(
                                                              controlAffinity: ListTileControlAffinity.leading,
                                                              activeColor: Colors.green,
                                                              title: Text('Mardi',
                                                                style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                              ),
                                                              value: this.valuesecond,
                                                              onChanged: (bool value) {
                                                                setState(() {
                                                                  this.valuesecond = value;
                                                                });
                                                              },
                                                            ),
                                                            CheckboxListTile(
                                                              controlAffinity: ListTileControlAffinity.leading,
                                                              activeColor: Colors.green,
                                                              title: Text('Mercredi',
                                                                style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                              ),
                                                              value: this.valuesecond,
                                                              onChanged: (bool value) {
                                                                setState(() {
                                                                  this.valuesecond = value;
                                                                });
                                                              },
                                                            ),
                                                            CheckboxListTile(
                                                              controlAffinity: ListTileControlAffinity.leading,
                                                              activeColor: Colors.green,
                                                              title: Text('Jeudi',
                                                                style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                              ),
                                                              value: this.valuesecond,
                                                              onChanged: (bool value) {
                                                                setState(() {
                                                                  this.valuesecond = value;
                                                                });
                                                              },
                                                            ),
                                                            CheckboxListTile(
                                                              controlAffinity: ListTileControlAffinity.leading,
                                                              activeColor: Colors.green,
                                                              title: Text('Vendredi',
                                                                style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                              ),
                                                              value: this.valuesecond,
                                                              onChanged: (bool value) {
                                                                setState(() {
                                                                  this.valuesecond = value;
                                                                });
                                                              },
                                                            ),
                                                            CheckboxListTile(
                                                              controlAffinity: ListTileControlAffinity.leading,
                                                              activeColor: Colors.green,
                                                              title: Text('Samedi',
                                                                style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                              ),
                                                              value: this.valuesecond,
                                                              onChanged: (bool value) {
                                                                setState(() {
                                                                  this.valuesecond = value;
                                                                });
                                                              },
                                                            ),
                                                            CheckboxListTile(
                                                              controlAffinity: ListTileControlAffinity.leading,
                                                              activeColor: Colors.green,
                                                              title: Text('Dimanche',
                                                                style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                              ),
                                                              value: this.valuesecond,
                                                              onChanged: (bool value) {
                                                                setState(() {
                                                                  this.valuesecond = value;
                                                                });
                                                              },
                                                            ),

                                                        ])
                                                      ),
                                                            ]),
                                                  ),
                                              Container(
                                                child : Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          child : Text('Repas',
                                                            textAlign: TextAlign.left,
                                                            style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold, color: Colors.green),
                                                          )
                                                      ),
                                                      Container(
                                                          child : Column(
                                                              children :[
                                                                CheckboxListTile(
                                                                  controlAffinity: ListTileControlAffinity.leading,
                                                                  activeColor: Colors.green,
                                                                  title: Text('Matin',
                                                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04,),
                                                                  ),
                                                                  value: this.valuefirst,
                                                                  onChanged: (bool value) {
                                                                    setState(() {
                                                                      this.valuefirst = value;
                                                                    });
                                                                  },
                                                                ),

                                                                CheckboxListTile(
                                                                  controlAffinity: ListTileControlAffinity.leading,
                                                                  activeColor: Colors.green,
                                                                  title: Text('Midi',
                                                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                                  ),
                                                                  value: this.valuesecond,
                                                                  onChanged: (bool value) {
                                                                    setState(() {
                                                                      this.valuesecond = value;
                                                                    });
                                                                  },
                                                                ),
                                                                CheckboxListTile(
                                                                  controlAffinity: ListTileControlAffinity.leading,
                                                                  activeColor: Colors.green,
                                                                  title: Text('En-cas',
                                                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                                  ),
                                                                  value: this.valuesecond,
                                                                  onChanged: (bool value) {
                                                                    setState(() {
                                                                      this.valuesecond = value;
                                                                    });
                                                                  },
                                                                ),
                                                                CheckboxListTile(
                                                                  controlAffinity: ListTileControlAffinity.leading,
                                                                  activeColor: Colors.green,
                                                                  title: Text('Soir',
                                                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                                  ),
                                                                  value: this.valuesecond,
                                                                  onChanged: (bool value) {
                                                                    setState(() {
                                                                      this.valuesecond = value;
                                                                    });
                                                                  },
                                                                ),
                                                                 ])
                                                      ),
                                                    ]),
                                              )
                                          ])
                                            ),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () => Navigator.pop(context),
                                                child: Text("Annuler"),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  setState(() {
                                                    //action
                                                  });
                                                },
                                                child: Text("Valider"),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                  );
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
                                showDialog(
                                context: context,
                                builder: (context) {
                                      return StatefulBuilder(
                                      builder: (context, setState) {
                                          return AlertDialog(
                                            content: Container(
                                              child : Column(
                                                children: [
                                                  Container(
                                                      child : Text('Quand voulez-vous planifier cette recette ?',
                                                        textAlign: TextAlign.left,
                                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold, color: Colors.green),
                                                      )
                                                  ),
                                                  Container(
                                                      child : Text('Calendrier',
                                                        textAlign: TextAlign.left,
                                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold, color: Colors.green),
                                                      )
                                                  ),
                                                ],
                                              )

                                          ),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () => Navigator.pop(context),
                                                child: Text("Annuler"),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  setState(() {
                                                    //action
                                                  });
                                                },
                                                child: Text("Valider"),
                                              ),
                                            ],
                                          );

                                },);
    });},
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
                                  border : Border(bottom : BorderSide(color: Colors.black26),
                                  ),),
                            child : Text('Lundi',textAlign: TextAlign.left,
                            style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                            )),
                          CheckboxListTile(
                            controlAffinity: ListTileControlAffinity.leading,
                            activeColor: Colors.green,
                            // /!\ Valeur de l'ingrédient
                            secondary: Text('4 pièces',
                              style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04,),
                            ),
                            // /!\ Ingrédient
                            title: Text('Poireaux',
                              style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04,),
                            ),
                            value: this.valuefirst,
                            onChanged: (bool value) {
                              setState(() {
                                this.valuefirst = value;
                              });
                            },
                          ),
                          CheckboxListTile(
                            controlAffinity: ListTileControlAffinity.leading,
                            activeColor: Colors.green,
                            secondary:Text('250g',
                              style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                            ),
                            title: Text('Crème fraîche',
                              style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                            ),
                            value: this.valuesecond,
                            onChanged: (bool value) {
                              setState(() {
                                this.valuesecond = value;
                              });
                            },
                          ),
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
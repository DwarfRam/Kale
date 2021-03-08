import 'package:flutter/material.dart';
import 'Menu.dart';
import 'package:flutter/services.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';

class Profil extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfilState();
  }
}
enum Regime {aucun, vegetarien, flexitarien, perscitarien, vegan }

class Allergie {
  final int id;
  final String name;

  Allergie({
    this.id,
    this.name,
  });
}

class Aliment {
  final int id;
  final String name;

  Aliment({
    this.id,
    this.name,
  });
}

class _ProfilState extends State<Profil> {

  Regime _regime = Regime.aucun;

  static List<Allergie> _allergies = [
    Allergie(id: 1, name: "Gluten"),
    Allergie(id: 2, name: "Arachides"),
    Allergie(id: 3, name: "Lactose"),
    Allergie(id: 4, name: "Noix"),
  ];
  final _itemsallergie = _allergies
      .map((allergie) => MultiSelectItem<Allergie>(allergie, allergie.name))
      .toList();
  List<Allergie> _selectedallergie = [];

  static List<Aliment> _aliment = [
    Aliment(id: 1, name: "Oignons"),
    Aliment(id: 2, name: "Porc"),
    Aliment(id: 3, name: "Chou-fleur"),
    Aliment(id: 4, name: "Endives"),
  ];
  final _itemsaliments = _aliment
      .map((aliment) => MultiSelectItem<Aliment>(aliment, aliment.name))
      .toList();
  List<Aliment> _selectedaliment = [];
  final TextEditingController _nombrefoyerFilter = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
        appBar: AppBar(
        bottom: TabBar(
        tabs: [
          Tab(text: 'Social'),
          Tab(text: 'Favoris'),
          Tab(text: 'Paramètres')
          ],
          ),
          title: Text('Page Profil'),
          ),
          body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  padding: EdgeInsets.only(left : 35.0, top: 25.0, right: 35.0),
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                          children: [
                          Container(
                            child: Icon(Icons.image, size : MediaQuery.of(context).size.width * 0.3,),
                          ),
                            SizedBox(width: MediaQuery.of(context).size.width * 0.03,),
                            Container(
                                child : Expanded(
                                    child: Container(
                                        child : Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children : [
                                              Container (
                                                  child : Text('Prénom Nom',
                                                    textAlign: TextAlign.left,
                                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold),
                                                  )
                                              ),
                                              Container (
                                                  child : Text('Age - régime',
                                                    textAlign: TextAlign.left,
                                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04,),
                                                  )
                                              ),
                                              Container (
                                                  child : Text('Plat favoris : ',
                                                    textAlign: TextAlign.left,
                                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04,),
                                                  )
                                              ),
                                            ]
                                        )
                                    )
                                )
                            )
                            ],
                      ),
                        SizedBox(height: MediaQuery.of(context).size.width * 0.02),
                          Container(
                              width: MediaQuery.of(context).size.width * 1,
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
                                        Row(
                                          children: [
                                            Container(
                                              child: Text('Suivre',
                                                textAlign: TextAlign.left,
                                                style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold),
                                              )
                                            ),
                                            SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
                                            Container(
                                                child : Text('Abonnements',
                                                  textAlign: TextAlign.left,
                                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04, color: Colors.black45),
                                                )
                                            ),
                                            SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
                                            Container(
                                                child : Text('|',
                                                  textAlign: TextAlign.left,
                                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04, color: Colors.black45),
                                                )
                                            ),
                                            SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
                                            Container(
                                                child : Text('Abonnés',
                                                  textAlign: TextAlign.left,
                                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04, color: Colors.black45),
                                                )
                                            )
                                          ],
                                        ),
                                      ]
                                  ),
                                ),
                              )
                          ),
                        SizedBox(height: MediaQuery.of(context).size.width * 0.02),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.7,
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
                                              child: Text('Activités',
                                                textAlign: TextAlign.left,
                                                style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold),
                                              )
                                          ),
                                          ]
                                    )
                                )
                            )
                        ),

          ]
              )))])),


          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                      width: MediaQuery.of(context).size.width * 1,
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
                            Row(
                              children: [
                                Container(
                                  child: Icon(Icons.star, size : 30, color: Colors.yellow,),
                                ),
                                SizedBox(width: 20,),
                                Container(
                                  child : Text('Recettes favorites',
                                    textAlign: TextAlign.left,
                                    style : TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                                )
                        )
                              ],
                  ),
                        ]
                    ),
                  ),
                )
                ),
                  Container(
                        width: MediaQuery.of(context).size.width * 1,
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
                                  child : Text('Toutes',
                                    textAlign: TextAlign.left,
                                    style : TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                                )
                                ),
                                   SizedBox(height: 10),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                                child : Text('Recette 1 ',
                                                  textAlign: TextAlign.left,
                                                  style : TextStyle(fontSize: 20.0),
                                                )
                                            ),
                                            SizedBox(width: 60,),
                                            Container(
                                                child : Text('Recette 2',
                                                  textAlign: TextAlign.left,
                                                  style : TextStyle(fontSize: 20.0),
                                                )
                                            ),
                                          ],
                                        ),
                                        SizedBox(height:  10,),
                                        Row(
                                          children: [
                                            Container(
                                                child : Text('Recette 3 ',
                                                  textAlign: TextAlign.left,
                                                  style : TextStyle(fontSize: 20.0),
                                                )
                                            ),
                                            SizedBox(width: 60,),
                                            Container(
                                                child : Text('Recette 4',
                                                  textAlign: TextAlign.left,
                                                  style : TextStyle(fontSize: 20.0),
                                                )
                                            ),
                                          ],
                                        ),
                                        SizedBox(height:  10,),
                                        Row(
                                          children: [
                                            Container(
                                                child : Text('Recette 5 ',
                                                  textAlign: TextAlign.left,
                                                  style : TextStyle(fontSize: 20.0),
                                                )
                                            ),
                                            SizedBox(width: 60,),
                                            Container(
                                                child : Text('Recette 6',
                                                  textAlign: TextAlign.left,
                                                  style : TextStyle(fontSize: 20.0),
                                                )
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                ]
                  )
                  )
                  )
                  ),
                Container(
                    width: MediaQuery.of(context).size.width * 1,
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
                                      child : Text('Collections',
                                        textAlign: TextAlign.left,
                                        style : TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                                      )
                                  ),
                                  SizedBox(height: 10),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                              child : Text('Collection 1 ',
                                                textAlign: TextAlign.left,
                                                style : TextStyle(fontSize: 20.0),
                                              )
                                          ),
                                          SizedBox(width: 40,),
                                          Container(
                                              child : Text('Collection 2',
                                                textAlign: TextAlign.left,
                                                style : TextStyle(fontSize: 20.0),
                                              )
                                          ),
                                        ],
                                      ),
                                      SizedBox(height:  10,),
                                      Row(
                                        children: [
                                          Container(
                                              child : Text('Collection 3 ',
                                                textAlign: TextAlign.left,
                                                style : TextStyle(fontSize: 20.0),
                                              )
                                          ),
                                          SizedBox(width: 40,),
                                          Container(
                                              child : Text('Collection 4',
                                                textAlign: TextAlign.left,
                                                style : TextStyle(fontSize: 20.0),
                                              )
                                          ),
                                        ],
                                      ),

                                      SizedBox(height:  10,),
                                      Row(
                                        children: [
                                          Container(
                                              child : Text('Collection 5 ',
                                                textAlign: TextAlign.left,
                                                style : TextStyle(fontSize: 20.0),
                                              )
                                          ),
                                          SizedBox(width: 40,),
                                          Container(
                                              child : Text('Collection 6',
                                                textAlign: TextAlign.left,
                                                style : TextStyle(fontSize: 20.0),
                                              )
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ]
                            )
                        )
                    )
                )
              ],
            ),
      ),

            SingleChildScrollView(
              child: Column(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width * 1,
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
                                  Row(
                                    children: [
                                      Container(
                                        child: Icon(Icons.settings, size : MediaQuery.of(context).size.width * 0.1,),
                                      ),
                                      SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
                                      Container(
                                          child : Text('Paramètres du profil',
                                            textAlign: TextAlign.left,
                                            style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                                          )
                                      )
                                    ],
                                  ),
                                ]
                            ),
                          ),
                        )
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 1,
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
                                  Row(
                                    children: [
                                      Container(
                                        child: Icon(Icons.image, size : MediaQuery.of(context).size.width * 0.3,),
                                      ),
                                      SizedBox(width: MediaQuery.of(context).size.width * 0.03,),
                                      Container(
                                        child : Expanded(
                                          child: Container(
                                            child : Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children : [
                                                Container (
                                                  child : Text('Prénom Nom',
                                                    textAlign: TextAlign.left,
                                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold),
                                                  )
                                              ),
                                                Container (
                                                    child : Text('Age - régime',
                                                      textAlign: TextAlign.left,
                                                      style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04,),
                                                    )
                                                ),
                                                Container (
                                                    child : Text('Plat favoris : ',
                                                      textAlign: TextAlign.left,
                                                      style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04,),
                                                    )
                                                ),
                                              ]
                                            )
                                          )
                                          )
                                      )
                                    ],
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.width * 0.02),
                                  Container(
                                      padding: EdgeInsets.symmetric(horizontal : MediaQuery.of(context).size.width * 0.25),
                                      height: MediaQuery.of(context).size.width * 0.06,
                                    child: Container(
                                      child : Material(
                                        borderRadius: BorderRadius.circular(15.0),
                                        shadowColor: Colors.black26,
                                        color: Colors.white,
                                        elevation: 7.0,
                                        child: InkWell(
                                          onTap: () {},
                                          child:
                                          Center(
                                            child: Text('Modifier',
                                                style: TextStyle(fontWeight: FontWeight.bold,),
                                          ),
                                          )

                                        ),
                                      ),
                                    )
                                  ),
                                ]
                            ),
                          ),
                        )
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 1,
                        padding: EdgeInsets.only(left : 35.0, top: 25.0, right: 35.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(15.0),
                          shadowColor: Colors.black26,
                          color: Colors.white,
                          elevation: 7.0,
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      child : Text('Régime souhaité',
                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04, fontWeight: FontWeight.bold),
                                      )
                                  ),
                                  Row( children : [
                                    Radio(
                                      value: Regime.aucun,
                                      groupValue: _regime,
                                      activeColor: Colors.lightGreen,
                                      onChanged: (Regime value) {
                                        setState(() {
                                          _regime = value;
                                        });
                                        },
                                    ),
                                    Text('Aucun',
                                      style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                      textAlign: TextAlign.left,),
                                  ]
                                  ),
                                  Row(children : [
                                    Radio(
                                      value: Regime.vegetarien,
                                      groupValue: _regime,
                                      activeColor: Colors.lightGreen,
                                      onChanged: (Regime value) {
                                        setState(() {
                                          _regime = value;
                                        });
                                        },
                                    ),
                                    Text('Végétarien',
                                      style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                      textAlign: TextAlign.left,),
                                  ]
                                  ),
                                  Row(children : [
                                    Radio(
                                      value: Regime.flexitarien,
                                      groupValue: _regime,
                                      activeColor: Colors.lightGreen,
                                      onChanged: (Regime value) {
                                        setState(() {
                                          _regime = value;
                                        });
                                      },
                                    ),
                                    Text('Flexitarien',
                                      style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                      textAlign: TextAlign.left,),
                                  ]
                                  ),
                                  Row(children : [
                                    Radio(
                                      value: Regime.perscitarien,
                                      groupValue: _regime,
                                      activeColor: Colors.lightGreen,
                                      onChanged: (Regime value) {
                                        setState(() {
                                          _regime = value;
                                        });
                                      },
                                    ),
                                      Text('Perscitarien',
                                      style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                      textAlign: TextAlign.left,),
                                  ]
                                  )
                                ]
                                  ),
                            ),
                          ),
                        ),

                                  Container(
                                      width: MediaQuery.of(context).size.width * 1,
                                      padding: EdgeInsets.only(left : 35.0, top: 25.0, right: 35.0),
                                      child: Material(
                                      borderRadius: BorderRadius.circular(15.0),
                                      shadowColor: Colors.black26,
                                      color: Colors.white,
                                      elevation: 7.0,
                                        child: Container(
                                        padding: EdgeInsets.all(10.0),
                                          child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                                child : Text('Allergies',
                                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04, fontWeight: FontWeight.bold),
                                                )
                                            ),
                                            SizedBox(height: MediaQuery.of(context).size.width * 0.04),
                                            MultiSelectDialogField(
                                                items: _itemsallergie,
                                                title: Text("Allergies"),
                                                selectedColor: Colors.lightGreen,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(40)),
                                                  border: Border.all(
                                                    width: 2,
                                                  ),
                                                ),
                                                buttonText: Text("Ajouter",style: TextStyle(fontSize: 16,),
                                                ),
                                                onConfirm: (results) {
                                                  _selectedallergie = results;
                                                },),
                                      ])
                                  )
        )),
                Container(
                width: MediaQuery.of(context).size.width * 1,
                padding: EdgeInsets.only(left : 35.0, top: 25.0, right: 35.0),
                    child: Material(
                    borderRadius: BorderRadius.circular(15.0),
                    shadowColor: Colors.black26,
                    color: Colors.white,
                    elevation: 7.0,
                        child: Container(
                        padding: EdgeInsets.all(10.0),
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                                            Container(
                                                child : Text('Aliments non désirés',
                                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04, fontWeight: FontWeight.bold),
                                                )
                                            ),
                                            SizedBox(height: MediaQuery.of(context).size.width * 0.04),

                                            MultiSelectDialogField(
                                              items: _itemsaliments,
                                              title: Text("Aliments non désirés"),
                                              selectedColor: Colors.lightGreen,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(40)),
                                                border: Border.all(
                                                  width: 2,
                                                ),
                                              ),
                                              buttonText: Text("Ajouter", style: TextStyle(fontSize: 16,),
                                              ),
                                              onConfirm: (results) {
                                                _selectedaliment = results;
                                              },),
                                            ]) ))),
                Container(
                width: MediaQuery.of(context).size.width * 1,
                padding: EdgeInsets.only(left : 35.0, top: 25.0, right: 35.0),
                    child: Material(
                    borderRadius: BorderRadius.circular(15.0),
                    shadowColor: Colors.black26,
                    color: Colors.white,
                    elevation: 7.0,
                      child: Container(
                      padding: EdgeInsets.all(10.0),
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child : Text('Nombre de personnes dans le foyer',
                            style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04, fontWeight: FontWeight.bold),
                            )
                            ),
                              Container(
                                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                                child:TextField(
                                controller : _nombrefoyerFilter,
                                decoration: new InputDecoration(labelText: "Taper un nombre"),
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ], // Only numbers can be entered
                              )),]))))
                  ]
              ),
            ),
      ]
          ),
            bottomNavigationBar: Menu(currentindex : 4),
        )
    );
  }
}
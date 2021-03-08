import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'Routes.dart';
import 'Menu.dart';

class Inscription_suite extends StatefulWidget {
  @override
  _Inscription_suiteState createState() => _Inscription_suiteState();
  Inscription_suite({Key key}): super(key: key);
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

class _Inscription_suiteState extends State<Inscription_suite> {
  @override
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

  int _nombrefoyer;

  _Inscription_suiteState() {
    _nombrefoyerFilter.addListener(_nombrefoyerListen);
  }

  void _nombrefoyerListen() {
    if (_nombrefoyerFilter.text.isEmpty) {
      _nombrefoyer = 0;
    } else {
      _nombrefoyer = int.parse(_nombrefoyerFilter.text);
    }
  }



  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      body:
      SingleChildScrollView(
            child:
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                              child: Text(
                                'Inscription',
                                style:
                                TextStyle(fontSize: 65.0, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Type de régime souhaité : ',
                                style : TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                              Column(
                                  children : <Widget>[
                                    ListTile(
                                      title: const Text(
                                        'Végétarien',
                                        style : TextStyle(fontSize: 15.0),
                                        textAlign: TextAlign.left,),
                                      leading: Radio(
                                        value: Regime.vegetarien,
                                        groupValue: _regime,
                                        activeColor: Colors.lightGreen,
                                        onChanged: (Regime value) {
                                          setState(() {
                                            _regime = value;
                                          });
                                        },
                                      ),
                                    ),
                                    ListTile(
                                      title: const Text(
                                        'Flexitarien',
                                        style : TextStyle(fontSize: 15.0),
                                        textAlign: TextAlign.left,),
                                      leading: Radio(
                                        value: Regime.flexitarien,
                                        groupValue: _regime,
                                        activeColor: Colors.lightGreen,
                                        onChanged: (Regime value) {
                                          setState(() {
                                            _regime = value;
                                          });
                                        },
                                      ),
                                    ),
                                    ListTile(
                                      title: const Text('Pescitarien',
                                        style : TextStyle(fontSize: 15.0),
                                        textAlign: TextAlign.left,),

                                      leading: Radio(
                                        value: Regime.perscitarien,
                                        groupValue: _regime,
                                        activeColor: Colors.lightGreen,
                                        onChanged: (Regime value) {
                                          setState(() {
                                            _regime = value;
                                          });
                                        },
                                      ),
                                    ),
                                    ListTile(
                                      title: const Text('Vegan',
                                        style : TextStyle(fontSize: 15.0),
                                        textAlign: TextAlign.left,),
                                      focusColor: Colors.lightGreen,
                                      hoverColor: Colors.lightGreen,
                                      leading: Radio(
                                        value: Regime.vegan,
                                        groupValue: _regime,
                                        activeColor: Colors.lightGreen,
                                        onChanged: (Regime value) {
                                          setState(() {
                                            _regime = value;
                                          });
                                        },
                                      ),
                                    ),
                                    ListTile(
                                      title: const Text('Aucun',
                                        style : TextStyle(fontSize: 15.0),
                                        textAlign: TextAlign.left,),
                                      leading: Radio(
                                        value: Regime.aucun,
                                        groupValue: _regime,
                                        activeColor: Colors.lightGreen,
                                        onChanged: (Regime value) {
                                          setState(() {
                                            _regime = value;
                                          });
                                        },
                                      ),
                                    ),
                                  ]
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                                child : MultiSelectDialogField(
                                  items: _itemsallergie,
                                  title: Text("Allergies"),
                                  selectedColor: Colors.lightGreen,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(40)),
                                    border: Border.all(
                                      width: 2,
                                    ),
                                  ),
                                  buttonText: Text(
                                    "Allergies",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  onConfirm: (results) {
                                    _selectedallergie = results;
                                  },),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                                child : MultiSelectDialogField(
                                  items: _itemsaliments,
                                  title: Text("Aliments non désirés"),
                                  selectedColor: Colors.lightGreen,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(40)),
                                    border: Border.all(
                                      width: 2,
                                    ),
                                  ),
                                  buttonText: Text(
                                    "Aliments non désirés",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  onConfirm: (results) {
                                    _selectedaliment = results;
                                  },),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 30.0),
                                child:TextField(
                                  controller : _nombrefoyerFilter,
                                  decoration: new InputDecoration(labelText: "Nombre de personnes dans le foyer :"),
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.digitsOnly
                                  ], // Only numbers can be entered
                                )
                              ),

                              SizedBox(height: 50.0),
                              Container(
                                  height: 40.0,
                                  child: Material(
                                    borderRadius: BorderRadius.circular(20.0),
                                    shadowColor: Colors.greenAccent,
                                    color: Colors.green,
                                    elevation: 7.0,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.popAndPushNamed(context, home,);
                                        _creercompte();
                                      },
                                      child: Center(
                                        child: Text(
                                          'INSCRIPTION',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Montserrat'),
                                        ),
                                      ),
                                    ),
                                  )),
                              SizedBox(height: 20.0),
                              Container(
                                height: 40.0,
                                color: Colors.transparent,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black,
                                          style: BorderStyle.solid,
                                          width: 1.0),
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(20.0)),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.popAndPushNamed(context, inscription,);
                                    },
                                    child:

                                    Center(
                                      child: Text('Retour',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Montserrat')),
                                    ),


                                  ),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Déjà inscrit sur Kale ?',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          SizedBox(width: 5.0),
                          InkWell(
                            onTap: () {
                              Navigator.popAndPushNamed(context, connexion,);
                            },
                            child: Text('Connexion',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline)),
                          )
                        ],
                      )
                    ]
                ),
                ),



      bottomNavigationBar: Menu(currentindex : 0),
    );
  }

  _creercompte (){
    print('the user wants to create an account with $_regime and $_selectedallergie and $_selectedaliment and $_nombrefoyer');
  }
}
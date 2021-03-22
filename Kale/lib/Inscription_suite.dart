import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'Routes.dart';
import 'SearchBar.dart';
import 'Menu.dart';

class Inscription_suite extends StatefulWidget {
  @override
  _Inscription_suiteState createState() => _Inscription_suiteState();
  Inscription_suite({Key key}): super(key: key);
}

//Utilisé dans les boutons radio, lorsque l'on sélectionne son régime

//Il faut initialiser les valeurs des boutons radio avant de pouvoir les utiliser plus tard
enum Regime {aucun, vegetarien, flexitarien, perscitarien, vegan }

//Utilisé dans les boutons de sélection multiple, pour les allergies et les aliments que l'on aime pas.
//Il faut initialiser les valeurs des boutons multi select avant de pouvoir les utiliser plus tard
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
  //Il faut initialer la valeur qui sera toujours remplie
  Regime _regime = Regime.aucun;

  //On intialise les valeurs possibles.
  // Pour les allergies et les aliments, il aurait peut être fallu implémenter dans la base de données
  // toutes les allergies et aliments possibles.
  static List<Allergie> _allergies = [
    Allergie(id: 1, name: "Gluten"),
    Allergie(id: 2, name: "Arachides"),
    Allergie(id: 3, name: "Lactose"),
    Allergie(id: 4, name: "Noix"),
  ];

  //On attribue les valeurs au widget MultiSelectItem.
  final _itemsallergie = _allergies
      .map((allergie) => MultiSelectItem<Allergie>(allergie, allergie.name))
      .toList();
  List<Allergie> _selectedallergie = [];

  //On intialise les valeurs possibles.
  static List<Aliment> _aliment = [
    Aliment(id: 1, name: "Oignons"),
    Aliment(id: 2, name: "Porc"),
    Aliment(id: 3, name: "Chou-fleur"),
    Aliment(id: 4, name: "Endives"),
  ];

  //On attribue les valeurs au widget MultiSelectItem.
  final _itemsaliments = _aliment
      .map((aliment) => MultiSelectItem<Aliment>(aliment, aliment.name))
      .toList();
  List<Aliment> _selectedaliment = [];

  //Listener pour le TextField correspondant
  final TextEditingController _nombrefoyerFilter = new TextEditingController();

  int _nombrefoyer;

  _Inscription_suiteState() {
    _nombrefoyerFilter.addListener(_nombrefoyerListen);
  }
// S'il y a quelque chose d'écrit, on l'envoit sous forme de texte à la base de données
  void _nombrefoyerListen() {
    if (_nombrefoyerFilter.text.isEmpty) {
      _nombrefoyer = 0;
    } else {
      _nombrefoyer = int.parse(_nombrefoyerFilter.text);
    }
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset('assets/images/logo_simple_couleur.png', width:MediaQuery.of(context).size.width * 0.13, height:MediaQuery.of(context).size.width * 0.13),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              color:Colors.green,
              onPressed:() {
                setState(() {
                  showSearch(
                    context: context,
                    delegate: CustomSearchDelegate(),);});}
                    ),
          IconButton(
            icon: Icon(Icons.filter_list, color:Colors.green,),
            onPressed: () {showFilterDialog(context);},
          ),
        ],
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.03, MediaQuery.of(context).size.width * 0.27, 0.0, 0.0),
                      child: Text('Inscription',
                        style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.18, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],),
              ),
              Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.09, left: MediaQuery.of(context).size.width * 0.06, right: MediaQuery.of(context).size.width * 0.06),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          child : Text('Type de régime souhaité',
                            style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                          )
                      ),
                      Row( children : [
                        Radio(
                          value: Regime.aucun,
                          groupValue: _regime,
                          activeColor: Colors.lightGreen,
                          onChanged: (Regime value) {
                            setState(() {
                              _regime = value;});},
                        ),
                        Text('Aucun',
                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04), textAlign: TextAlign.left,),
                      ]),
                      Row(children : [
                        Radio(
                          value: Regime.vegetarien,
                          groupValue: _regime,
                          activeColor: Colors.lightGreen,
                          onChanged: (Regime value) {
                            setState(() {
                              _regime = value;});},
                        ),
                        Text('Végétarien',
                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04), textAlign: TextAlign.left,),
                      ]),
                      Row(children : [
                        Radio(
                          value: Regime.flexitarien,
                          groupValue: _regime,
                          activeColor: Colors.lightGreen,
                          onChanged: (Regime value) {
                            setState(() {
                              _regime = value;});},
                        ),
                        Text('Flexitarien',
                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04), textAlign: TextAlign.left,),
                      ]),
                      Row(children : [
                        Radio(
                          value: Regime.perscitarien,
                          groupValue: _regime,
                          activeColor: Colors.lightGreen,
                          onChanged: (Regime value) {
                            setState(() {
                              _regime = value;});},
                        ),
                        Text('Perscitarien',
                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04), textAlign: TextAlign.left,),
                      ])
                    ]),
              ),
              Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.09, left: MediaQuery.of(context).size.width * 0.06, right: MediaQuery.of(context).size.width * 0.06),
                child : MultiSelectDialogField(
                  items: _itemsallergie,
                  title: Text("Allergies"),
                  selectedColor: Colors.lightGreen,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    border: Border.all(width: 2,),
                  ),
                  buttonText: Text("Allergies",
                    style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.045,),
                  ),
                  onConfirm: (results) {_selectedallergie = results;},
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.09, left: MediaQuery.of(context).size.width * 0.06, right: MediaQuery.of(context).size.width * 0.06),
                child : MultiSelectDialogField(
                  items: _itemsaliments,
                  title: Text("Aliments non désirés"),
                  selectedColor: Colors.lightGreen,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    border: Border.all(width: 2,),
                  ),
                  buttonText: Text("Aliments non désirés",
                    style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.045,),
                  ),
                  onConfirm: (results) {_selectedaliment = results;},
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.09),
                  child:TextField(
                    controller : _nombrefoyerFilter,
                    decoration: new InputDecoration(labelText: "Nombre de personnes dans le foyer :"),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly], // Only numbers can be entered
                  )
              ),

              SizedBox(height: MediaQuery.of(context).size.width * 0.14),
              Container(
                  height: MediaQuery.of(context).size.width * 0.1,
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
                        child: Text('INSCRIPTION',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),
                        ),
                      ),
                    ),
                  )
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.06),
              Container(
                height: MediaQuery.of(context).size.width * 0.1,
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: MediaQuery.of(context).size.width * 0.003),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: InkWell(
                    onTap: () {Navigator.popAndPushNamed(context, inscription,);},
                    child: Center(
                      child: Text('Retour', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.width * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Déjà inscrit sur Kale ?',),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                  InkWell(
                    onTap: () {Navigator.popAndPushNamed(context, connexion,);},
                    child: Text('Connexion',
                        style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, decoration: TextDecoration.underline)),
                  ),
                ],),
              SizedBox(height: MediaQuery.of(context).size.width * 0.05)
            ]),
      ),
      bottomNavigationBar: Menu(currentindex : 0),
    );
  }

  _creercompte (){
    // Fonction de création de compte en base de données
  }
}
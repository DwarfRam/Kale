import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Menu.dart';
import 'SearchBar.dart';


class Ecoresp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EcorespState();
  }
}

//Utilisé dans le AlertDialog, lorsque l'on refuse une mission.
//Il faut initialiser les valeurs des boutons radio avant de pouvoir les utiliser plus tard
enum Raisons {temps, moyens, interet}

class _EcorespState extends State<Ecoresp> {

  //Il faut initialer la valeur qui sera toujours remplie lorsque la fenêtre AlertDialog sera ouverte.
  Raisons _raison = Raisons.temps;

  @override
  Widget build(BuildContext context) {
    // DefaultTabController permet de faire des tab au sein d'une même page
    return DefaultTabController(
        length: 2,
        child: Scaffold(
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
                  child: Container(
                    decoration: BoxDecoration(
                    image: DecorationImage(image :AssetImage('assets/images/background.png'), fit : BoxFit.cover )),
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
                                        child : Text('Statistiques', textAlign: TextAlign.left,
                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    Container(
                                      child : Text('Depuis le début de votre aventure Kale', textAlign: TextAlign.left,
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
                                                  //Ce nombre aurait été actualisé par ce qui aurait été renseigné par la base de données.
                                                  child : Text('12', textAlign: TextAlign.center,
                                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03, fontWeight: FontWeight.bold),
                                                  )
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding : EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03),
                                            child : Text('Litres d\'eau éconimisés', textAlign: TextAlign.center,
                                              style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04, fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ]),
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
                                                  //Ce nombre aurait été actualisé par ce qui aurait été renseigné par la base de données.
                                                  child : Text('12', textAlign: TextAlign.center,
                                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03, fontWeight: FontWeight.bold),
                                                  )
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding : EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03,),
                                            child : Text('Animaux sauvés', textAlign: TextAlign.center,
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
                                                  //Ce nombre aurait été actualisé par ce qui aurait été renseigné par la base de données.
                                                  child : Text('12', textAlign: TextAlign.center,
                                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03, fontWeight: FontWeight.bold),
                                                  )
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding : EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03,),
                                            child : Text('Kg de déchets triés', textAlign: TextAlign.center,
                                              style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04, fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],),
                                    ),
                                  ])
                              )
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
                                    child : Text('Missions', textAlign: TextAlign.left,
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
                                                    //Ce nombre aurait été actualisé par le numéro de mission dans la base de données.
                                                    child : Text('n°1', textAlign: TextAlign.center,
                                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03, fontWeight: FontWeight.bold),
                                                    )
                                                  ),
                                                  SizedBox(height: MediaQuery.of(context).size.width * 0.02),
                                                  Container(
                                                    //Ce texte aurait été actualisé par la mission dans la base de données.
                                                      child : Text('intitulé précédente mission', textAlign: TextAlign.center,
                                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                                      )
                                                  ),
                                                ]),
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
                                                  //Ce nombre aurait été actualisé par le numéro de mission dans la base de données.
                                                    child : Text('n°2', textAlign: TextAlign.center,
                                                      style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04, fontWeight: FontWeight.bold),
                                                    )
                                                ),
                                                SizedBox(height: MediaQuery.of(context).size.width * 0.02),
                                                Expanded(
                                                  child: Container(
                                                    //Ce texte aurait été actualisé par la mission dans la base de données.
                                                      child : Text('intitulé mission actuelle', textAlign: TextAlign.center,
                                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                      )
                                                  ),
                                                ),
                                                Container(
                                                    padding : EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                            child :Material(
                                                              borderRadius: BorderRadius.circular(20.0),
                                                              shadowColor: Colors.red,
                                                              color: Colors.red,
                                                              elevation: 7.0,
                                                              child : GestureDetector(
                                                                onTap: () {
                                                                  //AlertDialog est un widget stateless, il aurait donc fallu trouver une méthode pour le rendre stateful.
                                                                  showDialog(context: context, builder: (_) => AlertDialog(
                                                                    title: Text("Pourquoi voulez-vous rejeter cette mission ?"),
                                                                    content : Container(
                                                                      height: MediaQuery.of(context).size.width * 0.4,
                                                                      child :
                                                                      Column (
                                                                          children : [
                                                                            Row(
                                                                                children : [
                                                                                  Radio(
                                                                                        value: Raisons.temps,
                                                                                        groupValue: _raison,
                                                                                        activeColor: Colors.lightGreen,
                                                                                        onChanged: (Raisons value) {
                                                                                          setState(() {
                                                                                            _raison = value;});},
                                                                                  ),
                                                                                  Text('Je n\'ai pas le temps', textAlign: TextAlign.left,
                                                                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                                                    ),
                                                                                ]),
                                                                            Row(
                                                                                children : [
                                                                                  Radio(
                                                                                    value: Raisons.moyens,
                                                                                    groupValue: _raison,
                                                                                    activeColor: Colors.lightGreen,
                                                                                    onChanged: (Raisons value) {
                                                                                      setState(() {
                                                                                        _raison = value;});},
                                                                                  ),
                                                                                  Text('Je n\'ai pas les moyens',textAlign: TextAlign.left,
                                                                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                                                    ),
                                                                                ]),
                                                                            Row(
                                                                                children : [
                                                                                  Radio(
                                                                                    value: Raisons.interet,
                                                                                    groupValue: _raison,
                                                                                    activeColor: Colors.lightGreen,
                                                                                    onChanged: (Raisons value) {
                                                                                      setState(() {
                                                                                        _raison = value;});},
                                                                                  ),
                                                                                  Text('Il ne m\'intéresse pas',textAlign: TextAlign.left,
                                                                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                                                    ),
                                                                                ]),
                                                                            ])
                                                                    ),
                                                                    actions: [
                                                                      TextButton(child : Text("Retour"), onPressed: () => Navigator.pop(context),),
                                                                      // Ici il y aurait eu une fonction pour classer la mission comme "refusée" dans la base de données.
                                                                      // Nous aurions alors remplacé la mission refusée par la mission suivante.
                                                                      TextButton(child : Text("Refuser"), onPressed: (){Navigator.pop(context);},),
                                                                    ],
                                                                  )
                                                                  );},
                                                                child: Container(
                                                                  child: Icon(Icons.clear, color: Colors.white),
                                                                ),
                                                              )
                                                            )
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
                                                                showDialog(context: context, builder: (_) => AlertDialog(
                                                                  title: Text("Avez-vous réussi cette mission ?"),
                                                                  content : Container(
                                                                    height: MediaQuery.of(context).size.width * 0.1,
                                                                    child :
                                                                    Column (
                                                                        children : [
                                                                        ]),
                                                                  ),
                                                                  actions: [
                                                                    TextButton(child : Text("Retour"), onPressed: () => Navigator.pop(context),),
                                                                    // Ici, nous aurions dû mettre la validation, soit grâce à la validation d'une photo par les autres utilisateurs,
                                                                    // soit en mettant la photo de sa réalisation.
                                                                    TextButton(child : Text("Valider"), onPressed: (){Navigator.pop(context);},),
                                                                  ],
                                                                )
                                                                );},
                                                              child: Container(
                                                                child: Icon(Icons.done, color: Colors.white),
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                      ],)
                                                )
                                              ]),
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
                                                  //Ce nombre aurait été actualisé par le numéro de mission dans la base de données.
                                                    child : Text('n°3', textAlign: TextAlign.center,
                                                      style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03, fontWeight: FontWeight.bold),
                                                    )
                                                ),
                                                SizedBox(height: MediaQuery.of(context).size.width * 0.01),
                                                Container(
                                                  //Ce texte aurait été actualisé par la mission dans la base de données.
                                                    child : Text('intitulé mission suivante', textAlign: TextAlign.center,
                                                      style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                                    )
                                                )
                                              ]),
                                        ),
                                      )
                                    ],),
                                ],),
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
                                                )
                                              ),
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
                                                ],),

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
                                                  // Nous aurions créé une fonction pour aller chercher dans la base de données, le niveau de l'utilisateur.
                                                  // Il y aurait eu une système de points, donnés par les missions.
                                                  child: Container (
                                                      padding : EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                                                      child : Text('1 / 10 XP',style : TextStyle(fontSize:MediaQuery.of(context).size.width * 0.03))
                                                  ),
                                                )
                                              ],)
                                            ])
                                    ),
                                  ),
                                ),
                              ),
                            ),

                                  SizedBox(width: MediaQuery.of(context).size.width * 0.03,),
                                  Container(
                                    child : Expanded(
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
                                                      // Nous aurions créé une fonction pour aller chercher quelles sont les missions que l'utilisateur
                                                      // a validé et donc quels badges il a débloqué.
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
                                                          ],)
                                                    )
                                                    ])
                                            ),
                                          ),
                                        ),
                                  ),
                                  ),
                          ]),
                        SizedBox(height: MediaQuery.of(context).size.width * 0.06)
                      ],
                    ),
                  ),
              ),

              SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                    image: DecorationImage(image :AssetImage('assets/images/background.png'), fit : BoxFit.cover )),
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
                                      Column(
                                          children: [
                                            // Nous aurions créé une fonction qui va chercher les textes des conseils, et créé autant de conseils que nécessaire.
                                            //Certains conseils auraient été débloqués en fonction du niveau et des missions effectuées.
                                            Container(
                                              child : Text('Conseil n°1',
                                              textAlign: TextAlign.left,
                                              style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                            SizedBox(height:MediaQuery.of(context).size.width * 0.03),
                                            Container(
                                              child : Text('texte conseil',
                                                textAlign: TextAlign.left,
                                                style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                              ),
                                            )
                                          ]),
                                    ],)
                              )
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
                                        Column(
                                            children: [
                                              // Nous aurions créé une fonction qui va chercher les textes des conseils, et créé autant de conseils que nécessaire.
                                              //Certains conseils auraient été débloqués en fonction du niveau et des missions effectuées.
                                              Container(
                                                child : Text('Conseil n°2',
                                                  textAlign: TextAlign.left,
                                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                              SizedBox(height:MediaQuery.of(context).size.width * 0.03),
                                              Container(
                                                child : Text('texte conseil',
                                                  textAlign: TextAlign.left,
                                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                ),
                                              )
                                            ]),
                                      ],)
                                )
                            ),
                          ),
                          SizedBox(height : MediaQuery.of(context).size.width * 1)
                  ],),
                  )
              ),
            ],),
          bottomNavigationBar: Menu(currentindex : 1),
        )
    );
  }
}
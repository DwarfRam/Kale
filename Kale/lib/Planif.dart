import 'package:flutter/material.dart';
import 'Menu.dart';
import 'SearchBar.dart';
import 'Routes.dart';

class Planif extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PlanifState();
  }
}
//Utilisé dans les boutons radio, dans le AlertDialog des paramètres du calendrier.
enum Affichage {tableau, liste}

class _PlanifState extends State<Planif> {
//Il faut initialer la valeur qui sera toujours remplie.
  Affichage _affichage = Affichage.tableau;

  //Initialisation des variables récupérées pour la liste de courses.
  bool valuefirst = false;
  bool valuesecond = false;

  //Initialisation de la date du calendrier.
  DateTime dateTime;

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
                      child : Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left :MediaQuery.of(context).size.width * 0.08),
                            child : Row(
                                children: [
                                  Container(
                                    child: InkWell(
                                        onTap: () {
                                          //Utilisation d'un calendrier pour sélectionner la date à laquelle on veut ajouter une recette.
                                          //Par la suite, on aurait demandé à l'utilisateur la recette qu'il voulait ajouter au calendrier.
                                          showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(2000),
                                            lastDate: DateTime(2025),).then((date) {setState(() {dateTime = date;});});
                                          },
                                        child: Icon(Icons.add_circle, color: Colors.deepOrangeAccent, size : MediaQuery.of(context).size.width * 0.1)
                                    ),
                                  ),
                                  SizedBox(width:MediaQuery.of(context).size.width * 0.6),
                                  Container(
                                    child: InkWell(
                                        onTap: () {
                                          // AlertDialog permettant de gérer les paramètres d'affichage du calendrier.
                                          // L'utilisateur aurait pu sélectionner les jours et les repas qu'il voulait voir
                                          // Peut être aurait-il fallu utiliser un autre widget car AlertDialog est stateless et n'aurait peut être pas permit
                                          // d'enregistrer des changements dans la page de façon immédiate.
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return StatefulBuilder(
                                                builder: (context, setState) {
                                                  return AlertDialog(
                                                    content: SingleChildScrollView(
                                                        child : Column (
                                                            children : [
                                                              Container(
                                                                  child : Column(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      Container(
                                                                          child : Text('Affichage', textAlign: TextAlign.left,
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
                                                                                    _affichage = value;});},
                                                                              ),
                                                                              Text('Tableau', style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04), textAlign: TextAlign.left,),
                                                                            ]),
                                                                        Row( children : [
                                                                          Radio(
                                                                            value: Affichage.liste,
                                                                            groupValue: _affichage,
                                                                            activeColor: Colors.lightGreen,
                                                                            onChanged: (Affichage value) {
                                                                              setState(() {
                                                                                _affichage = value;});},
                                                                          ),
                                                                          Text('Liste', style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04), textAlign: TextAlign.left,),
                                                                        ])
                                                                      ]),
                                                                    ])
                                                              ),
                                                              Container(
                                                                child : Column(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      Container(
                                                                          child : Text('Jours', textAlign: TextAlign.left,
                                                                            style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold, color: Colors.green),
                                                                          )
                                                                      ),
                                                                      Container(
                                                                          child : Column(
                                                                              children :[
                                                                                CheckboxListTile(
                                                                                  controlAffinity: ListTileControlAffinity.leading,
                                                                                  activeColor: Colors.green,
                                                                                  title: Text('Lundi', style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04,),),
                                                                                  value: this.valuefirst,
                                                                                  onChanged: (bool value) {
                                                                                    setState(() {
                                                                                      this.valuefirst = value;});},
                                                                                ),
                                                                                CheckboxListTile(
                                                                                  controlAffinity: ListTileControlAffinity.leading,
                                                                                  activeColor: Colors.green,
                                                                                  title: Text('Mardi', style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),),
                                                                                  value: this.valuesecond,
                                                                                  onChanged: (bool value) {
                                                                                    setState(() {
                                                                                      this.valuesecond = value;});},
                                                                                ),
                                                                                CheckboxListTile(
                                                                                  controlAffinity: ListTileControlAffinity.leading,
                                                                                  activeColor: Colors.green,
                                                                                  title: Text('Mercredi', style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),),
                                                                                  value: this.valuesecond,
                                                                                  onChanged: (bool value) {
                                                                                    setState(() {
                                                                                      this.valuesecond = value;});},),
                                                                                CheckboxListTile(
                                                                                  controlAffinity: ListTileControlAffinity.leading,
                                                                                  activeColor: Colors.green,
                                                                                  title: Text('Jeudi', style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),),
                                                                                  value: this.valuesecond,
                                                                                  onChanged: (bool value) {
                                                                                    setState(() {
                                                                                      this.valuesecond = value;});},
                                                                                ),
                                                                                CheckboxListTile(
                                                                                  controlAffinity: ListTileControlAffinity.leading,
                                                                                  activeColor: Colors.green,
                                                                                  title: Text('Vendredi', style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),),
                                                                                  value: this.valuesecond,
                                                                                  onChanged: (bool value) {
                                                                                    setState(() {
                                                                                      this.valuesecond = value;});},
                                                                                ),
                                                                                CheckboxListTile(
                                                                                  controlAffinity: ListTileControlAffinity.leading,
                                                                                  activeColor: Colors.green,
                                                                                  title: Text('Samedi', style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),),
                                                                                  value: this.valuesecond,
                                                                                  onChanged: (bool value) {
                                                                                    setState(() {
                                                                                      this.valuesecond = value;});},
                                                                                ),
                                                                                CheckboxListTile(
                                                                                  controlAffinity: ListTileControlAffinity.leading,
                                                                                  activeColor: Colors.green,
                                                                                  title: Text('Dimanche', style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),),
                                                                                  value: this.valuesecond,
                                                                        onChanged: (bool value) {
                                                                          setState(() {
                                                                            this.valuesecond = value;});},
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
                                                                        child : Text('Repas', textAlign: TextAlign.left,
                                                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold, color: Colors.green),
                                                                        )
                                                                    ),
                                                                    Container(
                                                                        child : Column(
                                                                            children :[
                                                                              CheckboxListTile(
                                                                                controlAffinity: ListTileControlAffinity.leading,
                                                                                activeColor: Colors.green,
                                                                                title: Text('Matin', style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04,),),
                                                                                value: this.valuefirst,
                                                                                onChanged: (bool value) {
                                                                                  setState(() {
                                                                                    this.valuefirst = value;});},
                                                                              ),
                                                                              CheckboxListTile(
                                                                                controlAffinity: ListTileControlAffinity.leading,
                                                                                activeColor: Colors.green,
                                                                                title: Text('Midi', style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),),
                                                                                value: this.valuesecond,
                                                                                onChanged: (bool value) {
                                                                                  setState(() {
                                                                                    this.valuesecond = value;});},
                                                                              ),
                                                                              CheckboxListTile(
                                                                                controlAffinity: ListTileControlAffinity.leading,
                                                                                activeColor: Colors.green,
                                                                                title: Text('En-cas', style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),),
                                                                                value: this.valuesecond,
                                                                                onChanged: (bool value) {
                                                                                  setState(() {
                                                                                    this.valuesecond = value;});},
                                                                              ),
                                                                              CheckboxListTile(
                                                                                controlAffinity: ListTileControlAffinity.leading,
                                                                                activeColor: Colors.green,
                                                                                title: Text('Soir', style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),),
                                                                                value: this.valuesecond,
                                                                                onChanged: (bool value) {
                                                                                  setState(() {
                                                                                    this.valuesecond = value;});},
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
                                                            Navigator.pop(context);});},
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
                                ]),
                          ),
                          Table(
                            // Dans chaque case de la Table, nous aurions ajouté les recettes des utilisateurs.
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
                                Column(children:[
                                  Container(
                                      padding : EdgeInsets.symmetric(vertical :  MediaQuery.of(context).size.width * 0.05, horizontal : MediaQuery.of(context).size.width * 0.01),
                                      child : InkWell(
                                        onTap: () {Navigator.popAndPushNamed(context, recette,);},
                                        child: Column(
                                          children : [
                                            Image.asset('assets/images/soupe.jpg', width:MediaQuery.of(context).size.width * 0.15, height:MediaQuery.of(context).size.width * 0.15),
                                            Text('Soupe de poireaux', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03, color: Colors.green, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),)
                                          ]
                                      ),
                                    )
                                  )
                                ]),
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
                          SizedBox(height: MediaQuery.of(context).size.width * 0.04,),
                        ],)
                  )
              ),
              SingleChildScrollView(
                child : Container(
                  padding: EdgeInsets.symmetric(horizontal :MediaQuery.of(context).size.width * 0.03, vertical : MediaQuery.of(context).size.width * 0.04),
                  child : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        //Même chose que les paramètres dans le calendrier.
                        padding : EdgeInsets.only(left : MediaQuery.of(context).size.width * 0.8, bottom : MediaQuery.of(context).size.width * 0.02),
                        child: InkWell(
                          onTap: () {},
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
                                    border : Border(bottom : BorderSide(color: Colors.black26),),
                                  ),
                                  child : Text('Lundi',textAlign: TextAlign.left,
                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                                  )
                              ),
                                //L'utilisateur aurait pu coché/décoché les ingrédient qu'il souhaitait ou non garder pour sa liste de courses
                                CheckboxListTile(
                                  controlAffinity: ListTileControlAffinity.leading,
                                  activeColor: Colors.green,
                                  secondary: Text('4 pièces', style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04,),),
                                  title: Text('Poireaux', style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04,),),
                                  value: this.valuefirst,
                                  onChanged: (bool value) {
                                    setState(() {
                                      this.valuefirst = value;});},
                                ),
                            CheckboxListTile(
                              controlAffinity: ListTileControlAffinity.leading,
                              activeColor: Colors.green,
                              secondary:Text('250g', style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),),
                              title: Text('Crème fraîche', style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),),
                              value: this.valuesecond,
                              onChanged: (bool value) {
                                setState(() {
                                  this.valuesecond = value;});},
                            ),
                            ],)
                      ),
                    Container(
                        padding : EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.06, vertical: MediaQuery.of(context).size.width * 0.03),
                        child : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                    border : Border(bottom : BorderSide(color: Colors.black26))
                                ),
                                child : Text('Mardi',textAlign: TextAlign.left,
                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                                )
                            )
                          ],)
                    ),
                    Container(
                        padding : EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.06, vertical: MediaQuery.of(context).size.width * 0.03),
                        child : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                    border : Border(bottom : BorderSide(color: Colors.black26))
                                ),
                                child : Text('Mercredi',textAlign: TextAlign.left,
                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                                )
                            )
                          ],)
                    ),
                    Container(
                        padding : EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.06, vertical: MediaQuery.of(context).size.width * 0.03),
                        child : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                    border : Border(bottom : BorderSide(color: Colors.black26))
                                ),
                                child : Text('Jeudi',textAlign: TextAlign.left,
                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                                )
                            )
                          ],)
                    ),
                    Container(
                        padding : EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.06, vertical: MediaQuery.of(context).size.width * 0.03),
                        child : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                    border : Border(bottom : BorderSide(color: Colors.black26))
                                ),
                                child : Text('Vendredi',textAlign: TextAlign.left,
                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                                )
                            )
                          ],)
                    ),
                      Container(
                        padding : EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.06, vertical: MediaQuery.of(context).size.width * 0.03),
                        child : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                    border : Border(bottom : BorderSide(color: Colors.black26))
                                ),
                                child : Text('Samedi',textAlign: TextAlign.left,
                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                                )
                            )
                          ],)
                    ),
                    Container(
                        padding : EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.06, vertical: MediaQuery.of(context).size.width * 0.03),
                        child : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                    border : Border(bottom : BorderSide(color: Colors.black26))
                                ),
                                child : Text('Dimanche',textAlign: TextAlign.left,
                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.06, fontWeight: FontWeight.bold),
                                )
                            )
                          ],)
                    )
                    ],)
                )
              ),
            ]
        ),
        bottomNavigationBar: Menu(currentindex : 3),
      )
    );
  }
}
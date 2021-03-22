import 'package:flutter/material.dart';
import 'Menu.dart';
import 'SearchBar.dart';
import 'Routes.dart';

class Ajout_recette extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Ajout_recetteState();
  }
}

class _Ajout_recetteState extends State<Ajout_recette> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.06),
                  child : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.04, right: MediaQuery.of(context).size.width * 0.04),
                          child: Column(
                            children: <Widget>[
                              TextField(
                                //Nous aurions ajouté des listeners pour récuperer les informations dans tous les TextField.
                                decoration: InputDecoration(
                                    labelText: 'Nom de la recette',
                                    labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.green))),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.width * 0.05),
                              TextField(
                                decoration: InputDecoration(
                                    labelText: 'Mot clés',
                                    labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.green))),
                                obscureText: true,
                              ),
                              SizedBox(height: MediaQuery.of(context).size.width * 0.05),
                              TextField(
                                // Pour les ingrédients et ustensiles, il aurait peut être fallu implémenter dans la base de données
                                // tous les ingrédients et ustensiles possibles, puis implémenter une recherche dans ces deux
                                //champs pour permettre à l'utilisateur de rentrer des champs corrects
                                // Il aurait aussi fallu ajouter un champ pour ajouter les quantités.
                                decoration: InputDecoration(
                                    labelText: 'Ingrédients',
                                    labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.green))),
                                obscureText: true,
                              ),
                              SizedBox(height: MediaQuery.of(context).size.width * 0.05),
                              TextField(
                                decoration: InputDecoration(
                                    labelText: 'Ustensiles',
                                    labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.green))),
                                obscureText: true,
                              ),
                              SizedBox(height: MediaQuery.of(context).size.width * 0.05),
                              TextField(
                                //Il aurait fallu ajouter un bouton pour ajouter plusieurs champs, pour plusieurs instructions
                                decoration: InputDecoration(
                                    labelText: 'Instructions',
                                    labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.green))),
                                obscureText: true,
                              ),
                              SizedBox(height: MediaQuery.of(context).size.width * 0.07),
                              Container(
                                height:  MediaQuery.of(context).size.width * 0.08,
                                  child: Material(
                                    borderRadius: BorderRadius.circular(20.0),
                                    shadowColor: Colors.greenAccent,
                                    color: Colors.green,
                                    elevation: 7.0,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.popAndPushNamed(context, recherche,);
                                        _creerrecette();},
                                      child: Center(
                                        child: Text(
                                          'Valider',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  )),
                            ],
                          )
                      ),
                    ])
              )
            ]),
      ),
      bottomNavigationBar: Menu(currentindex : 2),
    );
  }

  _creerrecette (){
    // Fonction de création de recette en base de données
  }
}






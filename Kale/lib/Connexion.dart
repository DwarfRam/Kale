import 'package:flutter/material.dart';
import 'Routes.dart';
import 'Menu.dart';
import 'SearchBar.dart';

class Connexion extends StatefulWidget {
  @override
  _ConnexionState createState() => new _ConnexionState();
}

class _ConnexionState extends State<Connexion> {

  //Listener pour "écouter" les informations renseignées et envoyer à la base de données, pour vérifier l'existante et l'exatitude des données renseignées.
  final TextEditingController _emailFilter = new TextEditingController();
  final TextEditingController _passwordFilter = new TextEditingController();
  String _email = "";
  String _password = "";

  _ConnexionState() {
    _emailFilter.addListener(_emailListen);
    _passwordFilter.addListener(_passwordListen);
  }

  // S'il y a quelque chose d'écrit, on l'envoit sous forme de texte à la base de données
  void _emailListen() {
    if (_emailFilter.text.isEmpty) {
      _email = "";
    } else {
      _email = _emailFilter.text;
    }
  }

  void _passwordListen() {
    if (_passwordFilter.text.isEmpty) {
      _password = "";
    } else {
      _password = _passwordFilter.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
        ],),
      //
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.03, MediaQuery.of(context).size.width * 0.27, 0.0, 0.0),
                      child: Text('Connexion',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.18, fontWeight: FontWeight.bold)),
                    ),
                  ],),
              ),
              Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.09, left: MediaQuery.of(context).size.width * 0.06, right: MediaQuery.of(context).size.width * 0.06),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        // Pour écouter ce qu'il y a d'écrit dans ce Textfield.
                        controller : _emailFilter,
                        decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.green))),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width * 0.03),
                      TextField(
                        // Pour écouter ce qu'il y a d'écrit dans ce Textfield.
                        controller : _passwordFilter,
                        decoration: InputDecoration(
                            labelText: 'Mot de passe',
                            labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.green))),
                        obscureText: true,
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width * 0.02),
                      Container(
                        alignment: Alignment(1.0, 0.0),
                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.03, left: MediaQuery.of(context).size.width * 0.06),
                        child: InkWell(
                          onTap: () {Navigator.popAndPushNamed(context, home,);},
                          child: Text('Mot de passe oublié ?',
                            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width * 0.1),
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
                              _connexioncompte();
                              },
                            child: Center(
                              child: Text('CONNEXION', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
                            ),
                          ),
                        ),
                      ),
                    ],)
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.035),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Nouveau sur Kale ?'),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                  InkWell(
                    onTap: () {Navigator.popAndPushNamed(context, inscription,);},
                    child: Text('Inscription',
                      style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                    ),
                  )
                ]),
            ]),
        ),
      bottomNavigationBar: Menu(currentindex : 0),
    );
  }
  void _connexioncompte () {
    // Fonction de connexion de compte via base de données
  }
}
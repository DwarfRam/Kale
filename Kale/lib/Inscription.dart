import 'package:flutter/material.dart';
import 'Routes.dart';
import 'Menu.dart';
import 'SearchBar.dart';

class Inscription extends StatefulWidget {
  @override
  _InscriptionState createState() => _InscriptionState();
}

enum FormType {
  login,
  register
}

class _InscriptionState extends State<Inscription> {

  //Listener pour "écouter" les informations renseignées et envoyer à la base de données.
  final TextEditingController _emailFilter = new TextEditingController();
  final TextEditingController _passwordFilter = new TextEditingController();
  String _email = "";
  String _password = "";

  _InscriptionState() {
    _emailFilter.addListener(_emailListen);
    _passwordFilter.addListener(_passwordListen);
  }

  // S'il y a quelque chose d'écrit, on l'envoit sous forme de texte à la base de données, pour l'inscrire dans la base de données
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
            icon: Icon(Icons.filter_list, color:Colors.green,
            ),
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
                    child: Text('Inscription', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.18, fontWeight: FontWeight.bold),
                    ),
                  )
                ]),
            ),
            Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.09, left: MediaQuery.of(context).size.width * 0.06, right: MediaQuery.of(context).size.width * 0.06),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller : _emailFilter,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.green))),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width * 0.03),
                  TextField(
                    controller : _passwordFilter,
                    decoration: InputDecoration(
                        labelText: 'Mot de passe ',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                    obscureText: true,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width * 0.12),
                  Container(
                    height :  MediaQuery.of(context).size.width * 0.1,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.greenAccent,
                        color: Colors.green,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.popAndPushNamed(context, inscription_suite,);
                            _creercompte();
                          },
                          child: Center(
                            child: Text('Suite', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
                        onTap: () {Navigator.popAndPushNamed(context, home,);},
                        child: Center(
                          child: Text('Retour', style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ),
                ],)
            ),
           SizedBox(height: MediaQuery.of(context).size.width * 0.04),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Text('Déjà inscrit sur Kale ?',),
               SizedBox(width: MediaQuery.of(context).size.width * 0.02),
               InkWell(
                 onTap: () {Navigator.popAndPushNamed(context, connexion,);},
                 child: Text('Connexion', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, decoration: TextDecoration.underline)
                 ),
               )
             ],)
            ]),
        ),
      bottomNavigationBar: Menu(currentindex : 0),
    );
  }
  _creercompte (){
    // Fonction de création de compte en base de données
  }
}
import 'package:flutter/material.dart';
import 'Routes.dart';
import 'Menu.dart';

class Inscription extends StatefulWidget {
  @override
  _InscriptionState createState() => _InscriptionState();
}


enum FormType {
  login,
  register
}

class _InscriptionState extends State<Inscription> {

  final TextEditingController _emailFilter = new TextEditingController();
  final TextEditingController _passwordFilter = new TextEditingController();
  String _email = "";
  String _password = "";

  _InscriptionState() {
    _emailFilter.addListener(_emailListen);
    _passwordFilter.addListener(_passwordListen);
  }

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
    return new Scaffold(
      resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
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
                  TextField(
                    controller : _emailFilter,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        // hintText: 'EMAIL',
                        // hintStyle: ,
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),

                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    controller : _passwordFilter,
                    decoration: InputDecoration(
                        labelText: 'Mot de passe ',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                    obscureText: true,
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
                            Navigator.popAndPushNamed(context, inscription_suite,);
                            _creercompte();
                          },
                          child: Center(
                            child: Text(
                              'Suite',
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
                          Navigator.popAndPushNamed(context, home,);
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
    print('the user wants to create an account with $_email and $_password');
  }
}
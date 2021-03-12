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

  Icon actionIcon = new Icon(Icons.search);
  Widget appBarTitle = new Text("Kale");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: appBarTitle,
        actions: <Widget>[
          IconButton(icon: actionIcon,onPressed:(){
            setState(() {
              if ( this.actionIcon.icon == Icons.search){
                this.actionIcon = Icon(Icons.close);
                this.appBarTitle = TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,color: Colors.white),
                      hintText: "Search...",
                      hintStyle: TextStyle(color: Colors.white)
                  ),
                );}
              else {
                this.actionIcon = Icon(Icons.search);
                this.appBarTitle = Text("Kale");
              }

            });
          }
          )
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
                  child: Text(
                    'Inscription',
                    style:
                    TextStyle(fontSize: MediaQuery.of(context).size.width * 0.18, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.09, left: MediaQuery.of(context).size.width * 0.06, right: MediaQuery.of(context).size.width * 0.06),
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
                  SizedBox(height: MediaQuery.of(context).size.width * 0.03),
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
                  SizedBox(height: MediaQuery.of(context).size.width * 0.12),
                  Container(
                      height: MediaQuery.of(context).size.width * 0.1,
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
           SizedBox(height: MediaQuery.of(context).size.width * 0.04),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Text(
                 'Déjà inscrit sur Kale ?',
                 style: TextStyle(
                   fontFamily: 'Montserrat',
                 ),
               ),
               SizedBox(width: MediaQuery.of(context).size.width * 0.02),
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
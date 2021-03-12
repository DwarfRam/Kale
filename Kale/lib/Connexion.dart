import 'package:flutter/material.dart';
import 'Routes.dart';
import 'Menu.dart';
class Connexion extends StatefulWidget {
  @override
  _ConnexionState createState() => new _ConnexionState();
}

class _ConnexionState extends State<Connexion> {

  final TextEditingController _emailFilter = new TextEditingController();
  final TextEditingController _passwordFilter = new TextEditingController();
  String _email = "";
  String _password = "";

  _ConnexionState() {
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
    return  Scaffold(
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
                    child: Text('Connexion',
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.18, fontWeight: FontWeight.bold)),
                  ),

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
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.width * 0.03),
                    TextField(
                      controller : _passwordFilter,
                      decoration: InputDecoration(
                          labelText: 'Mot de passe',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                      obscureText: true,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.width * 0.02),
                    Container(
                      alignment: Alignment(1.0, 0.0),
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.03, left: MediaQuery.of(context).size.width * 0.06),
                      child: InkWell(
                        onTap: () {Navigator.popAndPushNamed(context, home,);},
                        child: Text(
                          'Mot de passe oublié ?',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              decoration: TextDecoration.underline),
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
                            child: Text(
                              'CONNEXION',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                )),
            SizedBox(height: MediaQuery.of(context).size.width * 0.035),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Nouveau sur Kale ?',
                  style: TextStyle(fontFamily: 'Montserrat'),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                InkWell(
                  onTap: () {
                    Navigator.popAndPushNamed(context, inscription,);
                  },
                  child: Text(
                    'Inscription',
                    style: TextStyle(
                        color: Colors.green,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),

          ],
        ),
        ),
        bottomNavigationBar: Menu(currentindex : 0),
    );
  }
  void _connexioncompte () {
    print('The user wants to login with $_email and $_password');
  }
}
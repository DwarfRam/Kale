import 'package:flutter/material.dart';
import 'main.dart';
import 'Menu.dart';
import 'Routes.dart';

class Home_non_connecte extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home_non_connecteState();
  }
}

class _Home_non_connecteState extends State<Home_non_connecte> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              child : Row(
                children: [
                  Container(
                    width : MediaQuery.of(context).size.width * 0.8,
                    child: Text('Bienvenue sur ',style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.1, fontWeight: FontWeight.bold),)
                  ),
              //    Container(
                //    color: Colors.yellow,
               //     child: Image.asset('images/logo_texte_noir.svg')),

                ],
              )

            ),
            Container(
                padding: const EdgeInsets.only(top: 500.0),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Nouveau sur Kale ?',
                      style: TextStyle(fontFamily: 'Montserrat',fontSize: 20.0,),
                    ),
                    SizedBox(width: 10.0),
                    InkWell(
                      onTap: () {
                        Navigator.popAndPushNamed(context, inscription,);
                      },
                      child: Text(
                        'Inscription',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.green,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                )
            ),
            Container(
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Déjà inscrit ?',
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0,),
                  ),
                  SizedBox(width: 10.0),
                  InkWell(
                    onTap: () {
                      Navigator.popAndPushNamed(context, connexion,);
                    },
                    child: Text(
                      'Connectez-vous',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.green,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Menu(currentindex : 0),
    );
  }
}
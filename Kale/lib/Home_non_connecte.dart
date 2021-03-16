import 'package:flutter/material.dart';
import 'main.dart';
import 'Menu.dart';
import 'Routes.dart';
import 'SearchBar.dart';

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
        backgroundColor: Colors.white,
        title: Text("Kale",style:TextStyle(color:Colors.green)),
        actions: <Widget>[
          IconButton(
              icon: actionIcon,
              color:Colors.green,
              onPressed:() {
                setState(() {
                  showSearch(
                    context: context,
                    delegate: CustomSearchDelegate(),
                  );
                }
                );
              }
          ),
          IconButton(
            icon: Icon(
              Icons.filter_list,
              color:Colors.green,
            ),
            onPressed: () {
              showFilterDialog(context);
            },
          ),
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
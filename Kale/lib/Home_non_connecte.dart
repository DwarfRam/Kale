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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:MediaQuery.of(context).size.width * 0.15),
            Container(
                child: Text('Bienvenue sur ',style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.15, fontWeight: FontWeight.bold),)
            ),
            Container(
              child : Image.asset('assets/images/logo_texte_couleur.png', width:MediaQuery.of(context).size.width * 0.3, height:MediaQuery.of(context).size.width * 0.3),
            ),
            Container(
              child : Image.asset('assets/images/image_accueil_non_connecté.png', width:MediaQuery.of(context).size.width * 0.8, height:MediaQuery.of(context).size.width * 0.8),
            ),
            Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Nouveau sur Kale ?',
                      style: TextStyle(fontSize: 20.0,),
                    ),
                    SizedBox(width: 10.0),
                    InkWell(
                      onTap: () {Navigator.popAndPushNamed(context, inscription,);},
                      child: Text('Inscription',
                        style: TextStyle(fontSize: 20.0, color: Colors.green, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                      ),
                    )
                  ],)
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Déjà inscrit ?',
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0,),
                  ),
                  SizedBox(width: 10.0),
                  InkWell(
                    onTap: () {Navigator.popAndPushNamed(context, connexion,);},
                    child: Text('Connectez-vous',
                      style: TextStyle(fontSize: 20.0, color: Colors.green, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                    ),
                  )
                ],),
            ),
          ]),
      ),
      bottomNavigationBar: Menu(currentindex : 0),
    );
  }
}
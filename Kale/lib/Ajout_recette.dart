import 'package:flutter/material.dart';
import 'Menu.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'SearchBar.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'Routes.dart';

class Ajout_recette extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Ajout_recetteState();
  }
}

class Ingredients {
  final int id;
  final String name;

  Ingredients({
    this.id,
    this.name,
  });
}

class Ustensiles {
  final int id;
  final String name;

  Ustensiles({
    this.id,
    this.name,
  });
}

class _Ajout_recetteState extends State<Ajout_recette> {

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
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.06),
                  child : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.04, right: MediaQuery.of(context).size.width * 0.04),
                          child: Column(
                            children: <Widget>[
                              TextField(
                                //controller : _emailFilter,
                                decoration: InputDecoration(
                                    labelText: 'Nom de la recette',
                                    labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.green))),

                              ),
                              SizedBox(height: MediaQuery.of(context).size.width * 0.05),
                              TextField(
                                //controller : _passwordFilter,
                                decoration: InputDecoration(
                                    labelText: 'Mot clés',
                                    labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.green))),
                                obscureText: true,
                              ),
                              SizedBox(height: MediaQuery.of(context).size.width * 0.05),
                              TextField(
                                //controller : _passwordFilter,
                                decoration: InputDecoration(
                                    labelText: 'Ingrédients',
                                    labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.green))),
                                obscureText: true,
                              ),
                              SizedBox(height: MediaQuery.of(context).size.width * 0.05),
                              TextField(
                                //controller : _passwordFilter,
                                decoration: InputDecoration(
                                    labelText: 'Ustensiles',
                                    labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.green))),
                                obscureText: true,
                              ),
                              SizedBox(height: MediaQuery.of(context).size.width * 0.05),
                              TextField(
                                //controller : _passwordFilter,
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
                                        _creerrecette();
                                      },
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


            ]
        ),
      ),
      bottomNavigationBar: Menu(currentindex : 2),
    );
  }

  _creerrecette (){
    //
  }
}






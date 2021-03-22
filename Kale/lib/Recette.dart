import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Menu.dart';
import 'Routes.dart';
import 'SearchBar.dart';

class Recette extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RecetteState();
  }
}

class _RecetteState extends State<Recette> {
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
                        width: MediaQuery.of(context).size.width * 1,
                        child: Material(
                            borderRadius: BorderRadius.circular(15.0),
                            shadowColor: Colors.black26,
                            color: Colors.white,
                            elevation: 7.0,
                            child: Container(
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            //Une fonction aurait été chercher l'image de la recette en base de données.
                                              child : Image.asset('assets/images/soupe.jpg', width:MediaQuery.of(context).size.width * 0.3, height:MediaQuery.of(context).size.width * 0.3)
                                          ),
                                          SizedBox(width: MediaQuery.of(context).size.width * 0.02,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child : Text('Soupe de poireaux', textAlign: TextAlign.left,
                                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                              SizedBox(height: MediaQuery.of(context).size.width * 0.06),
                                              Container(
                                                child : Text('Mots clés', textAlign: TextAlign.left,
                                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                ),
                                              ),
                                              SizedBox(height: MediaQuery.of(context).size.width * 0.1,),
                                              Container(
                                                //Note générale de  la recette
                                                  child : Row(
                                                    children: [
                                                      //Une fonction aurait créé des étoiles en fonction de la note données, en changeant l'aspect de l'étoile.
                                                      Container(child: Icon(Icons.star, color: Colors.deepOrangeAccent,),),
                                                      Container(child: Icon(Icons.star, color: Colors.deepOrangeAccent,),),
                                                      Container(child: Icon(Icons.star, color: Colors.deepOrangeAccent,),),
                                                      Container(child: Icon(Icons.star, color: Colors.deepOrangeAccent,),),
                                                      Container(child: Icon(Icons.star_border, color: Colors.deepOrangeAccent,),)
                                                    ],)
                                              ),
                                            ],),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(child: Icon(Icons.access_time_rounded, color: Colors.black26),),
                                                  SizedBox(width: MediaQuery.of(context).size.width * 0.02,),
                                                  Container(
                                                    child : Text('.. min', textAlign: TextAlign.left,
                                                      style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04, color: Colors.black26),
                                                    ),
                                                  ),
                                                ],),
                                              SizedBox(height: MediaQuery.of(context).size.width * 0.05,),
                                              Container(
                                                  child : Row(
                                                    children: [
                                                      InkWell(
                                                        onTap: () {
                                                          //Ici l'utilisateur peut ajouter la recette en favori.
                                                        },
                                                        child: Container(child: Icon(Icons.favorite, color: Colors.lightGreen,), ),
                                                      ),
                                                      SizedBox(width: MediaQuery.of(context).size.width * 0.03,),
                                                      InkWell(
                                                        onTap: () {
                                                          //Ici l'utilisateur peut ajouter la recette au planning des recettes.
                                                        },
                                                        child: Container(child: Icon(Icons.calendar_today, color: Colors.lightGreen,),),
                                                      ),
                                                      SizedBox(width: MediaQuery.of(context).size.width * 0.03,),
                                                      InkWell(
                                                        onTap: () {
                                                          //Ici, l'utilisateur peut ajouter le recette à sa liste de courses.
                                                        },
                                                        child: Container(child: Icon(Icons.playlist_add_outlined, color: Colors.lightGreen,),),
                                                      ),
                                                    ])
                                              ),
                                            ])
                                          ])
                                    ])
                            )
                        )
                    ),
                  SizedBox(height: MediaQuery.of(context).size.width * 0.05,),
                  Container(
                      width: MediaQuery.of(context).size.width * 1,
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
                      child: Row(
                          children : [
                            Container(
                                child: Text('Nombre de personnes : ', textAlign: TextAlign.left, style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),),
                            ),
                            Container(
                              child: Text('4', textAlign: TextAlign.left, style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),),
                            ),
                          ])
                  ),
                Container(
                    width: MediaQuery.of(context).size.width * 1,
                    padding: EdgeInsets.only(left : MediaQuery.of(context).size.width * 0.04, top: MediaQuery.of(context).size.width * 0.05, right: MediaQuery.of(context).size.width * 0.04),
                    child: Row(
                        children: [
                            Container(
                              child : Material(
                                borderRadius: BorderRadius.circular(15.0),
                                shadowColor: Colors.black26,
                                color: Colors.white,
                                elevation: 7.0,
                                child: Container(
                                  padding : EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                                  child : Column(
                                    children: [
                                      Container(
                                        child: Text('Ingrédients ', textAlign: TextAlign.left,
                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.width * 0.05,),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                              children: [
                                                Container (
                                                  child :
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        child: Text('Poireaux ', textAlign: TextAlign.left,
                                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.035),
                                                        ),
                                                      ),
                                                      SizedBox(height: MediaQuery.of(context).size.width * 0.04,),
                                                      Container(
                                                        child : Text('Pommes de terre ', textAlign: TextAlign.left,
                                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.035)
                                                        ),
                                                      ),
                                                      SizedBox(height: MediaQuery.of(context).size.width * 0.04,),
                                                      Container(
                                                        child : Text('Curry en poudre ', textAlign: TextAlign.left,
                                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.035),
                                                        ),
                                                      ),
                                                      SizedBox(height: MediaQuery.of(context).size.width * 0.04,),
                                                      Container(
                                                        child : Text('Fromage frais ', textAlign: TextAlign.left,
                                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.035),
                                                        ),
                                                      ),
                                                      SizedBox(height: MediaQuery.of(context).size.width * 0.04,),
                                                      Container(
                                                        child : Text('Bouillon de légumes ', textAlign: TextAlign.left,
                                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.035),
                                                        ),
                                                      ),
                                                    ],),
                                                )
                                              ]),
                                        Column(
                                          children: [
                                            Container (
                                              child :
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                      child : Text('300g ', textAlign: TextAlign.right,
                                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                                      ),
                                                    ),
                                                    SizedBox(height: MediaQuery.of(context).size.width * 0.04,),
                                                    Container(
                                                      child : Text('100g ', textAlign: TextAlign.right,
                                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                                      ),
                                                    ),
                                                    SizedBox(height: MediaQuery.of(context).size.width * 0.04,),
                                                    Container(
                                                      child : Text('2 cs ', textAlign: TextAlign.right,
                                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                                      ),
                                                    ),
                                                    SizedBox(height: MediaQuery.of(context).size.width * 0.04,),
                                                    Container(
                                                      child : Text('2 carrés ', textAlign: TextAlign.right,
                                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                                      ),
                                                    ),
                                                    SizedBox(height: MediaQuery.of(context).size.width * 0.04,),
                                                    Container(
                                                      child : Text('10 cL ', textAlign: TextAlign.right,
                                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                                      ),
                                                    ),
                                                  ],),
                                            ),
                                          ]),
                                        ],),
                                    ],),
                                ),
                              )
                            ),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.02,),
                          Container(
                              child : Material(
                                borderRadius: BorderRadius.circular(15.0),
                                shadowColor: Colors.black26,
                                color: Colors.white,
                                elevation: 7.0,
                                child: Container(
                                  padding : EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                                  child : Column(
                                    children: [
                                      Container(
                                        child: Text('Ustensiles ', textAlign: TextAlign.left,
                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.width * 0.05,),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                              children: [
                                                Container (
                                                  child : Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        child: Text('Louche ', textAlign: TextAlign.left,
                                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                                        ),
                                                      ),
                                                      SizedBox(height: MediaQuery.of(context).size.width * 0.04,),
                                                      Container(
                                                        child : Text('Couteau', textAlign: TextAlign.left,
                                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                                        ),
                                                      ),
                                                      SizedBox(height: MediaQuery.of(context).size.width * 0.04,),
                                                      Container(
                                                        child : Text('Mixeur ', textAlign: TextAlign.left,
                                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                                        ),
                                                      ),
                                                      SizedBox(height: MediaQuery.of(context).size.width * 0.04,),
                                                      Container(
                                                        child : Text('Casserole ', textAlign: TextAlign.left,
                                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                                        ),
                                                      ),
                                                      SizedBox(height: MediaQuery.of(context).size.width * 0.04,),
                                                      Container(
                                                        child : Text('Planche à découper', textAlign: TextAlign.left,
                                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                                        ),
                                                      ),
                                                    ],),
                                                )
                                              ]),
                                          Column(
                                              children: [
                                                Container (
                                                  child :
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                        child : Text('1 ', textAlign: TextAlign.right,
                                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                                        ),
                                                      ),
                                                      SizedBox(height: MediaQuery.of(context).size.width * 0.04,),
                                                      Container(
                                                        child : Text('1 ', textAlign: TextAlign.right,
                                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                                        ),
                                                      ),
                                                      SizedBox(height: MediaQuery.of(context).size.width * 0.04,),
                                                      Container(
                                                        child : Text('1 ', textAlign: TextAlign.right,
                                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                                        ),
                                                      ),
                                                      SizedBox(height: MediaQuery.of(context).size.width * 0.04,),
                                                      Container(
                                                        child : Text('1', textAlign: TextAlign.right,
                                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                                        ),
                                                      ),
                                                      SizedBox(height: MediaQuery.of(context).size.width * 0.04,),
                                                      Container(
                                                        child : Text('1', textAlign: TextAlign.right,
                                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                                        ),
                                                      ),
                                                    ],),
                                                ),
                                              ]),
                                        ],),
                                    ],),
                                ),
                              )
                          ),
                        ])
                ),
                  Container(
                      width: MediaQuery.of(context).size.width * 1,
                      padding: EdgeInsets.only(left : MediaQuery.of(context).size.width * 0.04, top: MediaQuery.of(context).size.width * 0.05, right: MediaQuery.of(context).size.width * 0.04),
                      child: Material(
                          borderRadius: BorderRadius.circular(15.0),
                          shadowColor: Colors.black26,
                          color: Colors.white,
                          elevation: 7.0,
                          child: Container(
                              padding : EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                              child : Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text('Instructions ', textAlign: TextAlign.left,
                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.width * 0.05,),
                                    Container(
                                      child: Text('Instructions 1', textAlign: TextAlign.left,
                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                      ),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.width * 0.04,),
                                    Container(
                                      child: Text('Instructions 2', textAlign: TextAlign.left,
                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                      ),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.width * 0.04,),
                                    Container(
                                      child: Text('Instructions 3', textAlign: TextAlign.left,
                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                      ),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.width * 0.04,),
                                    Container(
                                      child: Text('Instructions 4', textAlign: TextAlign.left,
                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                      ),
                                    ),
                                  ])
                          )
                      )
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width * 0.05),
                  Container (
                    child: Row(
                      children: [
                        Container(
                          child : Container (
                            child: Material(
                                borderRadius: BorderRadius.circular(15.0),
                                shadowColor: Colors.black26,
                                color: Colors.white,
                                elevation: 7.0,
                                child : Column (
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children : [
                                      Container (
                                          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                                          child : Text('Commentaires ', textAlign: TextAlign.left,
                                            style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold),
                                          )
                                      ),
                                      Container(
                                          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                                          child : Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Container(child : Icon(Icons.image)),
                                                  SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                                                  Column(
                                                    children: [
                                                      Container(
                                                        child : Row(
                                                          children: [
                                                            //Une fonction aurait créé des étoiles en fonction de la note données, en changeant l'aspect de l'étoile.
                                                            Container(child: Icon(Icons.star, color: Colors.deepOrangeAccent,size : MediaQuery.of(context).size.width * 0.04),),
                                                            Container(child: Icon(Icons.star, color: Colors.deepOrangeAccent,size : MediaQuery.of(context).size.width * 0.04),),
                                                            Container(child: Icon(Icons.star, color: Colors.deepOrangeAccent,size : MediaQuery.of(context).size.width * 0.04),), Container(child: Icon(Icons.star, color: Colors.deepOrangeAccent,size : MediaQuery.of(context).size.width * 0.04),),
                                                            Container(child: Icon(Icons.star_border, color: Colors.deepOrangeAccent,size : MediaQuery.of(context).size.width * 0.04),)
                                                          ],)
                                                      ),
                                                      Container(
                                                        child: Text('Commentaires', textAlign: TextAlign.left,
                                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                                        ),
                                                      )
                                                    ])
                                                ]),
                                              SizedBox(height: MediaQuery.of(context).size.width * 0.03 ),
                                              Row(
                                                children: [
                                                  Container(child : Icon(Icons.image)),
                                                  SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                                                  Column(
                                                    children: [
                                                      Container(
                                                          child : Row(
                                                            children: [
                                                              //Une fonction aurait créé des étoiles en fonction de la note données, en changeant l'aspect de l'étoile.
                                                              Container(child: Icon(Icons.star, color: Colors.deepOrangeAccent,size : MediaQuery.of(context).size.width * 0.04),),
                                                              Container(child: Icon(Icons.star, color: Colors.deepOrangeAccent,size : MediaQuery.of(context).size.width * 0.04),),
                                                              Container(child: Icon(Icons.star, color: Colors.deepOrangeAccent,size : MediaQuery.of(context).size.width * 0.04),),
                                                              Container(child: Icon(Icons.star, color: Colors.deepOrangeAccent,size : MediaQuery.of(context).size.width * 0.04),),
                                                              Container(child: Icon(Icons.star_border, color: Colors.deepOrangeAccent,size : MediaQuery.of(context).size.width * 0.04),)
                                                            ],)
                                                      ),
                                                      Container(
                                                        child: Text('Commentaires', textAlign: TextAlign.left,
                                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
                                                        ),
                                                      )
                                                    ],)
                                                ],),
                                            Row(
                                              children: [
                                                Container(child : Icon(Icons.image)),
                                                SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                                                Container(
                                                  child: Container(
                                                      height: MediaQuery.of(context).size.width * 0.1,
                                                    child : Material(
                                                      borderRadius: BorderRadius.circular(15.0),
                                                      shadowColor: Colors.black26,
                                                      color: Colors.white,
                                                      elevation: 7.0,
                                                      child: InkWell(
                                                        onTap: () {
                                                          Navigator.popAndPushNamed(context, home,);
                                                        // Ici l'utilisateur peut mettre un commentaire et une note à la recette
                                                        },
                                                        child: Center(child: Text('Ajouter un commentaire',style:TextStyle(color: Colors.black12,)),),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                      ]),
                                      )
                                    ])
                            ),
                          ),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
                        Container(
                          child : Container (
                            child: Material(
                                borderRadius: BorderRadius.circular(15.0),
                                shadowColor: Colors.black26,
                                color: Colors.white,
                                elevation: 7.0,
                                child : Column (
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children : [
                                      // Ici nous aurions mis une fonction pour ajouter des commentaires personnels à une recette.
                                      Container (
                                          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                                          child : Text('Notes personnelles', textAlign: TextAlign.left,
                                            style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04, fontWeight: FontWeight.bold),
                                          )
                                      ),
                                      Container(
                                          padding : EdgeInsets.only(left : MediaQuery.of(context).size.width * 0.3),
                                          child : Icon(Icons.add_circle, color: Colors.deepOrangeAccent,)
                                      ),
                                      SizedBox(height : MediaQuery.of(context).size.width * 0.03)
                                    ])
                            ),
                          ),
                        ),
                      ]),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 1,
                      padding: EdgeInsets.only(left : MediaQuery.of(context).size.width * 0.04, top: MediaQuery.of(context).size.width * 0.05, right: MediaQuery.of(context).size.width * 0.04),
                    child: Material(
                        borderRadius: BorderRadius.circular(15.0),
                        shadowColor: Colors.black26,
                        color: Colors.white,
                        elevation: 7.0,
                        child: Container(
                            padding : EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                            child : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //Ici il y aurait eu une image montrant les capacités nutritives de cette recette.
                                  Container(
                                    child: Text('Nutrition ',textAlign: TextAlign.left,
                                      style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(child : Center(child : Image.asset('assets/images/nutrition.png', width:MediaQuery.of(context).size.width * 0.6, height:MediaQuery.of(context).size.width * 0.6)))
                                ])
                        )
                    )
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width * 0.05,),
                ])
        ),
      bottomNavigationBar: Menu(currentindex : 2),
    );

  }
}
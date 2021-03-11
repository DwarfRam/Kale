import 'package:flutter/material.dart';
import 'main.dart';
import 'Menu.dart';
import 'Routes.dart';

class Recherche extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RechercheState();
  }
}

class _RechercheState extends State<Recherche> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Recherche'),

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
                      child : Text('Recettes tendances',
                        textAlign: TextAlign.left,
                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.07, color: Colors.green, fontWeight: FontWeight.bold),
                      )
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width * 0.03,),
                  Container(
                      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                      child :  Row(
                          children: [
                            Column(
                              children: [
                                //Container(
                                // child : Image(
                                //  image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                //  )
                                //  ),
                                Container(
                                  // /!\ METTRE L'IMAGE ET LE NOM DE LA RECETTE
                                    child : Text('Recette 1 ',
                                      textAlign: TextAlign.left,
                                      style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                    )
                                ),
                              ],
                            ),

                            SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                            Column(
                              children: [
                                // Container(
                                //   child : Image(
                                //    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                //    )
                                // ),
                                Container(
                                  // /!\ METTRE L'IMAGE ET LE NOM DE LA RECETTE
                                    child : Text('Recette 2 ',
                                      textAlign: TextAlign.left,
                                      style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                    )
                                ),
                              ],
                            ),
                            SizedBox(width:  MediaQuery.of(context).size.width * 0.1),
                            Column(
                              children: [
                                //  Container(
                                //     child : Image(
                                //     image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                //     )
                                //  ),
                                Container(
                                  // /!\ METTRE L'IMAGE ET LE NOM DE LA RECETTE
                                    child : Text('Recette 3 ',
                                      textAlign: TextAlign.left,
                                      style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                    )
                                ),
                              ],
                            ),
                          ])),
                ],
              )
            ),

            Container(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.06),
                child : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        child : Text('Petits-déjeuners gourmands',
                          textAlign: TextAlign.left,
                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.07, color: Colors.green, fontWeight: FontWeight.bold),
                        )
                    ),
                    SizedBox(height: MediaQuery.of(context).size.width * 0.03,),
                    Container(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                        child :  Row(
                            children: [
                              Column(
                                children: [
                                  //Container(
                                  // child : Image(
                                  //  image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                  //  )
                                  //  ),
                                  Container(
                                    // /!\ METTRE L'IMAGE ET LE NOM DE LA RECETTE
                                      child : Text('Recette 1 ',
                                        textAlign: TextAlign.left,
                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                      )
                                  ),
                                ],
                              ),

                              SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                              Column(
                                children: [
                                  // Container(
                                  //   child : Image(
                                  //    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                  //    )
                                  // ),
                                  Container(
                                    // /!\ METTRE L'IMAGE ET LE NOM DE LA RECETTE
                                      child : Text('Recette 2 ',
                                        textAlign: TextAlign.left,
                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                      )
                                  ),
                                ],
                              ),
                              SizedBox(width:  MediaQuery.of(context).size.width * 0.1),
                              Column(
                                children: [
                                  //  Container(
                                  //     child : Image(
                                  //     image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                  //     )
                                  //  ),
                                  Container(
                                    // /!\ METTRE L'IMAGE ET LE NOM DE LA RECETTE
                                      child : Text('Recette 3 ',
                                        textAlign: TextAlign.left,
                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                      )
                                  ),
                                ],
                              ),
                            ])),
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.06),
                child : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        child : Text('Salades vitaminées',
                          textAlign: TextAlign.left,
                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.07, color: Colors.green, fontWeight: FontWeight.bold),
                        )
                    ),
                    SizedBox(height: MediaQuery.of(context).size.width * 0.03,),
                    Container(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                        child :  Row(
                            children: [
                              Column(
                                children: [
                                  //Container(
                                  // child : Image(
                                  //  image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                  //  )
                                  //  ),
                                  Container(
                                    // /!\ METTRE L'IMAGE ET LE NOM DE LA RECETTE
                                      child : Text('Recette 1 ',
                                        textAlign: TextAlign.left,
                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                      )
                                  ),
                                ],
                              ),

                              SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                              Column(
                                children: [
                                  // Container(
                                  //   child : Image(
                                  //    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                  //    )
                                  // ),
                                  Container(
                                    // /!\ METTRE L'IMAGE ET LE NOM DE LA RECETTE
                                      child : Text('Recette 2 ',
                                        textAlign: TextAlign.left,
                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                      )
                                  ),
                                ],
                              ),
                              SizedBox(width:  MediaQuery.of(context).size.width * 0.1),
                              Column(
                                children: [
                                  //  Container(
                                  //     child : Image(
                                  //     image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                  //     )
                                  //  ),
                                  Container(
                                    // /!\ METTRE L'IMAGE ET LE NOM DE LA RECETTE
                                      child : Text('Recette 3 ',
                                        textAlign: TextAlign.left,
                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                      )
                                  ),
                                ],
                              ),
                            ])),
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.06),
                child : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        child : Text('Soupes d\'hiver',
                          textAlign: TextAlign.left,
                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.07, color: Colors.green, fontWeight: FontWeight.bold),
                        )
                    ),
                    SizedBox(height: MediaQuery.of(context).size.width * 0.03,),
                    Container(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                        child :  Row(
                            children: [
                              Column(
                                children: [
                                  //Container(
                                  // child : Image(
                                  //  image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                  //  )
                                  //  ),
                                  Container(
                                    // /!\ METTRE L'IMAGE ET LE NOM DE LA RECETTE
                                      child : Text('Recette 1 ',
                                        textAlign: TextAlign.left,
                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                      )
                                  ),
                                ],
                              ),

                              SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                              Column(
                                children: [
                                  // Container(
                                  //   child : Image(
                                  //    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                  //    )
                                  // ),
                                  Container(
                                    // /!\ METTRE L'IMAGE ET LE NOM DE LA RECETTE
                                      child : Text('Recette 2 ',
                                        textAlign: TextAlign.left,
                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                      )
                                  ),
                                ],
                              ),
                              SizedBox(width:  MediaQuery.of(context).size.width * 0.1),
                              Column(
                                children: [
                                  //  Container(
                                  //     child : Image(
                                  //     image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                  //     )
                                  //  ),
                                  Container(
                                    // /!\ METTRE L'IMAGE ET LE NOM DE LA RECETTE
                                      child : Text('Recette 3 ',
                                        textAlign: TextAlign.left,
                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                      )
                                  ),
                                ],
                              ),
                            ])),
                  ],
                )
            )

          ]
        ),
    ),
      bottomNavigationBar: Menu(currentindex : 2),
    );
  }
}






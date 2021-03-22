import 'package:flutter/material.dart';
import 'Menu.dart';
import 'Routes.dart';
import 'SearchBar.dart';

class Recherche extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RechercheState();
  }
}
//Dans cette page, nous aurions affiché les noms et images des recettes, en fonction de leur catégorie.

class _RechercheState extends State<Recherche> {
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
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.06),
                  child : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          child : Text('Recettes tendances', textAlign: TextAlign.left,
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
                                    Container(
                                        child : Image.asset('assets/images/soupe.jpg', width:MediaQuery.of(context).size.width * 0.25, height:MediaQuery.of(context).size.width * 0.25)
                                      ),
                                    Container(
                                        child : InkWell(
                                          onTap: () {Navigator.popAndPushNamed(context, recette,);},
                                          child: Text('Soupe de poireaux',
                                            style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, color: Colors.green, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                                          ),
                                        )
                                    ),
                                  ]),
                                SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                                Column(
                                  children: [
                                    // Container(
                                    //   child : Image(
                                    //    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                    //    )
                                    // ),
                                    Container(
                                        child : Text('Recette 2 ', textAlign: TextAlign.left,
                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                        )
                                    ),
                                  ]),
                              ])
                      ),
                    ])
              ),

              Container(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.06),
                  child : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          child : Text('Petits-déjeuners gourmands', textAlign: TextAlign.left,
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
                                        child : Text('Recette 1 ', textAlign: TextAlign.left,
                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                        )
                                    ),
                                  ],),

                                SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                                Column(
                                  children: [
                                    // Container(
                                    //   child : Image(
                                    //    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                    //    )
                                    // ),
                                    Container(
                                        child : Text('Recette 2 ', textAlign: TextAlign.left,
                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                        )
                                    ),
                                  ]),
                                SizedBox(width:  MediaQuery.of(context).size.width * 0.1),
                                Column(
                                  children: [
                                    //  Container(
                                    //     child : Image(
                                    //     image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                    //     )
                                    //  ),
                                    Container(
                                        child : Text('Recette 3 ', textAlign: TextAlign.left,
                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                        )
                                    ),
                                  ],),
                              ])
                      ),
                    ])
              ),
              Container(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.06),
                  child : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          child : Text('Salades vitaminées', textAlign: TextAlign.left,
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
                                        child : Text('Recette 1 ', textAlign: TextAlign.left,
                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                        )
                                    ),
                                  ]),
                                SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                                Column(
                                  children: [
                                    // Container(
                                    //   child : Image(
                                    //    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                    //    )
                                    // ),
                                    Container(
                                        child : Text('Recette 2 ', textAlign: TextAlign.left,
                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                        )
                                    ),
                                  ]),
                                SizedBox(width:  MediaQuery.of(context).size.width * 0.1),
                                Column(
                                  children: [
                                    //  Container(
                                    //     child : Image(
                                    //     image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                    //     )
                                    //  ),
                                    Container(
                                        child : Text('Recette 3 ', textAlign: TextAlign.left,
                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                        )
                                    ),
                                  ]),
                              ])
                      ),
                    ])
              ),
              Container(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.06),
                  child : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          child : Text('Soupes d\'hiver', textAlign: TextAlign.left,
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
                                        child : Text('Recette 1 ', textAlign: TextAlign.left,
                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                        )
                                    ),
                                  ]),
                                SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                                Column(
                                  children: [
                                    // Container(
                                    //   child : Image(
                                    //    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                    //    )
                                    // ),
                                    Container(
                                        child : Text('Recette 2 ', textAlign: TextAlign.left,
                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                        )
                                    ),
                                  ]),
                                SizedBox(width:  MediaQuery.of(context).size.width * 0.1),
                                Column(
                                  children: [
                                    //  Container(
                                    //     child : Image(
                                    //     image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                                    //     )
                                    //  ),
                                    Container(
                                        child : Text('Recette 3 ', textAlign: TextAlign.left,
                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                        )
                                    ),
                                  ]),
                              ])
                      ),
                    ])
              ),
              Container(
                padding : EdgeInsets.only(left : MediaQuery.of(context).size.width * 0.8, top : MediaQuery.of(context).size.width * 0.04),
                child: InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(
                              builder: (context, setState) {
                                return AlertDialog(
                                  content: Container(
                                      height: MediaQuery.of(context).size.width * 0.2,
                                      child : Column(
                                        children: [
                                          Container(
                                              child : Text('Souhaitez-vous ajouter une recette ?', textAlign: TextAlign.left,
                                                style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold, color: Colors.green),
                                              )
                                          ),
                                        ])
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: Text("Annuler"),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          Navigator.pop(context);
                                          Navigator.popAndPushNamed(context, ajout,);});},
                                      child: Text("Valider"),
                                    ),
                                  ],
                                );
                              });});},
                    child: Icon(Icons.add_circle, color: Colors.deepOrangeAccent, size : MediaQuery.of(context).size.width * 0.1)
                ),
              ),
              SizedBox(height:MediaQuery.of(context).size.width * 0.05),
            ],)
      ),
      bottomNavigationBar: Menu(currentindex : 2),
    );
  }
}






import 'package:flutter/material.dart';
import 'Menu.dart';
import 'SearchBar.dart';
import 'Routes.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}
// Cette page aurait été différente en fonction de si l'utilisateur était connecté ou non. Si ce n'était pas le cas, il aurait été redirigé sur la page "Home_non_connecte".
class _HomeState extends State<Home> {

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
        child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(image :AssetImage('assets/images/background.png'), fit : BoxFit.cover  )),
          child :Column(
              children: [
              Container(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.08),
                  width: MediaQuery.of(context).size.width * 1,
                    child: Material(
                        borderRadius: BorderRadius.circular(15.0),
                        shadowColor: Colors.black26,
                        color: Colors.white,
                        elevation: 7.0,
                        child: Container(
                          // Cet encadré aurait affiché toutes les denrières actualités sociales des amis de l'utilisateur.
                            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      child: Text('Dernières actualités',
                                        textAlign: TextAlign.left,
                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold),
                                      )
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.width * 0.02,),
                                  Container(
                                      padding : EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                                      child : Container(
                                          child :Text('Vous n\'avez pas encore d\'amis sur Kale',
                                            textAlign: TextAlign.left,
                                            style : TextStyle(color : Colors.black38, fontSize: MediaQuery.of(context).size.width * 0.04),
                                          )
                                      ),
                                  )
                                ])
                        )
                    ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only( left: MediaQuery.of(context).size.width * 0.08, right: MediaQuery.of(context).size.width * 0.02),
                      child : Container (
                        //Cette encadré aurait affiché la mission actuelle de l'utilisateur.
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
                                      child : Text('Mission',
                                        textAlign: TextAlign.left,
                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold),
                                      )
                                  ),
                                  Container(
                                      padding : EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                                      child : Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              padding : EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                                            child : Text('n° mission',
                                              textAlign: TextAlign.left,
                                              style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                            )
                                          ),
                                          Container(
                                              padding :EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                                              child : Text('intitulé mission',
                                                textAlign: TextAlign.left,
                                                style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                              )
                                          )
                                        ],)
                                  )
                                ])
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only( left: MediaQuery.of(context).size.width * 0.02, right: MediaQuery.of(context).size.width * 0.08),
                      child : Container (
                        //Cet encadré aurait affiché un conseil pris au hasard dans les conseils disponibles pour l'utilisateur
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
                                    child : Text('Conseil du jour',
                                    textAlign: TextAlign.left,
                                    style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold),
                                    )
                                  ),
                                  Container(
                                    padding : EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                                    child : Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding : EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                                        child : Text('texte conseil',
                                          textAlign: TextAlign.left,
                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                        )
                                      )
                                    ])
                                  ),
                                ])
                        )
                      )
                    )
                  ]),
                Container(
                  // Cet encadré aurait affiché la prochaine recette renseignée dans le calendrier.
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.08),
                  width: MediaQuery.of(context).size.width * 1,
                  child: Material(
                      borderRadius: BorderRadius.circular(15.0),
                      shadowColor: Colors.black26,
                      color: Colors.white,
                      elevation: 7.0,
                      child: Container(
                          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    child: Text('Prochain repas',
                                      textAlign: TextAlign.left,
                                      style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold),
                                    )
                                ),
                                SizedBox(height: MediaQuery.of(context).size.width * 0.02,),
                                Container(
                                  padding : EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                                  child : Container(
                                    // /!\ prochaine recette
                                      child :Text('Recette',
                                        textAlign: TextAlign.left,
                                        style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                      )
                                  ),
                                )
                              ])
                      )
                  ),
                ),
                // Ces deux lignes n'auraient pas été affichée dans la version finale, puisqu'elle aurait fait partie de la page "Home_non_connecte".
                //Elles permettent de pouvoir tester ces deux pages malgré la fonctionnalité connexion/inscription manquante.
                Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Nouveau sur Kale ?', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05,),),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                        InkWell(
                          onTap: () {Navigator.popAndPushNamed(context, inscription,);},
                          child: Text('Inscription',
                            style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, color: Colors.green, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                          ),
                        )
                      ],)
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Déjà inscrit ?',
                        style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05,),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                      InkWell(
                        onTap: () {Navigator.popAndPushNamed(context, connexion,);},
                        child: Text('Connectez-vous',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, color: Colors.green, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                        ),
                      )
                    ]),
                ),
                SizedBox(height:MediaQuery.of(context).size.width * 0.4)
              ]),
      ),
      ),
      bottomNavigationBar: Menu(currentindex : 0),
    );
  }
}



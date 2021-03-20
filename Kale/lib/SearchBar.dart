import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Liste des résultats
List<String> allNames = ["ahmed", "ali", "john", "user"];

bool valuefirst = false;
bool valuesecond = false;

Future<void> showFilterDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext build) {
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              content: SingleChildScrollView(
                child: Column(
                  children:[
                    Container(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.06),
                        child : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child : Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        child : Text('Repas',
                                          textAlign: TextAlign.left,
                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold, color: Colors.green),
                                        )
                                    ),
                                    Container(
                                        child : Column(
                                            children :[
                                              CheckboxListTile(
                                                controlAffinity: ListTileControlAffinity.leading,
                                                activeColor: Colors.green,
                                                title: Text('Matin',
                                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04,),
                                                ),
                                                value: valuefirst,
                                                onChanged: (bool value) {
                                                  setState(() {
                                                    valuefirst = value;
                                                  });
                                                },
                                              ),

                                              CheckboxListTile(
                                                controlAffinity: ListTileControlAffinity.leading,
                                                activeColor: Colors.green,
                                                title: Text('Midi',
                                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                ),
                                                value: valuesecond,
                                                onChanged: (bool value) {
                                                  setState(() {
                                                    valuesecond = value;
                                                  });
                                                },
                                              ),
                                              CheckboxListTile(
                                                controlAffinity: ListTileControlAffinity.leading,
                                                activeColor: Colors.green,
                                                title: Text('En-cas',
                                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                ),
                                                value: valuesecond,
                                                onChanged: (bool value) {
                                                  setState(() {
                                                    valuesecond = value;
                                                  });
                                                },
                                              ),
                                              CheckboxListTile(
                                                controlAffinity: ListTileControlAffinity.leading,
                                                activeColor: Colors.green,
                                                title: Text('Soir',
                                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                ),
                                                value: valuesecond,
                                                onChanged: (bool value) {
                                                  setState(() {
                                                    valuesecond = value;
                                                  });
                                                },
                                              ),
                                            ])
                                    ),
                                  SizedBox(height: MediaQuery.of(context).size.width * 0.03,),
                                    Container(
                                        child : Text('Temps de préparation',
                                          textAlign: TextAlign.left,
                                          style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold, color: Colors.green),
                                        )
                                    ),
                                    Container(
                                        child : Column(
                                            children :[
                                              CheckboxListTile(
                                                controlAffinity: ListTileControlAffinity.leading,
                                                activeColor: Colors.green,
                                                title: Text('- 15 min',
                                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04,),
                                                ),
                                                value: valuefirst,
                                                onChanged: (bool value) {
                                                  setState(() {
                                                    valuefirst = value;
                                                  });
                                                },
                                              ),

                                              CheckboxListTile(
                                                controlAffinity: ListTileControlAffinity.leading,
                                                activeColor: Colors.green,
                                                title: Text('- 25 min',
                                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                ),
                                                value: valuesecond,
                                                onChanged: (bool value) {
                                                  setState(() {
                                                    valuesecond = value;
                                                  });
                                                },
                                              ),
                                              CheckboxListTile(
                                                controlAffinity: ListTileControlAffinity.leading,
                                                activeColor: Colors.green,
                                                title: Text('- 35 min',
                                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                ),
                                                value: valuesecond,
                                                onChanged: (bool value) {
                                                  setState(() {
                                                    valuesecond = value;
                                                  });
                                                },
                                              ),
                                              CheckboxListTile(
                                                controlAffinity: ListTileControlAffinity.leading,
                                                activeColor: Colors.green,
                                                title: Text('- 45 min',
                                                  style : TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
                                                ),
                                                value: valuesecond,
                                                onChanged: (bool value) {
                                                  setState(() {
                                                    valuesecond = value;
                                                  });
                                                },
                                              ),
                                            ])
                                    ),
                          ],
                        )
                    ),
                ]),
              ),
            ])));
          });
        });

  }


class CustomSearchDelegate extends SearchDelegate {
  var suggestion = ["ahmed", "ali", "mohammad"];
  List<String> searchResult = List();

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    searchResult.clear();
    searchResult =
        allNames.where((element) => element.startsWith(query)).toList();
    return Container(
      margin: EdgeInsets.all(20),
      child: ListView(
          padding: EdgeInsets.only(top: 8, bottom: 8),
          scrollDirection: Axis.vertical,
          children: List.generate(suggestion.length, (index) {
            var item = suggestion[index];
            return Card(
              color: Colors.white,
              child: Container(padding: EdgeInsets.all(16), child: Text(item)),
            );
          })),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // This method is called everytime the search term changes.
    // If you want to add search suggestions as the user enters their search term, this is the place to do that.
    final suggestionList = query.isEmpty
        ? suggestion
        : allNames.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          if (query.isEmpty) {
            query = suggestion[index];
          }
        },
        leading: Icon(query.isEmpty ? Icons.history : Icons.search),
        title: RichText(
            text: TextSpan(
                text: suggestionList[index].substring(0, query.length),
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: suggestionList[index].substring(query.length),
                    style: TextStyle(color: Colors.black),
                  )
                ])),
      ),
      itemCount: suggestionList.length,
    );
  }
}
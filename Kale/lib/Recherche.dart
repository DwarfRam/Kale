import 'package:flutter/material.dart';
import 'Menu.dart';
import 'main.dart';

class Recherche extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RechercheState();
  }
}



class _RechercheState extends State<Recherche> {

  TextEditingController _textController = TextEditingController();
  List<String> initialList = ["Chat", "Chien", "Rat", "Cheval", "Ours"];
  List<String> filteredList = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Recheche'),
      ),
      body: Column(
        children: <Widget>[TextField(
  controller: _textController,
  onChanged: (text) {
  text = text.toLowerCase();
  setState(() {
  filteredList = initialList
      .where((element) => element.toLowerCase().contains(text))
      .toList();
  });
  },
  ),
        if (filteredList.length == 0 && _textController.text.isEmpty)
            Expanded(
            child: ListView.builder(
            itemCount: initialList.length,
            itemBuilder: (BuildContext context, index) {
            return Container(
            height: 50,
            child: Text(initialList[index]),
        );
  }))
        else if (filteredList.length==0 && _textController.text.isNotEmpty)
            Expanded(
            child: Container(
            child: Text('Aucune donnée'),
            ),
        )
      else
          Expanded(
          child: ListView.builder(
          itemCount: filteredList.length,
          itemBuilder: (BuildContext context, index) {
          return Container(
          height: 50,
          child: Text(filteredList[index]),
          );
          }),
          ),
                ],

      ),
      bottomNavigationBar: Menu(currentindex : 2),
    );
  }


}


import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyBottomBarWidget(),
    );
  }
}

class MyBottomBarWidget extends StatefulWidget {
  MyBottomBarWidget({Key key}) : super(key: key);
  @override
  _MyBottomBarWidgetState createState() => _MyBottomBarWidgetState();
}

class _MyBottomBarWidgetState extends State {
  int _pageIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Bottom Navigation bar'),
        ),
        body: new Center(
          child: new Text('Look at my fancy bottom'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _pageIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.add_alarm, color: Colors.red),
                title: new Text('Page 1')),
            BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit, color: Colors.yellow),
                title: new Text('Page 2')),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_alert, color: Colors.blue),
                title: new Text('Page 3')),
            BottomNavigationBarItem(
                icon: Icon(Icons.add,
                    color: Colors.green),
                title: new Text('Page 4'))
          ],
          onTap: (index) {
            _incrementTab(index);
          },
        ));
  }
}
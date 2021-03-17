import 'package:flutter/material.dart';
import 'package:flutter_search/pages/search/seach_page.dart';
import 'Routes.dart';
import 'Menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static Widget menu;
  @override
  Widget build(BuildContext context) {
    menu = new Menu();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kale',
      onGenerateRoute: Routes.generateRoute,
      initialRoute: home,
    );
  }
}

class FlutterSearch extends StatefulWidget {
	@override
	_FlutterSearchState createState() => _FlutterSearchState();
}

class _FlutterSearchState extend state<FlutterSearch> {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			home: SearchPage(),
		);
	}
}
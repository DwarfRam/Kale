import 'package:flutter/material.dart';
import 'Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kale',
      onGenerateRoute: Routes.generateRoute,
      initialRoute: home,
    );

  }


  }

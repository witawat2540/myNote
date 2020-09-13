import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyNote',
      home: HomePage(),
      theme: ThemeData(
        fontFamily: 'Supermarket',
        scaffoldBackgroundColor: Colors.indigo[100],
        primarySwatch: Colors.purple,
      ),
    );
  }
}

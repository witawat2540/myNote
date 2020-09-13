import 'package:flutter/material.dart';

import 'AboutMe.dart';
import 'MyNote.dart';
import 'MyWiget/Mydrawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _page_widget = Mynote();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Note"),
      ),
      drawer: drawer_tar(
        name: 'witawatd Kawseewai',
        email: 'witawatd81@gmail.com',
        functionIitem_1: (){
          setState(() {
            _page_widget = Mynote();
            Navigator.pop(context);
          });
        },
        functionIitem_2: (){
          _page_widget = AboutMe();
          Navigator.pop(context);
        },
      ),
      body: _page_widget,
    );
  }
}


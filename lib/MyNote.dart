import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'MyWiget/Myitem.dart';
import 'MyWiget/Mytextfieid.dart';
import 'node_add.dart';

class Mynote extends StatefulWidget {
  @override
  _MynoteState createState() => _MynoteState();
}

class _MynoteState extends State<Mynote> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        print("sdss");
      },
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            child: MyTextFieid(
              label: 'Search',
              icons: Icon(Icons.search),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * (1600 / 2436),
            child: ListView(
              children: [my_item()],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Note_add(),
                  ),
                );
              },
              child: Text("Add Note"),
              color: Colors.indigo,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

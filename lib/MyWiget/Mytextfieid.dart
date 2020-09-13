import 'package:flutter/material.dart';

class MyTextFieid extends StatelessWidget {
  final TextEditingController textEditingController;

  final String label;
  final Icon icons;

  const MyTextFieid({
    this.textEditingController,
    this.label,
    this.icons,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: TextField(
        //textAlign: TextAlign.center,
        controller: textEditingController,
        cursorColor: Colors.blueGrey,
        decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.blueGrey),
          labelText: label,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          fillColor: Colors.white,
          filled: true,
          //suffixIcon: Icon(Icons.account_circle),
          prefixIcon: Container(
            color: Colors.white,
            margin: EdgeInsets.all(4.0),
            child: icons,
          ),
        ),
      ),
    );
  }
}

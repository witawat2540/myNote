import 'package:flutter/material.dart';
import 'package:my_note/MyWiget/Mytextfieid.dart';

class Note_add extends StatefulWidget {
  @override
  _Note_addState createState() => _Note_addState();
}

class _Note_addState extends State<Note_add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Note'),
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              MyTextFieid(
                label: 'Title',
                icons: Icon(Icons.assignment_turned_in),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  //controller: _address,
                  //cursorColor: cursorColor,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Detail : ',
                      hintText: 'เช่น 148/2 บ้านแมด ',
                      suffixIcon: Icon(Icons.location_on)),
                  maxLines: 2,
                  onSaved: (value) {},
                  //validator: _validateaddress,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  //controller: _address,
                  //cursorColor: cursorColor,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Remark : ',
                    suffixIcon: Icon(Icons.chrome_reader_mode),
                  ),
                  maxLines: 2,
                  onSaved: (value) {},
                  //validator: _validateaddress,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text("Save"),
                  color: Colors.indigo,
                  textColor: Colors.white,
                ),
              )
            ],
          ),
        ));
  }
}

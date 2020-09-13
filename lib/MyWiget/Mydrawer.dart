import 'package:flutter/material.dart';

class drawer_tar extends StatelessWidget {
  final String name;
  final String email;
  final Function functionIitem_1;
  final Function functionIitem_2;

  const drawer_tar({
    this.name = '',
    this.email = '',
    this.functionIitem_1,
    this.functionIitem_2,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(name),
            accountEmail: Text(this.email),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black,
            ),
            otherAccountsPictures: <Widget>[
              Ink(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    child: Icon(Icons.arrow_back_ios),
                    foregroundColor: Colors.pink,
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            onTap: functionIitem_1,
            title: Text("My Note"),
            leading: Icon(Icons.note),
          ),
          Divider(
            color: Colors.indigo,
          ),
          ListTile(
            title: Text("About Me"),
            leading: Icon(Icons.account_box),
            onTap: functionIitem_2,
          ),
          Divider(
            color: Colors.indigo,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class my_item extends StatelessWidget {
  final Function edit;
  final Function delete;
  final String name;
  const my_item({
    this.edit,
    this.delete,
    this.name = '',
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: Card(
        margin: EdgeInsets.only(left: 5, right: 5),
        child: ListTile(
          title: Text("Name :" + name),
        ),
      ),
      secondaryActions: [
        IconSlideAction(
          caption: 'Edit',
          color: Colors.blueAccent,
          icon: Icons.edit,
          onTap: edit,
        ),
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
          onTap: delete,
        ),
      ],
    );
  }
}
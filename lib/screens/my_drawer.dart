import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            color: Colors.grey,
            child: Text(
              "Task Drawer",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          const ListTile(
            leading: Icon(Icons.folder_special),
            title: Text("My Tasks"),
            trailing: Text("0"),
          ),
          Divider(),
          const ListTile(
            leading: Icon(Icons.delete),
            title: Text("Bin"),
            trailing: Text("0"),
          ),
        ],
      )),
    );
  }
}

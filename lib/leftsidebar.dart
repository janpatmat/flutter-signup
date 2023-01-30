import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class leftsidebar extends StatelessWidget {
  const leftsidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("About"),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("About"),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("About"),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("About"),
          )
        ],
      ),
    );
  }
}

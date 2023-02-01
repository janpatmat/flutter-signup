import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutterloginpage/main.dart';
import 'homepage.dart';

class leftsidebar extends StatelessWidget {
  const leftsidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Image(
              image: AssetImage('images/personlogo.png'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.cases),
            title: Text("Projects"),
          ),
          ListTile(
            leading: Icon(Icons.backpack),
            title: Text("Report"),
          ),
          SizedBox(
            height: 100,
          ),
          ListTile(
            leading: Icon(Icons.question_answer),
            title: Text("About"),
          ),
          ListTile(
            leading: Icon(Icons.back_hand),
            title: Text("Logout"),
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const MyApp())),
          ),
        ],
      ),
    );
  }
}

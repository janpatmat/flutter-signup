import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutterloginpage/main.dart';
import 'sidebarxnav.dart';
import 'card.dart';
import 'homepage.dart';

class homeDesktop extends StatelessWidget {
  const homeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width * .5;
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          Expanded(
              child: Drawer(
                  child: SingleChildScrollView(
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
                  height: 350,
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
          ))),
          Expanded(
              flex: 5,
              child: Container(
                color: Colors.deepPurple,
                child: Center(
                  child: Image(
                    image: AssetImage('images/personlogo.png'),
                  ),
                ),
              )),
          Expanded(
              child: Container(
            child: myCard(),
          ))
        ],
      )),
    );
  }
}

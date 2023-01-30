import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'homepage.dart';

class signupPage extends StatelessWidget {
  const signupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width * .5;
    final lightPurple = Color.fromRGBO(92, 25, 169, 100);
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            color: lightPurple,
          ),
          Container(
            height: 600,
            width: currentWidth,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Column(children: [
              Padding(padding: EdgeInsetsDirectional.only(top: 48.0)),
              Image(
                image: AssetImage('images/personlogo.png'),
                height: 150,
                width: 150,
              ),
              SizedBox(
                height: 50,
                width: 50,
              ),
              Text("Wellcome back!"),
              Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: TextField(
                    decoration: const InputDecoration(
                        labelText: 'Email or Phone number'),
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: TextField(
                    decoration: const InputDecoration(labelText: 'Password'),
                  )),
              Container(
                padding: (EdgeInsets.only(right: 30)),
                alignment: Alignment.bottomRight,
                child: Text("Recover account?"),
              ),
              ElevatedButton(
                  style: ButtonStyle(), onPressed: () {}, child: Text("sad")),
              SizedBox(
                height: 30,
                width: 50,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      onPrimary: Colors.black,
                      minimumSize: Size(double.infinity, 50)),
                  icon: FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.white,
                  ),
                  label: Text("Hello world"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homepage()));
                  },
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}

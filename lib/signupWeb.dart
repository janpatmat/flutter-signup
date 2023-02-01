import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'homepage.dart';

class signupWeb extends StatelessWidget {
  const signupWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color(0xFFb042ff),
                Color(0xFFca8dfd),
                Colors.white
              ])),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .7,
                width: MediaQuery.of(context).size.width * .6,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(16)),
                child: Row(children: [
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.height * .7,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(15, 218, 184, 206)
                                .withOpacity(1),
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(children: [
                          SizedBox(
                            height: 32,
                          ),
                          Image(
                            image: AssetImage('images/personlogo.png'),
                            height: 150,
                            width: 150,
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Text(
                            "Wellcome back!",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.black87),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 30, right: 30),
                              child: TextField(
                                decoration: const InputDecoration(
                                    labelText: 'Email or Phone number'),
                              )),
                          Padding(
                              padding: EdgeInsets.only(left: 30, right: 30),
                              child: TextField(
                                decoration: const InputDecoration(
                                    labelText: 'Password'),
                              )),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            padding: (EdgeInsets.only(right: 30)),
                            alignment: Alignment.bottomRight,
                            child: Text("Recover account?"),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF4B0076)),
                              onPressed: () {},
                              child: Text("Sign in")),
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
                              label: Text("Sign in using Google"),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => homepage()));
                              },
                            ),
                          )
                        ]),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height * .7,
                          width: MediaQuery.of(context).size.width / 3.8,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Dont have an account?",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                                SizedBox(height: 16),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xFF4B0076)),
                                    onPressed: () {},
                                    child: Text(
                                      "Sign up now!",
                                    )),
                              ]))
                    ],
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

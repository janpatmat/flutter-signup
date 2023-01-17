import 'package:flutter/material.dart';

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
              Text("Wellcome back!")
            ]),
          )
        ],
      ),
    );
  }
}

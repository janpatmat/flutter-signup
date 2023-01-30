import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'leftsidebar.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: leftsidebar(),
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Image(
            image: AssetImage('images/personlogo.png'),
            height: 150,
            width: 150,
          ),
        ),
      ),
    );
  }
}

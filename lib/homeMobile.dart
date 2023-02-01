import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'leftsidebar.dart';
import 'card.dart';

class homeMobile extends StatelessWidget {
  const homeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: leftsidebar(),
      appBar: AppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: Center(child: myCard()),
      ),
    );
  }
}

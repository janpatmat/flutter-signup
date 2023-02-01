import 'package:flutter/material.dart';
import 'package:flutterloginpage/signupMobile.dart';
import 'signupWeb.dart';
import 'responsiveLayout.dart';
import 'signupMobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
          mobileBody: signupMobile(), desktopBody: signupWeb()),
    );
  }
}

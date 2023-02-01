import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'leftsidebar.dart';
import 'responsiveLayout.dart';
import 'homeDesktop.dart';
import 'homeMobile.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
          mobileBody: homeMobile(), desktopBody: homeDesktop()),
    );
  }
}

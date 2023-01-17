import 'package:flutter/material.dart';

class signupPage extends StatelessWidget {
  const signupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width *.5;
    final lightPurple = Color.fromRGBO(92, 25, 169, 100);
    return Scaffold(
      
        body:Stack(
          alignment: Alignment.center,
          children: [
            Container(
              color: lightPurple,
            ),
            Container(
              height: 700,
              width: currentWidth,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
            )
          ],
          
            
          ),
         
        );
    
  }
}

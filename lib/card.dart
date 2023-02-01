import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class myCard extends StatelessWidget {
  const myCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Card(
      child: Container(
        width: 200,
        height: 300,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                Container(
                  height: 150,
                  width: 200,
                  margin: EdgeInsets.only(bottom: 40),
                  decoration: const BoxDecoration(
                      // image: DecorationImage(
                      //   image: AssetImage("assets/as.png"),
                      // ),
                      gradient:
                          LinearGradient(colors: [Colors.red, Colors.blue])),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/SGI-2016-South_Georgia_%28Fortuna_Bay%29%E2%80%93King_penguin_%28Aptenodytes_patagonicus%29_04.jpg/1200px-SGI-2016-South_Georgia_%28Fortuna_Bay%29%E2%80%93King_penguin_%28Aptenodytes_patagonicus%29_04.jpg'),
                  maxRadius: 40,
                )
              ],
            ),
            Text(
              "Peng the Penguin",
              style: GoogleFonts.lobster(
                  textStyle: TextStyle(
                fontSize: 20,
              )),
            ),
            Text(
              "Your average penguin noot noot",
              style: GoogleFonts.lobster(
                  textStyle: TextStyle(
                fontSize: 10,
                color: Colors.grey,
              )),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
            ),
            Container(
              padding: EdgeInsets.only(left: 55),
              child: Row(
                children: [
                  Icon(
                    Icons.android_outlined,
                    color: Colors.grey,
                    size: 30,
                  ),
                  Icon(
                    Icons.add_to_drive,
                    color: Colors.grey,
                    size: 30,
                  ),
                  Icon(
                    Icons.translate,
                    color: Colors.grey,
                    size: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

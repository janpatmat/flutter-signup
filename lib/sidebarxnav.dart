import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sidebarx/sidebarx.dart';

class sidebarxNav extends StatelessWidget {
  const sidebarxNav({super.key});

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            SidebarX(
              controller: SidebarXController(selectedIndex: 1),
              items: const [
                SidebarXItem(icon: Icons.home, label: 'Home'),
                SidebarXItem(icon: Icons.search, label: 'Search'),
              ],
              extendedTheme: const SidebarXTheme(
                  decoration: BoxDecoration(color: Colors.purple), width: 300),
            ),
            // Your app screen body
          ],
        ),
      ),
    );
  }
}

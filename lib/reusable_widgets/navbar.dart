import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fsktm_hub/reusable_widgets/reusable_widgets.dart';
import 'package:fsktm_hub/screens/blocka_screen.dart';
import 'package:fsktm_hub/screens/blockb_screen.dart';
import 'package:fsktm_hub/screens/dashboard_screen.dart';
import 'package:fsktm_hub/utils/color_utils.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: logoWidget("assets/images/fsktm-small.png"),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              'Dashboard',
              style: TextStyle(
                color: hexStringToColor("A478B8"),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const Dashboard(),
                ),
              ); // Handle onTap for Item 1
            },
          ),
          ListTile(
            title: Text(
              'Block A',
              style: TextStyle(
                color: hexStringToColor("A478B8"),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const BlockA(),
                ),
              ); // Handle onTap for Item 1
            },
          ),
          ListTile(
            title: Text(
              'Block B',
              style: TextStyle(
                color: hexStringToColor("A478B8"),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const BlockB(),
                ),
              ); // Handle onTap for Item 1
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
          child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.white),
            accountName: Text(
              "Afghan Utilities",
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: null,
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset("assets/images/logo.png"),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.info_outlined),
            title: Text(
              "About",
              style: TextStyle(
                color: Color(0xFF909090),
              ),
            ),
            iconColor: Color(0xFF909090),
          ),
          ListTile(
            leading: Icon(Icons.app_settings_alt_outlined),
            title: Text(
              "Service",
              style: TextStyle(
                color: Color(0xFF909090),
              ),
            ),
            iconColor: Color(0xFF909090),
          ),
          ListTile(
            leading: Image.asset(
              "assets/images/team.png",
              width: 24,
              height: 24,
            ),
            title: Text(
              "Our Team",
              style: TextStyle(color: Color(0xFF909090)),
            ),
          ),
          ListTile(
            leading: Image.asset(
              "assets/images/support.png",
              width: 24,
              height: 24,
            ),
            title: Text(
              "Customer Support",
              style: TextStyle(color: Color(0xFF909090)),
            ),
          ),
          ListTile(
            leading: Image.asset(
              "assets/images/ion_language.png",
              width: 24,
              height: 24,
            ),
            title: Text(
              "Languages",
              style: TextStyle(color: Color(0xFF909090)),
            ),
          )
        ],
      )),
    );
  }
}

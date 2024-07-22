import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      height: 56,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.fromLTRB(18, 0, 18, 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: LinearGradient(
          colors: [Color(0xFF1B67C1), Color(0xFF50BDEC)],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "/home");
            },
            child: Container(
              child: Icon(
                Icons.home,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "/notification");
            },
              child: Container(
                child: Icon(
                  Icons.notifications,
                  size: 28,
                  color: Colors.white,
                ),
              )),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "/profile");
            },
            child: Container(
              child: Icon(
                Icons.person,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

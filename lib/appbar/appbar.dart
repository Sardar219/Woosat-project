import 'package:flutter/material.dart';

class BuildAppbar extends StatelessWidget {
  const BuildAppbar({super.key});

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      leading: Builder(builder: (context) {
        return TextButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            child: Image.asset("assets/images/menu.png"));
      }),
      title: Text(
        "Afghan Utilites",
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 1),
      ),
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF1B67C1), Color.fromARGB(255, 80, 161, 236)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
      centerTitle: true,
      actions: [
        TextButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Your Have ${num} notifications"),
                  action: SnackBarAction(
                    label: "Close",
                    onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    },
                  ),
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              );
            },
            child: Badge(
              child: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              label: Text("5"),
            ))
      ],
    );
  }
}

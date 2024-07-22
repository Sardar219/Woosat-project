import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_first/layout/bottomNav.dart';
import 'package:flutter_first/layout/navbar.dart';

class Converter extends StatefulWidget {
  const Converter({super.key});

  @override
  State<Converter> createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  String History = "From Gregorian";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      bottomNavigationBar: BottomNav(),
      drawer: NavBar(),
      body: Container(
        margin: EdgeInsets.all(12),
        child: ListView(
          children: [
            Text(
              "Date Converter",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 21),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 5),
              margin: EdgeInsets.only(left: 5, top: 5),
              decoration: BoxDecoration(
                  color: Color(0xffE8E8E8),
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(8)),
              child: DropdownButton(
                  underline: SizedBox(),
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xFF161616),
                  ),
                  iconSize: 28,
                  isExpanded: true,
                  dropdownColor: Color(0xFFE8E8E8),
                  style: TextStyle(color: Color(0xFF161616)),
                  value: History,
                  items: [
                    DropdownMenuItem(
                      child: Text("From Gregorian"),
                      value: "From Gregorian",
                    ),
                    DropdownMenuItem(
                      child: Text("From Hijri"),
                      value: "From Hijri",
                    ),
                    DropdownMenuItem(
                      child: Text("From Shamsi"),
                      value: "From Shamsi",
                    ),
                  ],
                  onChanged: (String? newValue) {
                    setState(() {
                      History = newValue!;
                    });
                  }),
            ),
            SizedBox(
              height: 15,
            ),
            Wrap(

              spacing: 10,
              runSpacing: 10,
              children: [
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(left: 10),

                    child:TextField(
                      decoration: InputDecoration(
                        fillColor: Color(0xffe8e8e8),
                        filled: true,
                        hintText: "DD",
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.keyboard_arrow_down),
                      ),
                    ),
                ),
                Container(
                  width: 100,
                      child: TextField(
                    decoration: InputDecoration(
                      fillColor: Color(0xffe8e8e8),
                      filled: true,
                      hintText: "MM",
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                    ),
                  ),
                ),
                Container(
                  width: 120,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Color(0xffe8e8e8),
                        filled: true,
                        hintText: "YYYY",
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.keyboard_arrow_down),
                      ),
                    ),),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_first/layout/bottomNav.dart';
import 'package:flutter_first/layout/navbar.dart';

class PassportSetting extends StatefulWidget {
  const PassportSetting({super.key});

  @override
  State<PassportSetting> createState() => _PassportSettingState();
}

class _PassportSettingState extends State<PassportSetting> {
  String dropdownValue = "Kabul";
  String dropdwonValue2 = "Ranging";
  String ringtone = "Silent";
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, "/passport");
                  },
                  child: Icon(
                    Icons.arrow_back_ios_outlined,
                    size: 18,
                  ),
                ),
                Text(
                  "Passport Notification",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 18),
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, "/passportList");
                  },
                  child: Icon(
                    Icons.filter_list,
                    size: 24,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text("Select a Province:"),
            Container(
              padding: EdgeInsets.only(left: 15, right: 5),
              margin: EdgeInsets.only(
                left: 5,
                top: 5,
              ),
              decoration: BoxDecoration(
                  color: Color(0xffE8E8E8),
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(8)),
              child: DropdownButton<String>(
                  underline: SizedBox(),
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xFF161616),
                  ),
                  iconSize: 28,
                  isExpanded: true,
                  dropdownColor: Color(0xFFE8E8E8),
                  value: dropdownValue,
                  style: TextStyle(color: Color(0xFF161616)),
                  items: const [
                    DropdownMenuItem(
                      child: Text("Kabul"),
                      value: "Kabul",
                    ),
                    DropdownMenuItem(
                      child: Text("Bamyan"),
                      value: "Bamyan",
                    ),
                  ],
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Select a Type:"),
            Container(
              padding: EdgeInsets.only(left: 15, right: 5),
              margin: EdgeInsets.only(left: 5, top: 5),
              decoration: BoxDecoration(
                  color: Color(0xffE8E8E8),
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(8)),
              child: DropdownButton<String>(
                  underline: SizedBox(),
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xFF161616),
                  ),
                  iconSize: 28,
                  isExpanded: true,
                  dropdownColor: Color(0xFFE8E8E8),
                  style: TextStyle(color: Color(0xFF161616)),
                  value: dropdwonValue2,
                  items: const [
                    DropdownMenuItem(
                      child: Text("Ranging"),
                      value: "Ranging",
                    ),
                    DropdownMenuItem(
                      child: Text("Message"),
                      value: "Message",
                    ),
                  ],
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdwonValue2 = newValue!;
                    });
                  }),
            ),
            SizedBox(
              height: 25,
            ),
            Text("Select a ringtone:"),
            Container(
              padding: EdgeInsets.only(left: 15, right: 5),
              margin: EdgeInsets.only(left: 5, top: 5),
              decoration: BoxDecoration(
                  color: Color(0xffE8E8E8),
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(8)),
              child: DropdownButton<String>(
                  underline: SizedBox(),
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xFF161616),
                  ),
                  iconSize: 28,
                  isExpanded: true,
                  dropdownColor: Color(0xFFE8E8E8),
                  style: TextStyle(color: Color(0xFF161616)),
                  value: ringtone,
                  items: const [
                    DropdownMenuItem(
                      child: Text("Silent"),
                      value: "Silent",
                    ),
                    DropdownMenuItem(
                      child: Text("Anam"),
                      value: "Anam",
                    ),
                    DropdownMenuItem(
                      child: Text("Basic Bell"),
                      value: "Basic Bell",
                    ),
                    DropdownMenuItem(
                      child: Text("Chime"),
                      value: "Chime",
                    ),
                  ],
                  onChanged: (String? newValue) {
                    setState(() {
                      ringtone = newValue!;
                    });
                  }),
            ),
            SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xFF1B67C1),
                        Color.fromARGB(255, 80, 161, 236)
                      ]),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextButton(
                    child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/passportList");
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

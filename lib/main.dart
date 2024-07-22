// import packages

import "package:flutter/material.dart";
import 'package:flutter_first/pages/passportList.dart';
import 'package:flutter_first/pages/passportsetting.dart';
import "package:google_fonts/google_fonts.dart";

// import pages
import "package:flutter_first/home.dart";
import 'package:flutter_first/pages/passport.dart';
import 'package:flutter_first/pages/calendar.dart';
import 'package:flutter_first/pages/callrecorder.dart';
import 'package:flutter_first/pages/converter.dart';
import 'package:flutter_first/pages/doctor.dart';
import 'package:flutter_first/pages/emgCall.dart';
import 'package:flutter_first/pages/job.dart';
import 'package:flutter_first/pages/scanner.dart';
import 'package:flutter_first/pages/shop.dart';
import 'package:flutter_first/pages/notification.dart';
import 'package:flutter_first/pages/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "${GoogleFonts.roboto()}"),
      home: Home(),
      routes: {
        "/home": (context) => const Home(),
        "/passport": (context) => const Passport(),
        "/calendar": (context) => const Calendar(),
        "/callrecorder": (context) => const CallRecorder(),
        "/converter": (context) => const Converter(),
        "/emgCall": (context) => const EmgCall(),
        "/doctor": (context) => const Doctor(),
        "/shop": (context) => const Shop(),
        "/job": (context) => const Jobs(),
        "/profile": (context) => const Profile(),
        "/notification": (context) => const Notificat(),
        "/scanner": (context) => const Scanner(),
        "/passportsetting": (context) => const PassportSetting(),
        "/passportList": (context) => const PassportList(),
      },
    );
  }
}

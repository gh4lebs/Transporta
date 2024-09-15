// ignore_for_file: prefer_const_constructors

import 'package:first_app/auth/signup.dart';
import 'package:first_app/home/account_settings.dart';
import 'package:first_app/home/edit_profile.dart';
import 'package:first_app/home/homepage.dart';
import 'package:first_app/home/notifications.dart';
import 'package:first_app/home/search.dart';
import 'package:first_app/home/seats.dart';
import 'package:first_app/home/support.dart';
import 'package:first_app/home/tickets.dart';
import 'package:first_app/home/settings.dart';
import 'package:first_app/home/wallet.dart';
import 'package:flutter/material.dart';
import 'package:first_app/auth/login.dart';

import 'package:first_app/home/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffE8F9FD),
        primaryColor: Colors.black,
        secondaryHeaderColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xffb33030),
        ),
      ),
      home: Login(),
      routes: {
        "login": (context) => Login(),
        "signup": (context) => Signup(),
        "homepage": (context) => Homepage(),
        "search": (context) => Search(),
        "seats": (context) => Seats(),
        "tickets": (context) => Tickets(),
        "profile": (context) => Profile(),
        "settings": (context) => Settings(),
        "account-settings": (context) => Acc_Settings(),
        "notifications": (context) => Notifications(),
        "wallet": (context) => Wallet(),
        "support": (context) => Support(),
        "edit-profile": (context) => Edit()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}

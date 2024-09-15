// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  bool val4 = false;
  bool val = false;
  onChangedMethod1(bool newValue1) {
    setState(() {
      val1 = newValue1;
    });
  }

  onChangedMethod2(bool newValue2) {
    setState(() {
      val2 = newValue2;
    });
  }

  onChangedMethod3(bool newValue3) {
    setState(() {
      val3 = newValue3;
    });
  }

  onChangedMethod4(bool newValue4) {
    setState(() {
      val4 = newValue4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: Column(
        children: [
          customSwitch(Icons.newspaper, "News For You", val1, onChangedMethod1),
          customSwitch(
              Icons.local_activity, "Account Activity", val2, onChangedMethod2),
          customSwitch(Icons.message, "News Letter", val3, onChangedMethod3),
          customSwitch(Icons.update, "App Update", val4, onChangedMethod4),
        ],
      ),
    );
  }
}

Widget customSwitch(
    IconData icon, String text, bool val, Function onChangedMethod) {
  return Padding(
    padding: EdgeInsets.only(top: 22, left: 16, right: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Icon(
            icon,
            color: Color(0xffb33030),
          ),
        ),
        Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        Spacer(),
        CupertinoSwitch(
            trackColor: Colors.grey,
            activeColor: Color(0xffb33030),
            value: val,
            onChanged: (newValue) {
              onChangedMethod(newValue);
            })
      ],
    ),
  );
}

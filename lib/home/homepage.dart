// ignore_for_file: prefer_const_constructors

import 'package:first_app/home/booking.dart';
import 'package:first_app/home/profile.dart';
import 'package:first_app/home/tickets.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

int selectedindex = 0;
List<Widget> widgetpages = [
  Booking(),
  Tickets(),
  Profile(),
];

@override
class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 65,
        child: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                selectedindex = index;
              });
            },
            currentIndex: selectedindex,
            elevation: 4,
            backgroundColor: Color(0xffb33030),
            // unselectedItemColor: Color(0xffD6E6F2),
            selectedItemColor: Color(0xffE8F9FD),
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Booking"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.confirmation_num), label: "Tickets"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ]),
      ),
      body: SafeArea(
          top: true,
          child: Center(child: widgetpages.elementAt(selectedindex))),
    );
  }
}

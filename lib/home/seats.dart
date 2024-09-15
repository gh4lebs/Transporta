// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';

class Seats extends StatefulWidget {
  const Seats({super.key});

  @override
  State<Seats> createState() => _SeatsState();
}

class _SeatsState extends State<Seats> {
  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        title: Text("Select Seat"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Color(0xff59CE8F),
                      borderRadius: BorderRadius.circular(4)),
                ),
                Text("Available"),
                Container(
                  height: 30,
                  width: 30,
                  child: Icon(Icons.clear),
                  decoration: BoxDecoration(
                      color: Color(0xffb33030),
                      borderRadius: BorderRadius.circular(4)),
                ),
                Text("Taken"),
              ],
            ),
          ),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Color.fromARGB(41, 255, 255, 255),
                borderRadius: BorderRadius.circular(8)),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(42),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          child: Icon(Icons.clear),
                          decoration: BoxDecoration(
                              color: Color(0xffb33030),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text(
                                            "No",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20),
                                          )),
                                      TextButton(
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                      actions: [
                                                        TextButton(
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pushNamed(
                                                                      "seats");
                                                            },
                                                            child: Text("OK"))
                                                      ],
                                                      icon: Icon(
                                                          Icons.attach_money),
                                                      title: Text(
                                                          "your ticket is booked"),
                                                      content: Text(
                                                          "7000sp is taken from your balance"));
                                                });
                                          },
                                          child: Text("Yes",
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 20))),
                                    ],
                                    title: Text("Do You Want This Seat?"),
                                    // content: Text("blah blah blah blah"),
                                    backgroundColor: Colors.white,
                                  );
                                });
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Color(0xff59CE8F),
                                borderRadius: BorderRadius.circular(6)),
                            child: Center(
                                child: Text(
                              "2",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "3",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "4",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "5",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          child: Icon(Icons.clear),
                          decoration: BoxDecoration(
                              color: Color(0xffb33030),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "7",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "8",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          child: Icon(Icons.clear),
                          decoration: BoxDecoration(
                              color: Color(0xffb33030),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                              child: Text(
                            "10",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "11",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "12",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          child: Icon(Icons.clear),
                          decoration: BoxDecoration(
                              color: Color(0xffb33030),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                              child: Text(
                            "14",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "15",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "4",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "17",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                              child: Text(
                            "18",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "19",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "20",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "21",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                              child: Text(
                            "22",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "23",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "24",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          child: Icon(Icons.clear),
                          decoration: BoxDecoration(
                              color: Color(0xffb33030),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                              child: Text(
                            "26",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          child: Icon(Icons.clear),
                          decoration: BoxDecoration(
                              color: Color(0xffb33030),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "28",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "29",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          child: Icon(Icons.clear),
                          decoration: BoxDecoration(
                              color: Color(0xffb33030),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "31",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "32",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "33",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                              child: Text(
                            "34",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "35",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          child: Icon(Icons.clear),
                          decoration: BoxDecoration(
                              color: Color(0xffb33030),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "37",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                              child: Text(
                            "38",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          child: Icon(Icons.clear),
                          decoration: BoxDecoration(
                              color: Color(0xffb33030),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "40",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "41",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                              child: Text(
                            "42",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "43",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          child: Icon(Icons.clear),
                          decoration: BoxDecoration(
                              color: Color(0xffb33030),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "45",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                              child: Text(
                            "46",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "47",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "48",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "49",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                              child: Text(
                            "50",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "51",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "52",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "53",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                              child: Text(
                            "54",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Spacer(),
                        Container(
                          height: 40,
                          width: 40,
                          child: Icon(Icons.clear),
                          decoration: BoxDecoration(
                              color: Color(0xffb33030),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 16),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "56",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff59CE8F),
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                              child: Text(
                            "57",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ))
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 84,
        child: BottomAppBar(
            color: Color(0xffE8F9FD),
            elevation: 64,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    "seat 1/1",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(
                                      "No",
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 20),
                                    )),
                                TextButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              actions: [
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pushNamed(
                                                              "homepage");
                                                    },
                                                    child: Text("OK"))
                                              ],
                                              icon: Icon(Icons.check),
                                              title: Text("successful"),
                                            );
                                          });
                                    },
                                    child: Text("Yes",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 20))),
                              ],
                              title: Text("Are you sure?"),
                              // content: Text("blah blah blah blah"),
                              backgroundColor: Colors.white,
                            );
                          });
                    },
                    child: Container(
                      height: 54,
                      decoration: BoxDecoration(
                          color: Color(0xffb33030),
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: Text(
                          "confirm",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffE8F9FD)),
                        ),
                      ),
                    ),
                  ))
                ],
              ),
            )),
      ),
    );
  }
}

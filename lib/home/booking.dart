// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

bool triptype = false;
int counter = 1;

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 18, 16, 16),
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Color(0xffE8F9FD)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "book tickets for your",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "next trip",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  width: MediaQuery.of(context).size.width - 160,
                  height: 64,
                  decoration: BoxDecoration(
                      color: Color(0xff191919),
                      borderRadius: BorderRadius.circular(32)),
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(
                          child: GestureDetector(
                        onTap: () {
                          setState(() {
                            triptype = true;
                          });
                        },
                        child: triptype
                            ? Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffb33030),
                                    borderRadius: BorderRadius.circular(32)),
                                child: Center(
                                  child: Text(
                                    "One Way",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffE8F9FD)),
                                  ),
                                ),
                              )
                            : Center(
                                child: Text(
                                  "One Way",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffDE8F9FD)),
                                ),
                              ),
                      )),
                      Expanded(
                          child: GestureDetector(
                        onTap: () {
                          setState(() {
                            triptype = false;
                          });
                        },
                        child: !triptype
                            ? Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffb33030),
                                    borderRadius: BorderRadius.circular(32)),
                                child: Center(
                                  child: Text(
                                    "Two Way",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffE8F9FD)),
                                  ),
                                ),
                              )
                            : Center(
                                child: Text(
                                  "Two Way",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffE8F9FD)),
                                ),
                              ),
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(6)),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Row(
                  children: [
                    Text(
                      "From:",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Expanded(
                      child: TextField(
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(6)),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Row(
                  children: [
                    Text(
                      "To:",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Expanded(
                      child: TextField(
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("date"),
                          SizedBox(
                            height: 16,
                          ),
                          SizedBox(
                            width: 150,
                            child: TextFormField(
                              keyboardType: TextInputType.datetime,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("returning"),
                          SizedBox(
                            height: 16,
                          ),
                          SizedBox(
                            width: 150,
                            child: TextFormField(
                              keyboardType: TextInputType.datetime,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("passengers"),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(color: Color(0xff303841), width: 1.5),
                    ),
                    height: 42,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            counter--;
                            if (counter <= 1) counter = 1;
                            setState(() {});
                          },
                          icon: Icon(Icons.remove),
                          color: counter == 1 ? Colors.grey : Colors.black,
                        ),
                        Text("$counter"),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                counter++;
                              });
                            },
                            icon: Icon(Icons.add)),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 64,
              ),
              Center(
                child: SizedBox(
                  width: 350,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("search");
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xffb33030),
                      ),
                    ),
                    child: Text(
                      "Search For Trips",
                      style: TextStyle(color: Color(0xffE8F9FD), fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Tickets extends StatefulWidget {
  const Tickets({super.key});

  @override
  State<Tickets> createState() => _TicketsState();
}

class _TicketsState extends State<Tickets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(16),
              height: 64,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Colors.black)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.filter_list)),
                  Text(
                    "Your previous tickets",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Divider(),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: 350,
                    height: 140,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffb33030), width: 5),
                        color: Color(0xffE8F9FD),
                        borderRadius: BorderRadius.circular(40)),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  "From: Homs",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  "To: Damascus",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Company: Ajouka",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "Date: 6/5/2022",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  "Price: 9000 SP",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    width: 350,
                    height: 140,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffb33030), width: 5),
                        color: Color(0xffE8F9FD),
                        borderRadius: BorderRadius.circular(40)),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  "From: Homs",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  "To: Damascus",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Company: Al-Qadmus",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "Date: 6/5/2022",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  "Price: 9000 SP",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    width: 350,
                    height: 140,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffb33030), width: 5),
                        color: Color(0xffE8F9FD),
                        borderRadius: BorderRadius.circular(40)),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  "From: Homs",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  "To: Damascus",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Company: Ajouka",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "Date: 6/5/2022",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  "Price: 9000 SP",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    width: 350,
                    height: 140,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffb33030), width: 5),
                        color: Color(0xffE8F9FD),
                        borderRadius: BorderRadius.circular(40)),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  "From: Homs",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  "To: Damascus",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Company: Tarwada",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "Date: 6/5/2022",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  "Price: 9000 SP",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

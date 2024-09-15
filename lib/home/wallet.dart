// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallet"),
      ),
      body: Column(
        children: [
          Container(
            height: 130,
            width: 500,
            decoration: BoxDecoration(
                color: Color(0xffb33030).withAlpha(250),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                        padding: EdgeInsets.all(8),
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "\nTotal Balance:",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.6),
                                  fontSize: 18)),
                          TextSpan(
                              text: "\n80,000 ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30)),
                          TextSpan(
                              text: "SP\n",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.6),
                                  fontSize: 30)),
                        ]))),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.add,
                        size: 40,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            width: 350,
            height: 90,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffb33030), width: 5),
                color: Color(0xffb33030),
                borderRadius: BorderRadius.circular(40)),
            padding: EdgeInsets.all(16),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Icon(
                      Icons.alarm_on_sharp,
                      size: 26,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Previous Payments:",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                    width: 350,
                    height: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffb33030), width: 5),
                        color: Color(0xffE8F9FD),
                        borderRadius: BorderRadius.circular(40)),
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "7000 SP has been payed",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text("On: 6/5/2022",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold))
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.check),
                          ],
                        )
                      ],
                    )),
                Divider(),
                Container(
                    width: 350,
                    height: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffb33030), width: 5),
                        color: Color(0xffE8F9FD),
                        borderRadius: BorderRadius.circular(40)),
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "7000 SP has been payed",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text("On: 6/5/2022",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold))
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.check),
                          ],
                        )
                      ],
                    )),
                Divider(),
                Container(
                    width: 350,
                    height: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffb33030), width: 5),
                        color: Color(0xffE8F9FD),
                        borderRadius: BorderRadius.circular(40)),
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "7000 SP has been payed",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text("On: 6/5/2022",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold))
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.check),
                          ],
                        )
                      ],
                    )),
                Divider(),
                Container(
                    width: 350,
                    height: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffb33030), width: 5),
                        color: Color(0xffE8F9FD),
                        borderRadius: BorderRadius.circular(40)),
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "7000 SP has been payed",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text("On: 6/5/2022",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold))
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.check),
                          ],
                        )
                      ],
                    )),
                Divider(),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trips"),
      ),
      body: Column(
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
                  "Search For Trips",
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
                  height: 250,
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
                                "departure",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text("6:30",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                              ),
                              Text(
                                "homs",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Company:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                "Tarwada",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xffb33030),
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                "arrival",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  "8:30",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Text(
                                "damascus",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 32),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.accessible),
                            Icon(Icons.work),
                            Icon(Icons.electrical_services),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("seats");
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff191919),
                            ),
                          ),
                          child: Text(
                            "7000 s.p. per ticket",
                            style: TextStyle(color: Color(0xffe8f9fd)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  width: 350,
                  height: 250,
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
                                "departure",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text("6:30",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                              ),
                              Text(
                                "homs",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Company:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                "Al-Ahlia",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xffb33030),
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                "arrival",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  "8:30",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Text(
                                "damascus",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 32),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.accessible),
                            Icon(Icons.work),
                            Icon(Icons.electrical_services),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("seats");
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff191919),
                            ),
                          ),
                          child: Text(
                            "7000 s.p. per ticket",
                            style: TextStyle(color: Color(0xffe8f9fd)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  width: 350,
                  height: 250,
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
                                "departure",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text("6:30",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                              ),
                              Text(
                                "homs",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Company:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                "Al-Qadmus",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xffb33030),
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                "arrival",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  "8:30",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Text(
                                "damascus",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 32),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.accessible),
                            Icon(Icons.work),
                            Icon(Icons.electrical_services),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("seats");
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff191919),
                            ),
                          ),
                          child: Text(
                            "7000 s.p. per ticket",
                            style: TextStyle(color: Color(0xffe8f9fd)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  width: 350,
                  height: 250,
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
                                "departure",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text("6:30",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                              ),
                              Text(
                                "homs",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Company:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                "Ajouka",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xffb33030),
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                "arrival",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  "8:30",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Text(
                                "damascus",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 32),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.accessible),
                            Icon(Icons.work),
                            Icon(Icons.electrical_services),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("seats");
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff191919),
                            ),
                          ),
                          child: Text(
                            "7000 s.p. per ticket",
                            style: TextStyle(color: Color(0xffe8f9fd)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

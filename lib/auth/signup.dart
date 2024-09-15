// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Color(0xffb33030),
          Color(0xffc5574f),
          Color(0xffd5796f),
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      "images/4.png",
                      width: 250,
                      height: 250,
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffe8f9fd),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          color: Color(0xffe8f9fd),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(143, 223, 21, 21),
                                blurRadius: 10,
                                offset: Offset(0, 0))
                          ]),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey.shade200))),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "username",
                                hintStyle: TextStyle(color: Color(0xff191919)),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey.shade200))),
                            child: TextField(
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                hintText: "phone number",
                                hintStyle: TextStyle(color: Color(0xff191919)),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey.shade200))),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "E-mail",
                                hintStyle: TextStyle(color: Color(0xff191919)),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey.shade200))),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "password",
                                hintStyle: TextStyle(color: Color(0xff191919)),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("homepage");
                        },
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xffb33030)),
                        ),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Color(0xffe8f9fd)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

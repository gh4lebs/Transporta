import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Edit Profile"),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 50),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                        width: 120,
                        height: 120,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/113.jpg"),
                        )),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xffb33030),
                          ),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Divider(),
                Container(
                  width: 350,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Color(0xffe8f9fd),
                      borderRadius: BorderRadius.circular(30),
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
                                bottom:
                                    BorderSide(color: Colors.grey.shade200))),
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
                                bottom:
                                    BorderSide(color: Colors.grey.shade200))),
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
                                bottom:
                                    BorderSide(color: Colors.grey.shade200))),
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
                                bottom:
                                    BorderSide(color: Colors.grey.shade200))),
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
                Divider(),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color(0xffb33030),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed("profile");
                      },
                      child: Text("Save Changes")),
                ),
              ],
            ),
          ),
        ));
  }
}

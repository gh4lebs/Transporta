// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 50),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                  width: 120,
                  height: 120,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/113.jpg"),
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                "Username",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                "user@somemail.com",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
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
                      Navigator.of(context).pushNamed("edit-profile");
                    },
                    child: Text("Edit Profile")),
              ),
              SizedBox(
                height: 30,
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              ProfileMenuWidget(
                title: "Settings",
                icon: Icons.settings,
                onPress: () {
                  Navigator.of(context).pushNamed("settings");
                },
              ),
              ProfileMenuWidget(
                title: "Wallet",
                icon: Icons.wallet,
                onPress: () {
                  Navigator.of(context).pushNamed("wallet");
                },
              ),
              ProfileMenuWidget(
                title: "Support",
                icon: Icons.support_agent,
                onPress: () {
                  Navigator.of(context).pushNamed("support");
                },
              ),
              ProfileMenuWidget(
                title: "Log Out",
                icon: Icons.logout,
                onPress: () {
                  Navigator.of(context).pushNamed("login");
                },
                endIcon: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textcolor,
  });
  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textcolor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        margin: EdgeInsets.only(left: 12),
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Color(0xffb33030).withOpacity(0.9)),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      ),
      trailing: endIcon
          ? Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(0.1)),
              child: Icon(
                Icons.chevron_right,
                size: 18,
                color: Color(0xffb33030),
              ),
            )
          : null,
    );
  }
}

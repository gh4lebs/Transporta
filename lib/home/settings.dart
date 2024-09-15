// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileMenuWidget(
              title: "Account Settings",
              icon: Icons.person,
              onPress: () {
                Navigator.of(context).pushNamed("account-settings");
              },
            ),
            ProfileMenuWidget(
              title: "Notifications",
              icon: Icons.notifications,
              onPress: () {
                Navigator.of(context).pushNamed("notifications");
              },
            ),
            ProfileMenuWidget(
              title: "Delete Account",
              icon: Icons.delete,
              onPress: () {
                Navigator.of(context).pushNamed("");
              },
              endIcon: false,
            ),
          ],
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

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Acc_Settings extends StatefulWidget {
  const Acc_Settings({super.key});

  @override
  State<Acc_Settings> createState() => _Acc_SettingsState();
}

class _Acc_SettingsState extends State<Acc_Settings> {
  var selectedCountry;
  var selectedLanguge;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Settings"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Location:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xffb33030),
                  ),
                ),
                Container(
                  width: 120,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  // color: Colors.white,
                  child: DropdownButton(
                    icon: const Icon(
                      Icons.arrow_circle_down_rounded,
                      color: Color(0xffb33030),
                    ),
                    dropdownColor: Color(0xffE8F9FD).withOpacity(0.9),
                    underline: const Divider(),
                    isExpanded: true,
                    hint: const Text(
                      "Select Your City",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    items: [
                      "Homs",
                      "Tartus",
                      "Damascus",
                      "Aleppo",
                      "Hama",
                      "Lattakia",
                    ]
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(
                                // ignore: unnecessary_string_interpolations
                                "$e",
                                style: const TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ))
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        selectedCountry = val!;
                      });
                      // ignore: avoid_print
                      print("$val");
                    },
                    value: selectedCountry,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Language:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xffb33030),
                  ),
                ),
                Container(
                  width: 120,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  // color: Colors.white,
                  child: DropdownButton(
                    icon: const Icon(
                      Icons.arrow_circle_down_rounded,
                      color: Color(0xffb33030),
                    ),
                    dropdownColor: Color(0xffE8F9FD).withOpacity(0.9),
                    underline: const Divider(),
                    isExpanded: true,
                    hint: const Text(
                      "Select Language",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    items: [
                      "English",
                      "Arabic",
                    ]
                        .map((ee) => DropdownMenuItem(
                              value: ee,
                              child: Text(
                                // ignore: unnecessary_string_interpolations
                                "$ee",
                                style: const TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ))
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        selectedLanguge = val!;
                      });
                      // ignore: avoid_print
                      print("$val");
                    },
                    value: selectedLanguge,
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          ProfileMenuWidget(title: "Privacy", icon: Icons.lock, onPress: () {}),
          ProfileMenuWidget(
              title: "Security", icon: Icons.security, onPress: () {}),
          ProfileMenuWidget(
              title: "Account Info", icon: Icons.info, onPress: () {}),

          // ignore: prefer_const_literals_to_create_immutables
        ],
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

import 'package:flutter/material.dart';

class Support extends StatefulWidget {
  const Support({super.key});

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Support"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 32),
        child: Column(
          children: [
            Divider(
              height: 1,
            ),
            ProfileMenuWidget(
                title: "Report a Bug", icon: Icons.bug_report, onPress: () {}),
            ProfileMenuWidget(
                title: "Send Feedback", icon: Icons.feedback, onPress: () {}),
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

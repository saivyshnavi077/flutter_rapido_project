import 'package:flutter/material.dart';
import 'package:rapido_screen/profile_page/help_page.dart';

class MyAboutPage extends StatefulWidget {
  const MyAboutPage({super.key});

  @override
  State<MyAboutPage> createState() => _MyAboutPageState();
}

class _MyAboutPageState extends State<MyAboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("About", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHelpPage()),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(36),
                ),
                child: Row(
                  children: [
                    Icon(Icons.help_outline),
                    SizedBox(width: 10),
                    Text("Help", style: TextStyle(fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 14,),
          MyAboutSettings(title: "Privacy Policy"),
          MyAboutSettings(title: "Terms and conditions"),
          MyAboutSettings(title: "Join the team"),
          MyAboutSettings(title: "Blog"),
          MyAboutSettings(title: "Software Licences"),
          Spacer(),
          Text("Version 8.127.0", style: TextStyle(color: Colors.indigo)),
        ],
      ),
    );
  }
}

class MyAboutSettings extends StatefulWidget {
  const MyAboutSettings({super.key, required this.title});
  final String title;
  @override
  State<MyAboutSettings> createState() => _MyAboutSettingsState();
}

class _MyAboutSettingsState extends State<MyAboutSettings> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18,),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: [
                Text(widget.title, style: TextStyle(fontWeight: FontWeight.w600)),
                Spacer(),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          Divider(color: Colors.grey.shade300),
        ],
      ),
    );
  }
}

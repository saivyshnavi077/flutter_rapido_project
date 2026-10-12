import 'package:flutter/material.dart';

class MyNotificationPage extends StatefulWidget {
  const MyNotificationPage({super.key});

  @override
  State<MyNotificationPage> createState() => _MyNotificationPageState();
}

class _MyNotificationPageState extends State<MyNotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Notifications",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                SizedBox(height: 40),
                MyNotifications(
                  title: "ssssshhhhhh!",
                  subtitle:
                      "Use Code FREERIDE for your 1st Cab Ride. Limited Period",
                  time: "2 hours ago",
                ),
                MyNotifications(
                  title: "This is your sign",
                  subtitle: "FREERIDE - Use the code & take your 1st Cab Ride.",
                  time: "22 hours ago",
                ),
                MyNotifications(
                  title: "Back from the break?",
                  subtitle: "Sit back and ease into Monday with Rapido",
                  time: "1 days ago",
                ),
                MyNotifications(
                  title: "Out of office, out of home",
                  subtitle: "Hop into an Auto and get going.",
                  time: "3 days ago",
                ),
                MyNotifications(
                  title: "No plans detected",
                  subtitle:
                      "Creating one.. FREERIDE - Use the code & take your 1st Cab Ride",
                  time: "3 days ago",
                ),
                // MyNotifications(),
                // MyNotifications(),
                // MyNotifications(),
                // MyNotifications(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyNotifications extends StatefulWidget {
  const MyNotifications({
    super.key,
    required this.subtitle,
    required this.time,
    required this.title,
  });
  final String title;
  final String subtitle;
  final String time;
  @override
  State<MyNotifications> createState() => _MyNotificationsState();
}

class _MyNotificationsState extends State<MyNotifications> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 4),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Icon(Icons.circle, size: 10),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 6),
                Text(widget.subtitle),
                SizedBox(height: 4),
                Text(
                  widget.time,
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
                ),
                SizedBox(height: 4),
              ],
            ),
          ],
        ),
        Divider(color: Colors.grey.shade300),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rapido_screen/profile_page/tickets_page.dart';

class MyHelpPage extends StatefulWidget {
  const MyHelpPage({super.key});

  @override
  State<MyHelpPage> createState() => _MyHelpPageState();
}

class _MyHelpPageState extends State<MyHelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        iconTheme: IconThemeData(size: 22),
        title: Text("Help", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyTicketsPage()),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.grey.shade300),
                  color: Colors.grey.shade100,
                ),
                child: Row(
                  children: [
                    Icon(Icons.local_activity_outlined, color: Colors.black54),
                    SizedBox(width: 6),
                    Text(
                      "Tickets",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Help topics", style: TextStyle(fontWeight: FontWeight.w600)),
            SizedBox(height: 12),
            Container(
              height: 530,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 18, right: 18),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          SizedBox(width: 10),
                          Text(
                            "Search Help Topics",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 60),
                  HelpTopics(
                    showDivider: true,
                    image: "assets/images/scooty.png",
                    title: 'Ride fare related Issues',
                  ),
                  HelpTopics(
                    showDivider: true,
                    image: "assets/images/helmet.png",
                    title: "Captain and Vehicle related\nIssues",
                  ),
                  HelpTopics(
                    showDivider: true,
                    image: "assets/images/help_payment_pass.png",
                    title: "Pass and Payment related\nIssues",
                  ),
                  HelpTopics(
                    showDivider: true,
                    image: "assets/images/help_parcel.png",
                    title: "Parcel related Issues",
                  ),
                  HelpTopics(
                    showDivider: false,
                    image: "assets/images/settings_phone.png",
                    title: "Other Topics",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HelpTopics extends StatefulWidget {
  const HelpTopics({
    super.key,
    required this.image,
    required this.title,
    required this.showDivider,
  });
  final String image;
  final String title;
  final bool showDivider;

  @override
  State<HelpTopics> createState() => _HelpTopicsState();
}

class _HelpTopicsState extends State<HelpTopics> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Image.asset(
                    widget.image,
                    width: 38,
                    height: 38,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(width: 20),
              Text(
                widget.title,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              ),
              Spacer(),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
        if (widget.showDivider) ...[
          SizedBox(height: 10),
          Divider(color: Colors.grey.shade300),
          SizedBox(height: 10),
        ],
      ],
    );
  }
}

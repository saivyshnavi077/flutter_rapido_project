import 'package:flutter/material.dart';
import 'package:rapido_screen/profile_page/tickets_page.dart';

class MyPowerFaqPage extends StatefulWidget {
  const MyPowerFaqPage({super.key});

  @override
  State<MyPowerFaqPage> createState() => _MyPowerFaqPageState();
}

class _MyPowerFaqPageState extends State<MyPowerFaqPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("FAQs", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyTicketsPage()),
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
                    Icon(Icons.local_activity_outlined),
                    SizedBox(width: 10),
                    Text(
                      "Tickets",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 16),
            MyProfileFaq(
              title: "What is Rapido Power Pass?",
              showDivider: true,
            ),
            MyProfileFaq(
              title: "How can I buy a Rapido Power Pass?",
              showDivider: true,
            ),
            MyProfileFaq(
              title: "How can I renew my Power Pass?",
              showDivider: true,
            ),
            MyProfileFaq(
              title: "How can I check the status of my Power Pass",
              showDivider: true,
            ),
            MyProfileFaq(
              title: "I am not able to purchase Rapido Power Pass",
              showDivider: true,
            ),
            MyProfileFaq(
              title:
                  "I have purchased a Power Pass but it's not reflecting in my account",
              showDivider: true,
            ),
            MyProfileFaq(
              title:
                  "I have a Power Pass, but i did not get expected pass benefit",
              showDivider: true,
            ),
            MyProfileFaq(
              title: "I am not able to view my Power Pass",
              showDivider: true,
            ),
            MyProfileFaq(
              title: "I want to cancel my Power Pass",
              showDivider: true,
            ),
            MyProfileFaq(
              title:
                  "Why was Auto Pass discontinued and what will happen to my\nactive Auto Pass Subscription",
              showDivider: true,
            ),
            MyProfileFaq(
              title:
                  "Why am I no longer receiving discounts on Auto rides through\nthe One Pass subscription",
              showDivider: false,
            ),
          ],
        ),
      ),
    );
  }
}

class MyProfileFaq extends StatefulWidget {
  const MyProfileFaq({
    super.key,
    required this.showDivider,
    required this.title,
  });
  final String title;
  final bool showDivider;
  @override
  State<MyProfileFaq> createState() => _MyProfileFaqState();
}

class _MyProfileFaqState extends State<MyProfileFaq> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18),
          child: Row(
            children: [
              Text(widget.title, style: TextStyle(fontWeight: FontWeight.w600)),
              Spacer(),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
        if (widget.showDivider) ...[Divider(color: Colors.grey.shade300)],
      ],
    );
  }
}

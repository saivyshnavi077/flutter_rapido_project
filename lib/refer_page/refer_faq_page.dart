import 'package:flutter/material.dart';
import 'package:rapido_screen/profile_page/tickets_page.dart';
import 'package:rapido_screen/refer_page/refer_faq_q1_page.dart';
import 'package:rapido_screen/refer_page/refer_faq_q2_page.dart';
import 'package:rapido_screen/refer_page/refer_faq_q3_page.dart';

class MyReferFaq extends StatefulWidget {
  const MyReferFaq({super.key});

  @override
  State<MyReferFaq> createState() => _MyReferFaqState();
}

class _MyReferFaqState extends State<MyReferFaq> {
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
      body: Column(
        children: [
          SizedBox(height: 16),
          MyReferQuestions(
            title: "How do I refer a person to Rapido?",
            showDivider: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyReferQuestion()),
              );
            },
          ),
          MyReferQuestions(
            title: "How do I view the status of my referrals?",
            showDivider: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyReferSecondQuestion(),
                ),
              );
            },
          ),
          MyReferQuestions(
            title: "I didn't get any referral credits",
            showDivider: false,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyReferThirdQuestion()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class MyReferQuestions extends StatefulWidget {
  const MyReferQuestions({
    super.key,
    required this.title,
    required this.showDivider,
    required this.onTap,
  });
  final String title;
  final bool showDivider;
  final VoidCallback onTap;
  @override
  State<MyReferQuestions> createState() => _MyReferQuestionsState();
}

class _MyReferQuestionsState extends State<MyReferQuestions> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 18),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Icon(Icons.chevron_right),
                  ],
                ),
              ],
            ),
          ),
          if (widget.showDivider) ...[Divider(color: Colors.grey.shade300)],
        ],
      ),
    );
  }
}

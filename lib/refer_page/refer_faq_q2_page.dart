import 'package:flutter/material.dart';

class MyReferSecondQuestion extends StatefulWidget {
  const MyReferSecondQuestion({super.key});

  @override
  State<MyReferSecondQuestion> createState() => _MyReferSecondQuestion();
}

class _MyReferSecondQuestion extends State<MyReferSecondQuestion> {
  bool isHelpful = false;
  bool isUnhelpful = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: Text("FAQs", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
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
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.fromLTRB(18, 12, 20, 28),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.help_outline, size: 16),
                      SizedBox(width: 10),
                      Text(
                        "How do I view the status of my referrals?",
                        style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "To check your referral credits, Navigate to the left Menu > "
                    "Invite Friends and click on the Total Rewards option at the bottom of the page."
                    " You can use these credits in you next ride."
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Text("Was this article helpful?"),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isHelpful = !isHelpful;
                      });
                    },
                    icon: Icon(
                      isHelpful
                          ? Icons.thumb_up_alt
                          : Icons.thumb_up_alt_outlined,
                    ),
                  ),
                  SizedBox(width: 36),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isUnhelpful = !isUnhelpful;
                      });
                    },
                    icon: Icon(
                      isUnhelpful
                          ? Icons.thumb_down_alt
                          : Icons.thumb_down_alt_outlined,
                    ),
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

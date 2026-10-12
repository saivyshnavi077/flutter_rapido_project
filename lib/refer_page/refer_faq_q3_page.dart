import 'package:flutter/material.dart';

class MyReferThirdQuestion extends StatefulWidget {
  const MyReferThirdQuestion({super.key});

  @override
  State<MyReferThirdQuestion> createState() => _MyReferThirdQuestion();
}

class _MyReferThirdQuestion extends State<MyReferThirdQuestion> {
  bool isHelpful = false;
  bool isUnhelpful = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: Text("Help", style: TextStyle(fontWeight: FontWeight.bold)),
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
                        "I didn't get any referral credits?",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "You can refer your friends to Rapido and get credits for the same. "
                    "The amount would be credited to your Rapido Wallet within 48hrs of your "
                    "referee, satisfying the T&Cs of the referral. If you face an issue, please mention below:",
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.help_outline, size: 16),
                      SizedBox(width: 10),
                      Text(
                        "Still facing issues?",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Our customer support is here to help you",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.support_agent_outlined),
                            SizedBox(width: 6),
                            Text("Contact Support"),
                          ],
                        ),
                      ),
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

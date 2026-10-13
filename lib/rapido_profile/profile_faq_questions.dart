import 'package:flutter/material.dart';
import 'package:rapido_screen/profile_page/tickets_page.dart';

class MyProfileQuestionsPage extends StatefulWidget {
  final String category;

  const MyProfileQuestionsPage({super.key, required this.category});

  @override
  State<MyProfileQuestionsPage> createState() => _MyProfileQuestionsPageState();
}

class _MyProfileQuestionsPageState extends State<MyProfileQuestionsPage> {
  final Map<String, List<String>> categoryQuestions = {
    "Account & App": [
      "How do I deactivate my account?",
      "I am not able to find a captain for my ride",
    ],
    "Referrals": ["I didn't get any referral credits"],

    "Payment & Wallets": ["Payment & Wallets", "Rapido Coins"],

    "Power Pass": [
      "I want to cancel my Power Pass",
      "I am not able to purchase Rapido Power Pass",
      "I have purchased a Power Pass but it's not reflecting in my account",
      "I have a Power Pass, but i did not get expected pass benefit",
      "I am not able to view my Power Pass",
    ],
  };

  @override
  Widget build(BuildContext context) {
    final questions = categoryQuestions[widget.category] ?? [];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "FAQs",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyTicketsPage()),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(36),
                ),
                child: const Row(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                widget.category,
                style: const TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(height: 16),

            Expanded(
              child: ListView.builder(
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 8,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  questions[index],
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Icon(Icons.chevron_right),
                            ],
                          ),
                        ),
                      ),
                      if (index != questions.length - 1)
                        Divider(color: Colors.grey.shade300),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

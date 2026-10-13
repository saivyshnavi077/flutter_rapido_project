import 'package:flutter/material.dart';
import 'package:rapido_screen/profile_page/tickets_page.dart';
import 'package:rapido_screen/rapido_profile/profile_faq_questions.dart';

class MyProfileFaqPage extends StatefulWidget {
  const MyProfileFaqPage({super.key});

  @override
  State<MyProfileFaqPage> createState() => _MyProfileFaqPageState();
}

class _MyProfileFaqPageState extends State<MyProfileFaqPage> {
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
            SizedBox(height: 14),
            MyProfileFaq(
              title: "Account & App",
              showDivider: true,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MyProfileQuestionsPage(category: "Account & App"),
                  ),
                );
              },
            ),
            MyProfileFaq(
              title: "Referrals",
              showDivider: true,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MyProfileQuestionsPage(category: "Referrals"),
                  ),
                );
              },
            ),
            MyProfileFaq(
              title: "Payment & Wallets",
              showDivider: true,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MyProfileQuestionsPage(category: "Payment & Wallets"),
                  ),
                );
              },
            ),
            MyProfileFaq(
              title: "Power Pass",
              showDivider: false,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MyProfileQuestionsPage(category: "Power Pass"),
                  ),
                );
              },
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
    required this.onTap,
  });
  final String title;
  final bool showDivider;
  final VoidCallback onTap;
  @override
  State<MyProfileFaq> createState() => _MyProfileFaqState();
}

class _MyProfileFaqState extends State<MyProfileFaq> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18),
            child: Row(
              children: [
                Text(
                  widget.title,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          if (widget.showDivider) ...[Divider(color: Colors.grey.shade300)],
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:rapido_screen/profile_page/tickets_page.dart';

// class MyAccountFaqPage extends StatefulWidget {
//   const MyAccountFaqPage({super.key});

//   @override
//   State<MyAccountFaqPage> createState() => _MyAccountFaqPageState();
// }

// class _MyAccountFaqPageState extends State<MyAccountFaqPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Text("FAQs", style: TextStyle(fontWeight: FontWeight.bold)),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 10.0),
//             child: InkWell(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => MyTicketsPage()),
//                 );
//               },
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.grey.shade300),
//                   borderRadius: BorderRadius.circular(36),
//                 ),
//                 child: Row(
//                   children: [
//                     Icon(Icons.local_activity_outlined),
//                     SizedBox(width: 10),
//                     Text(
//                       "Tickets",
//                       style: TextStyle(fontWeight: FontWeight.w600),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 12.0),
//               child: Text(
//                 "Account & App",
//                 style: TextStyle(fontWeight: FontWeight.w800,),
//               ),
//             ),
//             SizedBox(height: 16,),
//             InkWell(
//               onTap: (){

//               },
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 14,vertical: 8),
//                 child: Row(
//                   children: [
//                     Text(
//                       "How do I deactivate my account?",
//                       style: TextStyle(fontWeight: FontWeight.w600),
//                     ),
//                     Spacer(),
//                     Icon(Icons.chevron_right),
//                   ],
//                 ),
//               ),
//             ),
//             Divider(color: Colors.grey.shade300),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 14,vertical: 8),
//               child: Row(
//                 children: [
//                   Text(
//                     "I am not able to find a captain for my ride",
//                     style: TextStyle(fontWeight: FontWeight.w600),
//                   ),
//                   Spacer(),
//                   Icon(Icons.chevron_right),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



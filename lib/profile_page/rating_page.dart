import 'package:flutter/material.dart';

class MyRatingPage extends StatefulWidget {
  const MyRatingPage({super.key});

  @override
  State<MyRatingPage> createState() => _MyRatingPageState();
}

class _MyRatingPageState extends State<MyRatingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        title: Text("My Rating", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 220,
              width: double.infinity,
              child: Image.asset(
                "assets/images/rating.png",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "How is your rating calculated?",
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Rating is calculated as an average of all your past ratings and is measured out of 5 stars. Ratings are 100% anonymous, so either you or your captain will never see rating for an individual ride.",
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Understanding Ratings",
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "To foster mutual respect rapido captains and customers can rate each other on a scale of 1-5. Read on to understand how you can be a 5 star customer.",
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  SizedBox(height: 20),
                  RatingOptions(
                    subtitle:
                        "Knowing a little more about the things that affect a captain's happiness can help you be a 5-star rider",
                    image: "assets/images/chat_rating.png",
                    title: "Know your Captain",
                  ),
                  RatingOptions(
                    title: "Timely",
                    subtitle:
                        "Check your pick up address and make sure that it is accurate. Reach the pickup spot on time. This helps the captain get you to your destination on time.",
                    image: "assets/images/time_rating.png",
                  ),
                  RatingOptions(
                    title: "Safety",
                    subtitle:
                        "Sit back and relax. Every captain and customer should follow traffic rules and ensure a safe journey at all times",
                    image: "assets/images/safety_rating.png",
                  ),
                  RatingOptions(
                    title: "Courtesy",
                    subtitle:
                        'A smile or a "Hello" go a long way! Treat your captain just how you would like to be treated',
                    image: "assets/images/courtesy_rating.png",
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

class RatingOptions extends StatefulWidget {
  const RatingOptions({
    super.key,
    required this.image,
    required this.subtitle,
    required this.title,
  });
  final String image;
  final String title;
  final String subtitle;

  @override
  State<RatingOptions> createState() => _RatingOptionsState();
}

class _RatingOptionsState extends State<RatingOptions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.shade100,
              ),
              clipBehavior: Clip.hardEdge,
              child: Image.asset(
                widget.image,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            Text(
              widget.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
        SizedBox(height: 16),
        Text(widget.subtitle, style: TextStyle(color: Colors.grey.shade600)),
        SizedBox(height: 20),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rapido_screen/safety_page/more_safety_rules.dart';

class MySafetyPage extends StatefulWidget {
  const MySafetyPage({super.key});

  @override
  State<MySafetyPage> createState() => _MySafetyPageState();
}

class _MySafetyPageState extends State<MySafetyPage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollProgress = 0.0;
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.hasClients &&
          _scrollController.position.maxScrollExtent > 0) {
        setState(() {
          _scrollProgress =
              _scrollController.offset /
              _scrollController.position.maxScrollExtent;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: Text(
          "Safety toolkit",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "At Rapido, your safety comes first. Here are some measures and provisions to ensure your safety.",
            ),
            SizedBox(height: 8),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyAllSafetiesPage()),
                );
              },
              child: Text(
                "Know more",
                style: TextStyle(color: Colors.blue.shade500),
              ),
            ),
            SingleChildScrollView(
              controller: _scrollController,
              padding: EdgeInsets.only(left: 16, top: 12, right: 2),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SafetyToolkit(
                    image: "assets/images/safety_tool.png",
                    title: "Proactive safety checks",
                  ),
                  SizedBox(width: 16),
                  SafetyToolkit(
                    image: "assets/images/live_location.png",
                    title: "Share live location",
                  ),
                  SizedBox(width: 16),
                  SafetyToolkit(
                    image: "assets/images/privacy_contact.png",
                    title: "Add trusted contacts",
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Container(
                width: 38,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: _scrollProgress * (38 - 18),
                      child: Container(
                        width: 18,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 26),
            Text(
              "Settings",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: (){},
              child: Container(
                width: 410,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "New trusted contacts",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          "share ride trip details with your loved ones\nin a single tap",
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                        Spacer(),
                        Icon(Icons.chevron_right_outlined),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SafetyToolkit extends StatefulWidget {
  const SafetyToolkit({super.key, required this.image, required this.title});
  final String image;
  final String title;
  @override
  State<SafetyToolkit> createState() => _SafetyToolkitState();
}

class _SafetyToolkitState extends State<SafetyToolkit> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadiusGeometry.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                spreadRadius: 2,
                blurRadius: 1,
              ),
            ],
          ),
          child: ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadiusGeometry.circular(12),
            child: Image.asset(
              widget.image,
              width: 220,
              height: 240,
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          widget.title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rapido_screen/power_pass/powerpass_faq_page.dart';

class MyPowerPassPage extends StatefulWidget {
  const MyPowerPassPage({super.key});

  @override
  State<MyPowerPassPage> createState() => _MyPowerPassPageState();
}

class _MyPowerPassPageState extends State<MyPowerPassPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Power Pass",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyPowerFaqPage()),
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
                    Icon(Icons.help_outline, size: 20),
                    SizedBox(width: 10),
                    Text("Help", style: TextStyle(fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.white,
            padding: EdgeInsets.only(left: 48, top: 60),
            child: Text(
              "Save upto 60% on\n"
              "bike rides with\n"
              "Bike Pass!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          Positioned(
            right: -110,
            top: 10,
            child: Transform.rotate(
              angle: -0.6,
              child: Container(
                width: 160,
                height: 120,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(-5, -0.5),
                    ),
                  ],
                  color: Colors.indigo.shade900,
                  border: Border.all(color: Colors.white, width: 4),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 8),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.pedal_bike,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.70,
            minChildSize: 0.45,
            maxChildSize: 0.95,
            snap: true,
            snapSizes: [0.45, 0.70, 0.95],
            builder: (BuildContext context, scrollController) {
              return Container(
                decoration: BoxDecoration(color: Colors.grey.shade100),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        controller: scrollController,
                        padding: EdgeInsets.zero,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/black_bike.png",
                                width: 50,
                                height: 50,
                                fit: BoxFit.contain,
                              ),
                              Text(
                                "Bike",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Divider(color: Colors.black, thickness: 2.5),
                          SizedBox(height: 30),
                          Padding(
                            padding: EdgeInsetsGeometry.only(left: 50),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Image.asset(
                                "assets/images/yellow_bike.png",
                                width: 120,
                                height: 60,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 35),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: 10,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200,
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                      ),
                                      FractionallySizedBox(
                                        widthFactor: 0.25,
                                        child: Container(
                                          height: 10,
                                          decoration: BoxDecoration(
                                            color: Colors.amber,
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 80,
                                        child: Container(
                                          width: 10,
                                          height: 10,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        right: 80,
                                        child: Container(
                                          width: 10,
                                          height: 10,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 80),
                                      child: Text(
                                        "0",
                                        style: TextStyle(
                                          // fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 80),
                                      child: Text(
                                        "1",
                                        style: TextStyle(
                                          // fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 28),
                                Text(
                                  "Ride to unlock",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  "Complete 1 bike ride to unlock your power pass",
                                  style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 15, 20, 20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          padding: EdgeInsets.symmetric(vertical: 20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Continue to Book Ride",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(width: 22),
                            Icon(Icons.arrow_forward, color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

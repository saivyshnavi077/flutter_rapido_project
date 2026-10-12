import 'package:flutter/material.dart';

class MyParcelPage extends StatefulWidget {
  const MyParcelPage({super.key});

  @override
  State<MyParcelPage> createState() => _MyParcelPageState();
}

class _MyParcelPageState extends State<MyParcelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Colors.grey.shade100,
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned.fill(
                      child: Container(color: Colors.grey.shade100),
                    ),
                    Positioned(
                      top: -250,
                      left: -10,
                      right: -10,
                      child: Container(
                        height: 500,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue.shade100,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 14,
                      left: 20,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back, size: 30),
                      ),
                    ),
                    Positioned(
                      top: 55,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "Doorstep pickup and delivery",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "PARCEL",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 110,
                      left: 0,
                      right: 0,
                      child: SizedBox(
                        width: 300,
                        height: 100,
                        child: Image.asset(
                          "assets/images/parcel_item.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 220,
                      left: 30,
                      right: 30,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(16, 14, 16, 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade100,
                              blurRadius: 0.2,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.green.shade800,
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Pickup from current location",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 6),
                                      Text(
                                        "3-9-475, Reddy Colony, Hanamkonda, Telangana 506001",
                                        style: TextStyle(
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 26),
                                Icon(Icons.edit_outlined),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40, right: 10),
                              child: Column(
                                children: [
                                  Divider(),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Vyshnavi(7382412805)",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 398,
                      left: 30,
                      right: 30,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 8, 8, 24),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.stop_circle,
                                  size: 18,
                                  color: Colors.red,
                                ),
                                SizedBox(width: 10),
                                Text("Drop to"),
                              ],
                            ),
                            SizedBox(height: 18),
                            Container(
                              padding: EdgeInsets.only(
                                top: 8,
                                bottom: 8,
                                left: 14,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Colors.white,
                                border: Border.all(color: Colors.blue.shade800),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.search),
                                  SizedBox(width: 10),
                                  Text(
                                    "Search drop address",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                     Positioned(
                      top: 374,
                      right: 55,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade300),
                          boxShadow: [BoxShadow(color: Colors.grey.shade300)],
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 6,
                            horizontal: 14,
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.swap_vert, size: 18),
                              Text(
                                "Switch",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 15),
                child: Column(
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Read about ',
                        children: [
                          TextSpan(
                            text: 'prohibited items',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'By continuing, you agree to our ',
                        children: [
                          TextSpan(
                            text: 'T&Cs',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

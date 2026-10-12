import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class TravelsPage extends StatefulWidget {
  const TravelsPage({super.key});

  @override
  State<TravelsPage> createState() => _TravelsPageState();
}

class _TravelsPageState extends State<TravelsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 700,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/images/mountain.png",
                      fit: BoxFit.cover,
                      alignment: AlignmentGeometry.topCenter,
                    ),
                  ),
                  Positioned(
                    top: 45,
                    left: 15,
                    right: 15,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Summer",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            height: 0.9,
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(24, 0),
                          child: Text(
                            "Travel Deals",
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.white,
                              height: 0.9,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        DottedBorder(
                          options: RectDottedBorderOptions(
                            color: Colors.white70,
                            strokeWidth: 1.0,
                            dashPattern: [5, 3],
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(6, 2, 6, 2),
                            decoration: BoxDecoration(color: Colors.white38),
                            child: Text(
                              "RAPIDOTRAVEL",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Use code at checkout",
                          style: TextStyle(
                            color: Colors.grey.shade200,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 220,
                    left: 0,
                    right: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.only(
                        topLeft: Radius.circular(26),
                        topRight: Radius.circular(26),
                      ),
                      child: Container(
                        padding: EdgeInsets.only(left: 16, top: 28, right: 16),
                        height: 500,
                        decoration: BoxDecoration(color: Colors.white54),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: TravelDeals(
                                    image: "assets/images/airplane.png",
                                    offer: "Up to \u{20B9}4000 off",
                                    title: "Flights",
                                  ),
                                ),
                                SizedBox(width: 14),
                                Expanded(
                                  child: TravelDeals(
                                    image: "assets/images/train.png",
                                    title: "Trains",
                                    offer: "Zero Service Fee",
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: TravelDeals(
                                    image: "assets/images/buses.png",
                                    offer: "Up to 25% off",
                                    title: "Bus",
                                  ),
                                ),
                                SizedBox(width: 14),
                                Expanded(
                                  child: TravelDeals(
                                    image: "assets/images/hotel.png",
                                    offer: "Up to 55% off",
                                    title: "Hotels",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    image: DecorationImage(
                      image: AssetImage("assets/images/banners.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Every Journey Begins Here",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.red.shade900,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Book Travel Experiences on",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 6),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: ClipRRect(
                                clipBehavior: Clip.antiAlias,
                                borderRadius: BorderRadiusGeometry.circular(90),
                                child: Image.asset(
                                  "assets/images/rapido.png",
                                  height: 20,
                                  width: 50,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Icon(Icons.chevron_right),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 18),
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/poweredby.png.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Divider(thickness: 1, color: Colors.grey),
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Powered By",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              child: Divider(thickness: 1, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(0, -20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "goibibo",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            SizedBox(width: 26),
                            Image.asset(
                              "assets/images/redbus.png",
                              width: 30,
                              height: 20,
                              fit: BoxFit.contain,
                              color: Colors.grey.shade500,
                            ),
                            SizedBox(width: 26),
                            Image.asset(
                              "assets/images/confirmtkt.png",
                              width: 80,
                              height: 80,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),
        
                      // SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TravelDeals extends StatefulWidget {
  const TravelDeals({
    super.key,
    required this.image,
    required this.offer,
    required this.title,
  });
  final String image;
  final String title;
  final String offer;
  @override
  State<TravelDeals> createState() => _TravelDealsState();
}

class _TravelDealsState extends State<TravelDeals> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      // width: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade100,
            blurRadius: 0.8,
            // spreadRadius: 0.1,
          ),
        ],
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(widget.image, fit: BoxFit.cover, height: 250),
          ),
          Positioned(
            left: 14,
            right: 15,
            bottom: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  widget.offer,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 4),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Book Now",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

   // Container(
                        //   // padding: EdgeInsets.all(2),
                        //   // width: 50,
                        //   height: 10,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(50),
                        //   ),
                        //   clipBehavior: Clip.antiAlias,
                        //   child: Image.asset(
                        //     "assets/images/rapido.png",
                        //     fit: BoxFit.contain,
                        //   ),
                        // ),
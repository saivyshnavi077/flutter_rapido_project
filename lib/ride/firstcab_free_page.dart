import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class FirstCabFree extends StatefulWidget {
  const FirstCabFree({super.key});

  @override
  State<FirstCabFree> createState() => _FirstCabFreeState();
}

class _FirstCabFreeState extends State<FirstCabFree> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.teal.shade300,
            blurRadius: 1,
            spreadRadius: 0.5,
            // offset: Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: () {},
          child: Container(
            // width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.teal,
              border: Border.all(color: Colors.teal.shade300, width: 1.0),
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Transform.scale(
                    scale: 1.8,
                    child: Image.asset(
                      "assets/images/globe.png",
                      fit: BoxFit.cover,
                      alignment: AlignmentGeometry.center,
                      color: Colors.black38,
                      colorBlendMode: BlendMode.srcOver,
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Stack(
                    alignment: AlignmentGeometry.topCenter,
                    children: [
                      Positioned(
                        top: 8,
                        child: Column(
                          children: [
                            Text(
                              "FIRST CAB RIDE FREE",
                              style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "offer has been detected",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: -225,
                        right: 0,
                        left: 0,
                        child: Container(
                          width: 310,
                          height: 310,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.teal.shade700,
                              width: 3,
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        bottom: 12,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 4,
                            horizontal: 14,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "Tap here to apply",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 12,
                        bottom: -1,
                        child: Row(
                          children: [
                            Icon(
                              Icons.two_wheeler,
                              color: Colors.teal.shade300,
                              size: 14,
                            ),
                            SizedBox(width: 2),
                            Icon(
                              Icons.local_taxi,
                              color: Colors.teal.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.train,
                              color: Colors.teal.shade300,
                              size: 14,
                            ),
                            Transform.translate(
                              offset: Offset(0, 6),
                              child: DottedLine(
                                dashColor: Colors.teal.shade300,
                                lineLength: 245,
                                lineThickness: 0.5,
                              ),
                            ),
                            Icon(
                              Icons.location_on,
                              size: 16,
                              color: Colors.teal.shade300,
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
      ),
    );
  }
}

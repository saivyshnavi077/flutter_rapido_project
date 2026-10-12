import 'package:flutter/material.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key, required this.image, required this.title});
  final String title;
  final String image;
  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Image.asset(widget.image, fit: BoxFit.contain,),
          ),
        ),
        SizedBox(height: 8),
        Text(
          widget.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class AllServicesPanel extends StatelessWidget {
  final VoidCallback onClose;
  const AllServicesPanel({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.44,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(32, 18, 32, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 50,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "All services",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 4,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.68,
                    children: [
                      ServicesPage(
                        image: 'assets/images/parcel.png',
                        title: 'Parcel\non Bike',
                      ),
                      ServicesPage(
                        image: "assets/images/auto.png",
                        title: "Auto",
                      ),
                      ServicesPage(
                        image: "assets/images/cab.png.png",
                        title: "Cab\nEconomy",
                      ),
                      ServicesPage(
                        image: "assets/images/bike.png",
                        title: "Bike",
                      ),
                      ServicesPage(
                        image: "assets/images/bike.png",
                        title: "Bike Lite",
                      ),
                      ServicesPage(
                        image: "assets/images/cab.png.png",
                        title: "Cab\nPremium",
                      ),
                      ServicesPage(
                        image: "assets/images/travel.png",
                        title: "Travel",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 12,
            top: -48,
            child: GestureDetector(
              onTap: onClose,
              child: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.close, size: 24, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

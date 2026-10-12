import 'package:flutter/material.dart';

class AllServicesPage extends StatefulWidget {
  const AllServicesPage({super.key});

  @override
  State<AllServicesPage> createState() => _AllServicesPageState();
}

class _AllServicesPageState extends State<AllServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "All Services",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 26),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 0,
                  childAspectRatio: 1.12,
                  children: [
                    MyAllServicesPage(
                      image: 'assets/images/parcel.png',
                      title: 'Parcel on Bike',
                    ),
                    MyAllServicesPage(
                      image: "assets/images/auto.png",
                      title: "Auto",
                    ),
                    MyAllServicesPage(
                      image: "assets/images/cab.png.png",
                      title: "Cab Economy",
                    ),
                    MyAllServicesPage(
                      image: "assets/images/bike.png",
                      title: "Bike",
                    ),
                    MyAllServicesPage(
                      image: "assets/images/cab.png.png",
                      title: "Cab Premium",
                    ),
                    MyAllServicesPage(
                      image: "assets/images/bike.png",
                      title: "Bike",
                    ),
                    MyAllServicesPage(
                      image: "assets/images/travel.png",
                      title: "Travel",
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

class MyAllServicesPage extends StatefulWidget {
  const MyAllServicesPage({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;
  @override
  State<MyAllServicesPage> createState() => _MyAllServicesPageState();
}

class _MyAllServicesPageState extends State<MyAllServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 58,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Image.asset(widget.image, fit: BoxFit.contain),
          ),
        ),
        SizedBox(height: 6),
        Text(
          widget.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

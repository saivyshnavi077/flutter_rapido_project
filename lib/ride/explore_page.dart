import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key, required this.image, required this.title});

  final String image;
  final String title;
  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            width: 70,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.shade200,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(widget.image, fit: BoxFit.contain),
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(height: 6),
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}

class AllExploreVehicles extends StatelessWidget {
  const AllExploreVehicles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ExplorePage(
          image: 'assets/images/parcel.png',
          title: 'Parcel on\nBike',
        ),
        SizedBox(width: 16),
        ExplorePage(
          image: 'assets/images/auto.png',
          title: 'Auto\n',
        ),
        SizedBox(width: 16),
        ExplorePage(
          image: 'assets/images/cab.png.png',
          title: "Cab\nEconomy",
        ),
        SizedBox(width: 16),
        ExplorePage(
          image: "assets/images/bike.png",
          title: "Bike\n",
        ),
      ],
    );
  }
}


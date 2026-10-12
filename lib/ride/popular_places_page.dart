import 'package:flutter/material.dart';

class PopularPlaces extends StatefulWidget {
  const PopularPlaces({super.key, required this.image, required this.title});

  final String title;
  final String image;
  @override
  State<PopularPlaces> createState() => _PopularPlacesState();
}

class _PopularPlacesState extends State<PopularPlaces> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      // width: 160,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.grey.shade500, blurRadius: 3)],
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    widget.title,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.amber,
                    ),
                    child: Icon(Icons.chevron_right, size: 18),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(12),
              child: Image.asset(
                widget.image,
                width: 190,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AllPopularPLaces extends StatelessWidget {
  const AllPopularPLaces({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: PopularPlaces(
            image: 'assets/images/bus_stand.png.jpg',
            title: 'Bus Stand',
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: PopularPlaces(
            image: 'assets/images/railway_station.png',
            title: 'Railway Station',
          ),
        ),
      ],
    );
  }
}


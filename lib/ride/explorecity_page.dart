import 'package:flutter/material.dart';

class AllExploreCityPlaces extends StatelessWidget {
  const AllExploreCityPlaces({
    super.key,
    required this._scrollController,
    required this._scrollProgress,
  });

  final ScrollController _scrollController;
  final double _scrollProgress;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Explore Your City - Use code: RIDE30",
          style: TextStyle(
            color: Colors.grey.shade700,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),

        SizedBox(height: 12),
        SingleChildScrollView(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ExploreCity(
                image: "assets/images/badrakali_temple.png",
                title: "Bhadrakali Temple",
              ),
              SizedBox(width: 12),
              ExploreCity(
                image: "assets/images/thousand_pillar_temple.png",
                title: "Thousand Pillar Temple",
              ),
              SizedBox(width: 12),
              ExploreCity(
                image: "assets/images/kakatiya_university.png",
                title: "Kakatiya University",
              ),
            ],
          ),
        ),
        SizedBox(height: 18),
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
      ],
    );
  }
}

class ExploreCity extends StatefulWidget {
  const ExploreCity({super.key, required this.image, required this.title});

  final String image;
  final String title;
  @override
  State<ExploreCity> createState() => _ExploreCityState();
}

class _ExploreCityState extends State<ExploreCity> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(22),
            child: Image.asset(
              widget.image,
              width: 160,
              height: 100,
              fit: BoxFit.cover,
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
      ),
    );
  }
}

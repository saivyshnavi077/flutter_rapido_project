import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class RecentPlaces extends StatefulWidget {
  const RecentPlaces({super.key, required this.location, required this.title});
  final String title;
  final String location;

  @override
  State<RecentPlaces> createState() => _RecentPlacesState();
}

class _RecentPlacesState extends State<RecentPlaces> {
  bool isVisibility = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.history, color: Colors.grey),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.location,
                      style: TextStyle(color: Colors.grey),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {
                  setState(() {
                    isVisibility = !isVisibility;
                  });
                },
                icon: Icon(
                  isVisibility ? Icons.favorite_outline : Icons.favorite,
                  color: isVisibility ?Colors.black : Colors.red,
                ),
              ),
            ],
          ),
          SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.only(left: 36.0),
            child: DottedLine(
              dashColor: Colors.grey.shade300,
              lineLength: double.infinity,
            ),
          ),
          SizedBox(height: 6),
        ],
      ),
    );
  }
}

class AllRecentPlaces extends StatelessWidget {
  const AllRecentPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RecentPlaces(
          title: "Railway Station",
          location: "32, opp Warangal, Girmajipet, Warangal, Telangana",
        ),
        RecentPlaces(
          title: "Collector Office",
          location:
              "Hyderabad - Warangal HighWay, Revenue Colony, Warangal, Telangana",
        ),
        RecentPlaces(
          title: "Naimnagar",
          location: "Hanamkonda, Telangana, India",
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class MyFavouritesPage extends StatefulWidget {
  const MyFavouritesPage({super.key});

  @override
  State<MyFavouritesPage> createState() => _MyFavouritesPageState();
}

class _MyFavouritesPageState extends State<MyFavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favourites",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 260,
                height: 190,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: Image.asset(
                        "assets/images/location.png",
                        width: 230,
                        height: 180,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Positioned(
                      top: 8,
                      right: 52,
                      child: Image.asset(
                        "assets/images/sadface.png",
                        width: 75,
                        height: 75,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                "Add locations that you frequently\nvisit for quick access",
                style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
              ),
              SizedBox(height: 14),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                ),
                onPressed: () {},
                child: Text(
                  "Add Favourites",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

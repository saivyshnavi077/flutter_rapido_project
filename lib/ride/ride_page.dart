import 'package:flutter/material.dart';
import 'package:rapido_screen/ride/explore_page.dart';
import 'package:rapido_screen/ride/explorecity_page.dart';
import 'package:rapido_screen/ride/firstcab_free_page.dart';
import 'package:rapido_screen/ride/popular_places_page.dart';
import 'package:rapido_screen/ride/recent_places_page.dart';
import 'package:rapido_screen/ride/all_services_page.dart';
import 'package:rapido_screen/ride/searchbar_page.dart';

class MyRapidoPage extends StatefulWidget {
  const MyRapidoPage({super.key});

  @override
  State<MyRapidoPage> createState() => _MyRidePageState();
}

class _MyRidePageState extends State<MyRapidoPage>
    with SingleTickerProviderStateMixin {
  // late AnimationController _controller;
  // late Animation<double> _rotation;
  final ScrollController _scrollController = ScrollController();
  double _scrollProgress = 0.0;

  bool _showServices = false;
  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.hasClients) {
        double maxScroll = _scrollController.position.maxScrollExtent;
        double currentScroll = _scrollController.position.pixels;
        setState(() {
          _scrollProgress = maxScroll > 0 ? (currentScroll / maxScroll) : 0.0;
        });
      }
    });
    //   _controller = AnimationController(
    //     vsync: this,
    //     duration: const Duration(seconds: 16),
    //   );

    //   _rotation = Tween<double>(begin: 0, end: 5).animate(_controller);
    //   _controller.forward();
  }

  @override
  void dispose() {
    // _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(top: 100),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      AllRecentPlaces(),
                      SizedBox(height: 12),
                      Text(
                        "Popular Places",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 16),
                      AllPopularPLaces(),
                      SizedBox(height: 36),
                      Row(
                        children: [
                          Text(
                            "Explore",
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _showServices = true;
                              });
                            },
                            child: Row(
                              children: [
                                Text(
                                  "View All",
                                  style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                Icon(
                                  Icons.chevron_right_outlined,
                                  size: 20,
                                  color: Colors.grey.shade700,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      AllExploreVehicles(),
                      SizedBox(height: 28),
                      FirstCabFree(),
                      SizedBox(height: 24),
                      AllExploreCityPlaces(
                        scrollController: _scrollController,
                        scrollProgress: _scrollProgress,
                      ),
                      SizedBox(height: 26),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          height: 160,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset(
                            "assets/images/free_rapido.png",
                            // height: double.infinity,
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      // height: 320,
                      child: Image.asset(
                        "assets/images/travel_dim.png",
                        fit: BoxFit.cover,
                        width: double.infinity,
                        color: Colors.grey.shade300,
                        colorBlendMode: BlendMode.hardLight,
                      ),
                    ),
                    Positioned(
                      top: 130,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "#goRapido",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade500,
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/india_flag.png",
                                  width: 15,
                                  height: 15,
                                ),
                                SizedBox(width: 6),
                                Text(
                                  "Made For India",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2),
                            Row(
                              children: [
                                Icon(
                                  Icons.favorite_outlined,
                                  size: 15,
                                  color: Colors.red,
                                ),
                                SizedBox(width: 6),
                                Text(
                                  "Crafted in Bengaluru",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SearchBarPage(),
          if (_showServices)
            Positioned(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _showServices = false;
                  });
                },
                child: Container(color: Colors.black54),
              ),
            ),
          if (_showServices)
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: AllServicesPanel(
                onClose: () {
                  setState(() {
                    _showServices = false;
                    Navigator.pop(context);
                  });
                },
              ),
            ),

          //  SearchBarPage(),
        ],
      ),
    );

    // body: Center(
    //   child: SizedBox(
    //     width: 250,
    //     height: 120,
    //     child: Stack(
    //       children: [
    //         // Your actual container
    //         Container(
    //           width: 250,
    //           height: 120,
    //           decoration: BoxDecoration(
    //             color: Colors.blue,
    //             borderRadius: BorderRadius.circular(20),
    //           ),
    //           child: const Center(
    //             child: Text(
    //               'My Container',
    //               style: TextStyle(color: Colors.white, fontSize: 20),
    //             ),
    //           ),
    //         ),

    //         // Moving border
    //         Positioned.fill(
    //           child: CustomPaint(painter: MovingBorderPainter(_rotation)),
    //         ),
    //       ],
    //     ),
    //   ),
    // ),
  }
}

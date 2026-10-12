import 'package:flutter/material.dart';
import 'package:rapido_screen/profile_page/claims_page.dart';
import 'package:rapido_screen/profile_page/help_page.dart';
import 'package:rapido_screen/profile_page/myrides_page.dart';
import 'package:rapido_screen/profile_page/notifications_page.dart';
import 'package:rapido_screen/profile_page/parcel_page.dart';
import 'package:rapido_screen/payment/payment_help.dart';
import 'package:rapido_screen/power_pass/powerpass_page.dart';
import 'package:rapido_screen/profile_page/rapido_coins_page.dart';
import 'package:rapido_screen/rapido_profile/rapido_profile_page.dart';
import 'package:rapido_screen/profile_page/rating_page.dart';
import 'package:rapido_screen/refer_page/refer_page.dart';
import 'package:rapido_screen/profile_page/rewards_page.dart';
import 'package:rapido_screen/safety_page/safety_page.dart';
import 'package:rapido_screen/profile_page/settings_page.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  String firstName = 'Vyshnavi';
  String lastName = '';

  String get name =>
      [firstName, lastName].where((value) => value.trim().isNotEmpty).join(' ');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Profile",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  height: 140,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyRapidoProfilePage(
                                  initialFirstName: firstName,
                                  initialLastName: lastName,
                                  onNameChanged: (first, last) {
                                    setState(() {
                                      firstName = first;
                                      lastName = last;
                                    });
                                  },
                                ),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade200,
                                ),
                                child: Icon(
                                  Icons.person,
                                  color: Colors.blueGrey.shade500,
                                ),
                              ),
                              SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "7382412805",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Icon(Icons.chevron_right_outlined),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Divider(),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyRatingPage(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Icon(Icons.star_rounded, color: Colors.amber),
                              SizedBox(width: 24),
                              Text(
                                "5.00 My Rating",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Icon(Icons.chevron_right_outlined),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                ProfileHelpPage(
                  icon: Icons.help_outline,
                  title: Text(
                    "Help",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHelpPage()),
                    );
                  },
                ),
                ProfileHelpPage(
                  icon: Icons.shopping_bag_outlined,
                  title: Text(
                    "Parcel - Send Items",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyParcelPage()),
                    );
                  },
                ),
                ProfileHelpPage(
                  icon: Icons.money,
                  title: Text(
                    "Payment",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyPaymentPage()),
                    );
                  },
                ),
                ProfileHelpPage(
                  icon: Icons.restore,
                  title: Text(
                    "My Rides",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyRidesPage()),
                    );
                  },
                ),
                ProfileHelpPage(
                  icon: Icons.verified_user_outlined,
                  title: Text(
                    "Safety",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MySafetyPage()),
                    );
                  },
                ),
                ProfileHelpPage(
                  icon: Icons.card_giftcard,
                  title: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Refer and Earn\n",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: "Get \u{20B9}50",
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyReferFriendPage(),
                      ),
                    );
                  },
                ),
                ProfileHelpPage(
                  icon: Icons.workspace_premium_outlined,
                  title: Text(
                    "My Rewards",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyRewardsPage()),
                    );
                  },
                ),
                ProfileHelpPage(
                  icon: Icons.local_activity_outlined,
                  title: Text(
                    "Power Pass",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyPowerPassPage(),
                      ),
                    );
                  },
                ),
                ProfileHelpPage(
                  icon: Icons.control_point_duplicate_sharp,
                  title: Text(
                    "Rapido Coins",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyRapidoCoinsPage(),
                      ),
                    );
                  },
                ),
                ProfileHelpPage(
                  icon: Icons.notifications_none_rounded,
                  title: Text(
                    "Notifications",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyNotificationPage(),
                      ),
                    );
                  },
                ),
                ProfileHelpPage(
                  icon: Icons.shield_outlined,
                  title: Text(
                    "Claims",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyClaimsPage()),
                    );
                  },
                ),
                ProfileHelpPage(
                  icon: Icons.settings_rounded,
                  title: Text(
                    "Settings",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MySettingsPage()),
                    );
                  },
                ),
                SizedBox(height: 30),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Earn money with Rapido",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text("Become a Captain!"),
                          ],
                        ),
                      ),
                      Spacer(),
                      ClipRRect(
                        borderRadius: BorderRadiusGeometry.only(
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        child: Image.asset(
                          "assets/images/rapido_bike.png",
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileHelpPage extends StatefulWidget {
  const ProfileHelpPage({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });
  final IconData icon;
  final Widget title;
  final VoidCallback onTap;
  @override
  State<ProfileHelpPage> createState() => _ProfileHelpPageState();
}

class _ProfileHelpPageState extends State<ProfileHelpPage> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 8),
            child: Row(
              children: [
                Icon(widget.icon, color: Colors.grey.shade500),
                SizedBox(width: 20),
                widget.title,
                Spacer(),
                Icon(Icons.chevron_right_outlined),
              ],
            ),
          ),
          Divider(color: Colors.grey.shade200),
        ],
      ),
    );
  }
}

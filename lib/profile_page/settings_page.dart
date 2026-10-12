import 'package:flutter/material.dart';
import 'package:rapido_screen/profile_page/about_page.dart';
import 'package:rapido_screen/profile_page/favourites_settings_page.dart';
import 'package:rapido_screen/profile_page/help_page.dart';
import 'package:rapido_screen/rapido_profile/rapido_profile_page.dart';

class MySettingsPage extends StatefulWidget {
  const MySettingsPage({super.key});

  @override
  State<MySettingsPage> createState() => _MySettingsPageState();
}

class _MySettingsPageState extends State<MySettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: Text("Settings", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHelpPage()),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(36),
                ),
                child: Row(
                  children: [
                    Icon(Icons.help_outline),
                    SizedBox(width: 10),
                    Text("Help", style: TextStyle(fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "GENERAL",
              style: TextStyle(
                color: Colors.indigo.shade900,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Column(
                children: [
                  MyGeneralPage(
                    showDivider: true,
                    icon: Icons.person_outline_sharp,
                    title: "Profile",
                    subtitle: "+91 7382412805",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyRapidoProfilePage(),
                        ),
                      );
                    },
                  ),
                  MyGeneralPage(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyFavouritesPage(),
                        ),
                      );
                    },
                    showDivider: true,
                    icon: Icons.favorite_border_sharp,
                    title: "Favourites",
                    subtitle: "Manage favourite locations",
                  ),
                  MyGeneralPage(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (context) {
                          return Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.46,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(28),
                                    topRight: Radius.circular(28),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Container(
                                        margin: EdgeInsets.only(top: 20),
                                        width: 56,
                                        height: 4,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(
                                        30,
                                        20,
                                        0,
                                        0,
                                      ),
                                      child: Text(
                                        "Your favourites",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: SizedBox(
                                        height: 150,
                                        width: 150,
                                        child: Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            Positioned(
                                              left: 20,
                                              bottom: 0,
                                              child: Image.asset(
                                                "assets/images/location.png",
                                                width: 100,
                                                height: 130,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Positioned(
                                              top: 30,
                                              right: 28,
                                              child: Image.asset(
                                                "assets/images/sadface.png",
                                                width: 48,
                                                height: 48,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Center(
                                      child: Text(
                                        "You don't have any favourites yet!",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Center(
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "Save a favourite first to add it to your\nhome screen for fastest rides!",
                                        style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: -50,
                                left: 20,
                                child: GestureDetector(
                                  onTap: () => Navigator.pop(context),
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(Icons.arrow_back, size: 20),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    showDivider: false,
                    icon: Icons.app_shortcut_outlined,
                    title: "App shortcuts",
                    subtitle: "Create shortcuts on home\nlauncher",
                  ),
                ],
              ),
            ),
            SizedBox(height: 26),
            Text(
              "OTHERS",
              style: TextStyle(
                color: Colors.indigo.shade900,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Column(
                children: [
                  MyOthersPage(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyAboutPage()),
                      );
                    },
                    icon: Icons.info_outline,
                    title: "About",
                    subtitle: "8.127.0",
                    showDivider: true,
                  ),
                  MyOthersPage(
                    onTap: () {},
                    icon: Icons.bug_report_outlined,
                    title: "Subscribe to Beta",
                    subtitle: "Get early access to latest features",
                    showDivider: true,
                  ),
                  MyOthersPage(
                    onTap: () {},
                    icon: Icons.logout_outlined,
                    title: "Logout",
                    showDivider: true,
                  ),
                  MyOthersPage(
                    onTap: () {},
                    icon: Icons.delete_outline,
                    title: "Delete Account",
                    iconColor: Colors.red,
                    showDivider: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyOthersPage extends StatefulWidget {
  const MyOthersPage({
    super.key,
    required this.icon,
    required this.showDivider,
    required this.title,
    this.subtitle,
    this.iconColor,
    required this.onTap,
  });
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback onTap;
  final bool showDivider;
  final Color? iconColor;
  @override
  State<MyOthersPage> createState() => _MyOthersPageState();
}

class _MyOthersPageState extends State<MyOthersPage> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
              children: [
                Icon(widget.icon, color: widget.iconColor),
                SizedBox(width: 18),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      if (widget.subtitle != null) ...[
                        Text(
                          widget.subtitle!,
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ],
                    ],
                  ),
                ),
                Spacer(),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          if (widget.showDivider) ...[Divider(color: Colors.grey.shade200)],
        ],
      ),
    );
  }
}

class MyGeneralPage extends StatefulWidget {
  const MyGeneralPage({
    super.key,
    required this.icon,
    required this.subtitle,
    required this.title,
    required this.showDivider,
    required this.onTap,
  });
  final IconData icon;
  final String title;
  final String subtitle;
  final bool showDivider;
  final VoidCallback onTap;
  @override
  State<MyGeneralPage> createState() => _MyGeneralPageState();
}

class _MyGeneralPageState extends State<MyGeneralPage> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
            child: Row(
              children: [
                Icon(widget.icon),
                SizedBox(width: 18),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      widget.subtitle,
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          if (widget.showDivider) ...[Divider(color: Colors.grey.shade200)],
        ],
      ),
    );
  }
}

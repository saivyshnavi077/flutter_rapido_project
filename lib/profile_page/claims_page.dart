import 'package:flutter/material.dart';
import 'package:rapido_screen/profile_page/help_page.dart';

class MyClaimsPage extends StatefulWidget {
  const MyClaimsPage({super.key});

  @override
  State<MyClaimsPage> createState() => _MyClaimsPageState();
}

class _MyClaimsPageState extends State<MyClaimsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          title: Text("Claims", style: TextStyle(fontWeight: FontWeight.bold)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHelpPage()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(36),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.help_outline),
                      SizedBox(width: 10),
                      Text(
                        "Help",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              indicatorWeight: 2,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  child: Row(
                    children: [
                      Icon(
                        Icons.pedal_bike_outlined,
                        color: Colors.black87,
                        size: 18,
                      ),
                      SizedBox(width: 8),
                      Text("Bike"),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/auto_claim.png",
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(width: 8),
                      Text("Auto"),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/car_claim.png",
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(width: 8),
                      Text("Cab"),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 16),
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 12, 12, 12),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.red.shade800),
                              color: Colors.red.shade50,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.info,
                                  color: Colors.red.shade700,
                                  size: 18,
                                ),
                                SizedBox(width: 6),
                                Text(
                                  "Update missing profile details to claim\nyour insurance",
                                  style: TextStyle(color: Colors.red.shade700),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            "POLICY COVERAGE",
                            style: TextStyle(
                              color: Colors.blue.shade800,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 14),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 14,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                MyPolicyCoverage(
                                  icon: Icons.personal_injury_outlined,
                                  title: "Personal Accident/Accidental Death",
                                  subtitle: "Up to \u20B95,00,000",
                                ),
                                SizedBox(height: 12),
                                MyPolicyCoverage(
                                  icon: Icons.medical_information_outlined,
                                  title: "Medical Expense for Hospitalization",
                                  subtitle: "Up to \u20B91,00,000",
                                ),
                                SizedBox(height: 12),
                                MyPolicyCoverage(
                                  icon: Icons.paid_outlined,
                                  title: "OPD Treatment",
                                  subtitle: "Up to \u20B93000",
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 22),
                          Text(
                            "LEGAL",
                            style: TextStyle(
                              color: Colors.blue.shade800,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            padding: EdgeInsets.fromLTRB(16, 30, 24, 30),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Claim Procedure",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "View",
                                      style: TextStyle(
                                        color: Colors.blue.shade800,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 34),
                                Row(
                                  children: [
                                    Text(
                                      "Terms and Conditions",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "View",
                                      style: TextStyle(
                                        color: Colors.blue.shade800,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 14),
                          Text(
                            "Please provide your correct email-id, date of birth and phone number to avoid cancellations of your insurance claim.",
                            style: TextStyle(color: Colors.grey.shade600),
                          ),
                          SizedBox(height: 14),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.circle,
                                size: 10,
                                color: Colors.blue.shade900,
                              ),
                              SizedBox(width: 4),
                              Text(
                                "Powered by Acko",
                                style: TextStyle(color: Colors.blue.shade900),
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amber,
                              ),
                              onPressed: () {},
                              child: Text(
                                "Claim Insurance",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Expanded(
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/images/claim_help.png",
                                width: 100,
                                height: 100,
                                fit: BoxFit.contain,
                              ),
                              SizedBox(height: 16),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                ),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "For Rapido Auto accidental claims or any questions regarding it, please write a mail to shoutout@rapido.bike",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(14, 0, 14, 24),
                        child: SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Email us",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Expanded(
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/images/claim_help.png",
                                width: 100,
                                height: 100,
                                fit: BoxFit.contain,
                              ),
                              SizedBox(height: 16),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                ),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "For Rapido Cab accidental claims or any questions regarding it, please write a mail to shoutout@rapido.bike",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(14, 0, 14, 24),
                        child: SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Email us",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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

class MyPolicyCoverage extends StatefulWidget {
  const MyPolicyCoverage({
    super.key,
    required this.icon,
    required this.subtitle,
    required this.title,
  });
  final IconData icon;
  final String title;
  final String subtitle;
  @override
  State<MyPolicyCoverage> createState() => _MyPolicyCoverageState();
}

class _MyPolicyCoverageState extends State<MyPolicyCoverage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(widget.icon, size: 20),
        SizedBox(width: 18),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.title, style: TextStyle(fontWeight: FontWeight.w500)),
            Text(
              widget.subtitle,
              style: TextStyle(color: Colors.grey.shade500),
            ),
          ],
        ),
      ],
    );
  }
}

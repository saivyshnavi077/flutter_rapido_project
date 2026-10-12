import 'package:flutter/material.dart';
import 'package:rapido_screen/profile_page/coins_transaction_page.dart';

class MyRapidoCoinsPage extends StatefulWidget {
  const MyRapidoCoinsPage({super.key});

  @override
  State<MyRapidoCoinsPage> createState() => _MyRapidoCoinsPageState();
}

class _MyRapidoCoinsPageState extends State<MyRapidoCoinsPage> {
  bool _isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Rapido Coins",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: SizedBox(
              // color: Colors.amber,
              height: 220,
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    child: Image.asset(
                      "assets/images/deal_coin.png",
                      width: 200,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Use Rapido coins",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          "& get discounts on rides!",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.monetization_on_outlined),
                            SizedBox(width: 6),
                            Text("1 coin equals \u{20B9}1"),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.local_offer_outlined),
                            SizedBox(width: 6),
                            Text("Use with coupons"),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text(
                              "LEARN MORE",
                              style: TextStyle(
                                color: Colors.blue.shade500,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(width: 6),
                            Icon(
                              Icons.chevron_right,
                              color: Colors.blue.shade500,
                              size: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              padding: EdgeInsets.fromLTRB(16, 14, 14, 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade100,
                    spreadRadius: 3,
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Rapido Coin Balance",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "0",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 6),
                      Image.asset(
                        "assets/images/coin_balance.png",
                        width: 24,
                        height: 24,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: EdgeInsets.only(left: 12, bottom: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade100),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 26),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Always use Rapido Coins",
                              style: TextStyle(fontSize: 16),
                            ),
                            Transform.scale(
                              scale: 0.8,
                              child: Switch(
                                trackOutlineColor: WidgetStateProperty.all(
                                  Colors.transparent,
                                ),
                                trackColor:
                                    WidgetStateProperty.resolveWith<Color>((
                                      states,
                                    ) {
                                      if (states.contains(
                                        WidgetState.selected,
                                      )) {
                                        return Colors.teal.shade300;
                                      }
                                      return Colors.grey.shade300;
                                    }),
                                thumbColor:
                                    WidgetStateProperty.resolveWith<Color>((
                                      states,
                                    ) {
                                      return Colors.white;
                                    }),
                                value: _isSwitched,
                                onChanged: (bool value) {
                                  setState(() {
                                    _isSwitched = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 18),
                        Row(
                          children: [
                            Icon(Icons.auto_awesome_sharp, color: Colors.amber),
                            SizedBox(width: 8),
                            Text(
                              "Use Rapido coins and get\ndiscounts on your rides",
                              style: TextStyle(
                                color: Colors.indigo.shade900,
                                fontSize: 16,
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
          ),
          SizedBox(height: 8),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(color: Colors.grey.shade100),
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Row(
                    children: [
                      Icon(Icons.local_offer, color: Colors.blue.shade900),
                      SizedBox(width: 8),
                      Text(
                        "COIN TRANSACTIONS",
                        style: TextStyle(color: Colors.blue.shade900),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyCoinsPage()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "View all transactions",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

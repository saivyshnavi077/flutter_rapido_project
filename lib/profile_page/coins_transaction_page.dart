import 'package:flutter/material.dart';

class MyCoinsPage extends StatefulWidget {
  const MyCoinsPage({super.key});

  @override
  State<MyCoinsPage> createState() => _MyCoinsPageState();
}

class _MyCoinsPageState extends State<MyCoinsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Coins Transactions",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/wallet.png",
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 8),
            Text(
              textAlign: TextAlign.center,
              "You don't have any transactions\nyet!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

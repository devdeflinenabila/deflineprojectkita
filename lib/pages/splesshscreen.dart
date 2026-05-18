import 'dart:async';
import 'package:flutter/material.dart';

import 'login.dart';

class Splesshscreen extends StatefulWidget {
  const Splesshscreen({super.key});

  @override
  State<Splesshscreen> createState() => _SplesshscreenState();
}

class _SplesshscreenState extends State<Splesshscreen> {
  late Timer t;
  @override
  void initState() {
    super.initState();
    t = Timer(
      Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.cyan, Colors.purple, Colors.pink],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset(
                  "asset/image/logodefline.png",
                  width: size.width * 0.4,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "DEFLINE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

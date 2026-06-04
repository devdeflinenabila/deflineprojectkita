import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ABOUT", style: TextStyle(color: Colors.white)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.cyan, Colors.purple, Colors.pink],
            ),
          ),
        ),
      ),
      body: Text(
        "tentang aplikasi ini dibuat hanya untuk pratik saja tidak ada hubungan dengan lain tidak ada jelasnya",
        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
      ),
    );
  }
}

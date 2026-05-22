import 'package:flutter/material.dart';

class Profilpage extends StatefulWidget {
  const Profilpage({super.key});

  @override
  State<Profilpage> createState() => _ProfilpageState();
}

class _ProfilpageState extends State<Profilpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("akunnya"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.cyan, Colors.purple, Colors.pink],
            ),
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              child: Image.asset(
                'aset/image/kisah2.jpg',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "itu gak anjay images",
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

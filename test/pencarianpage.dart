import 'package:deflineproject/pages/dasbroadpage.dart';
import 'package:flutter/material.dart';

class Pencarianpage extends StatefulWidget {
  const Pencarianpage({super.key});

  @override
  State<Pencarianpage> createState() => _PencarianpageState();
}

class _PencarianpageState extends State<Pencarianpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          height: 70,
          margin: EdgeInsets.only(bottom: 10, left: 16, right: 16),
          decoration: BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.circular(35),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DashboardPage(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.search_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

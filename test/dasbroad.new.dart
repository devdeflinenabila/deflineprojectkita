import 'pencarianpage.dart';
import 'package:deflineproject/pages/profilpage.dart';
import 'package:flutter/material.dart';

import '../lib/pages/homepage.dart';

class Dasbroadnew extends StatefulWidget {
  const Dasbroadnew({super.key});

  @override
  State<Dasbroadnew> createState() => _DasbroadnewState();
}

class _DasbroadnewState extends State<Dasbroadnew> {
  int sadIndex = 0;

  final Map<int, List<dynamic>> agusSad = {
    0: [const Homepage(), "Home", Icons.home],
    1: [const Pencarianpage(), "Pencarian", Icons.search_rounded],
    2: [const Profilpage(), "Profile", Icons.person],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blueAccent, Colors.purple],
                ),
              ),
              child: Text(
                'MENU',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('SETTINGS'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.person_search),
              title: const Text('CONTACT US'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.accessibility),
              title: const Text('ABOUT'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.comment),
              title: const Text('USER AGREEMENT'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.policy),
              title: const Text('PRIVACY POLICY'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profilpage()),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.purple],
            ),
          ),
        ),

        title: Container(
          height: 42,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.15),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.white.withOpacity(0.1),
              width: 1,
            ),
          ),
          child: TextField(
            style: const TextStyle(color: Colors.white, fontSize: 15),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              hintText: 'Search apps, files, and web...',
              hintStyle: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 14),
              prefixIcon: Icon(Icons.search_rounded, color: Colors.white.withOpacity(0.8), size: 20),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
            ),
            onSubmitted: (value) {
              setState(() {
                sadIndex = 1;
              });
            },
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Profilpage()),
              );
            },
            icon: const Icon(Icons.settings, color: Colors.white),
          ),
        ],
      ),
      body: agusSad[sadIndex]![0] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        elevation: 5,
        currentIndex: sadIndex,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.white,
        onTap: (value) {
          setState(() {
            sadIndex = value;
          });
        },
        items: agusSad.entries.map((s) {
          return BottomNavigationBarItem(
            backgroundColor: Colors.blueAccent,
            icon: Icon(s.value[2] as IconData, size: 32),
            label: s.value[1].toString(),
            activeIcon: Icon(s.value[2] as IconData, size: 38),
          );
        }).toList(),
      ),
    );
  }
}

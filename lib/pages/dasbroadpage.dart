import 'package:deflineproject/pages/pencarianpage.dart';
import 'package:deflineproject/pages/profilpage.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int sadIndex = 0;

  Map<int, List<dynamic>> agusSad = {
    0: [Homepage(), "Home", Icons.home],
    1: [Pencarianpage(), "Pencarian", Icons.search_rounded],
    2: [Profilpage(), "Profile", Icons.person],

  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
             DrawerHeader(
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
              leading: Icon(Icons.settings),
              title: Text('SETTINGS'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(Icons.person_search),
              title: Text('CONTACT US'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(Icons.accessibility),
              title: Text('ABOUT'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(Icons.comment),
              title:  Text('USER AGREEMENT'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(Icons.policy),
              title:  Text('PRIVACY POLICE'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profilpage()),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('DEFLINE', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        flexibleSpace: Container(
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.blueAccent, Colors.purple],
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profilpage()),
              );
            },
            icon:  Icon(Icons.person, color: Colors.white),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purpleAccent,
        elevation: 5,
        currentIndex: sadIndex,
        onTap: (value) {
          setState(() {
            sadIndex = value;
          });
        },
        items: agusSad.entries.map((s) {
          return BottomNavigationBarItem(
            backgroundColor: Colors.blueAccent,
            icon: Icon(s.value[2], color: Colors.white, size: 32),
            label: s.value[1],
            activeIcon: Icon(s.value[2], size: 48, color: Colors.grey),
          );
        }).toList(),
      ),
      body: agusSad[sadIndex]![0],
    );
  }
}

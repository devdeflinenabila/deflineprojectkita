import 'package:deflineproject/pages/login.dart';
import 'package:deflineproject/pages/pencarian_dart.dart';
import 'package:deflineproject/pages/profilpage.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int sadIndex = 0;
  final List<Widget> pages = [Homepage(), PencarianPage(), Profilpage()];

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
                  colors: [Colors.cyan, Colors.purple, Colors.pink],
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
              title: Text('USER AGREEMENT'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(Icons.policy),
              title: Text('PRIVACY POLICY'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profilpage()),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.logout, color: Colors.red),
              title: Text(
                'LOGOUT',
                style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Kamu yakin logout?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("BATAL"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                          },
                          child: Text("OK"),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'DEFLINE',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.cyan, Colors.purple, Colors.pink],
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
            icon: Icon(Icons.settings, color: Colors.white),
          ),
        ],
      ),
      body: pages[sadIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 20, left: 20, right: 20, top: 10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.cyan, Colors.purple, Colors.pink],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => setState(() => sadIndex = 0),
              child: Icon(
                Icons.home,
                color: sadIndex == 0 ? Colors.white : Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () => setState(() => sadIndex = 1),
              child: Icon(
                Icons.search_rounded,
                color: sadIndex == 1 ? Colors.white : Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () => setState(() => sadIndex = 2),
              child: Icon(
                Icons.person,
                color: sadIndex == 2 ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

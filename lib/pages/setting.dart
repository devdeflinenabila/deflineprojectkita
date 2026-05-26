import 'package:deflineproject/service/setting_service.dart';
import 'package:flutter/material.dart';
class Inboxpage extends StatefulWidget {
  const Inboxpage({super.key});

  @override
  State<Inboxpage> createState() => _InboxpageState();
}

class _InboxpageState extends State<Inboxpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SETTING", style: TextStyle(color: Colors.white)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.cyan,Colors.purple,Colors.pink],
            ),
          ),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
          itemCount: par.length,
          itemBuilder: (context, code) {
            return GestureDetector(
              onTap: () {
                setState(() {
                });
              },
            );
          },
        ),
      ),
      bottomSheet: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
          itemCount: par.length,
          itemBuilder: (context, code) {
            return GestureDetector(
              onTap: () {
                setState(() {
                });
              },
              child: ListTile(
                leading: Icon(Icons.account_balance, color: Colors.white),
                title: Text(par[code].title),
                trailing: Icon(par[code].icon),
              ),
            );
          },
        ),
      ),
    );
  }
}
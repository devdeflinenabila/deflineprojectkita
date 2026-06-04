import 'package:deflineproject/service/contact_service.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CONTACT US", style: TextStyle(color: Colors.white)),
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
          itemCount: mc.length,
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
          itemCount: mc.length,
          itemBuilder: (context, code) {
            return GestureDetector(
              onTap: () {
                setState(() {
                });
              },
              child: ListTile(
                leading: Icon(Icons.account_balance, color: Colors.white),
                title: Text(mc[code].pg),
                subtitle: Text(mc[code].no),
              ),
            );
          },
        ),
      ),
    );
  }
}

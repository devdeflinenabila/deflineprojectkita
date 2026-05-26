import 'package:flutter/material.dart';

class SettingWidget extends StatefulWidget {
  final String title;
  final IconData icon;
  const SettingWidget({super.key,
    required this.title,
    required this.icon});

  @override
  State<SettingWidget> createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}

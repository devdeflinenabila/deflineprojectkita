import 'package:deflineproject/pages/splesshscreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Mydeflineproject());
}
class Mydeflineproject extends StatefulWidget {
  const Mydeflineproject({super.key});

  @override
  State<Mydeflineproject> createState() => _MydeflineprojectState();
}

class _MydeflineprojectState extends State<Mydeflineproject> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: Splesshscreen(),)  ;
  }
}

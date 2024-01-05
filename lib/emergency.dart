import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Emergency extends StatefulWidget {
  const Emergency({super.key});

  @override
  State<Emergency> createState() => _EmergencyState();
}

class _EmergencyState extends State<Emergency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(child: Column(children: [Container(child: Text("Emergency"),)])),
      ),)
    );
  }
}
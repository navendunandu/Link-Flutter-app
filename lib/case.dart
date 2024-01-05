import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Case extends StatefulWidget {
  const Case({super.key});

  @override
  State<Case> createState() => _CaseState();
}

class _CaseState extends State<Case> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(child: Column(children: [Container(child: Text("Case"),)]),)
    );
  }
}
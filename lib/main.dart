import 'package:flutter/material.dart';
import 'package:link/splash_screen.dart';

void main() {
  runApp(const MainApp());
}
class appcolor{
  static const Color primary = Colors.blue;
  static  Color secondary = const Color.fromRGBO(21, 101, 192, 1);
  static  Color accent = Colors.blue.shade100;
  static  Color text = Colors.grey.shade900;
  static  Color text2 = Colors.grey.shade700;
  static  Color white = Colors.white;
  
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:SplashScreen(),
    );
  }
}

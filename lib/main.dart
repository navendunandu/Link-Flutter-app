import 'package:flutter/material.dart';
import 'package:link/splash_screen.dart';

void main() {
  runApp(const MainApp());
}
class appcolor{
  static const Color primary = Color(0xFF00FF87);
  static  Color secondary = Color(0xFF5E8C78)  ;
  static  Color accent = Color(0xFFF0F5F2);
  static  Color text = Colors.grey.shade900;
  static  Color text2 = Colors.grey.shade700;
  static  Color red =  Colors.red;
  static  Color white = Colors.white;
  static Color black = Colors.black; 
  
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

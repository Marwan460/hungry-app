import 'package:flutter/material.dart';
import 'package:hungry/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hungry',
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}


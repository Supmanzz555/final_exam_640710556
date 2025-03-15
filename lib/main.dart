import 'package:flutter/material.dart';
import 'answer1.dart';
import 'answer2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Answer2(),
      //home Answer1():
    );
  }
}

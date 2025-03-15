import 'package:flutter/material.dart';
import 'profile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Profile(
          name: 'Maenrat phaiphon',
          position: 'Student',
          email: 'phaiphon_m@silpakorn.edu',
          phone: '0656709043',
          url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8MSY-90VyuVZoK_ZeVfZtrFE8Ug8ZydXskA&s',
          github: 'https://github.com/Supmanzz555',
        ), 
      ),
    );
  }
}

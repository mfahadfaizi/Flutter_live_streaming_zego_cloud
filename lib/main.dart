import 'package:flutter/material.dart';
import 'package:live_stream/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Live Stream',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.orangeAccent, primary: Colors.orangeAccent),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

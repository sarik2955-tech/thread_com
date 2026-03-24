import 'package:flutter/material.dart';
import 'package:thread_com/screens/fir.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Hello World",
      debugShowCheckedModeBanner: false,
      home: Fir(),

    );
  }
}

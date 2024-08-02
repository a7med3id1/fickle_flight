import 'package:fickle_flight/screens/SearchPage.dart';
import 'package:flutter/material.dart';
import 'package:fickle_flight/screens/Search_1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Search1(),
    );
  }
}

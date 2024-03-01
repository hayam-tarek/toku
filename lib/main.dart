import 'package:flutter/material.dart';
import 'package:toku/screens/home_page.dart';

void main() {
  runApp(const TokuApp());
}

class TokuApp extends StatefulWidget {
  const TokuApp({super.key});

  @override
  State<TokuApp> createState() => _TokuAppState();
}

class _TokuAppState extends State<TokuApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

import 'package:ca/product.dart';
import 'package:ca/timer.dart';
import 'package:flutter/material.dart';
import 'counter_screen.dart';
import 'first_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: TimerScreen(),
    );
  }
}

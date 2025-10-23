import 'package:ca/product.dart';
import 'package:ca/switch.dart';
import 'package:ca/task_6.dart';
import 'package:ca/text_field.dart';
import 'package:ca/timer.dart';
import 'package:flutter/material.dart';
import 'buttons.dart';
import 'counter_screen.dart';
import 'dropdown_screen.dart';
import 'first_screen.dart';
import 'grid.dart';
import 'gridview_builder.dart';
import 'list-view_builder.dart';
import 'list_view.dart';

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
      home: DropdownScreen(),
    );
  }
}

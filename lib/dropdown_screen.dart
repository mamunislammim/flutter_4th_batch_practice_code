import 'dart:developer';

import 'package:flutter/material.dart';

class DropdownScreen extends StatefulWidget {
  const DropdownScreen({super.key});

  @override
  State<DropdownScreen> createState() => _DropdownScreenState();
}

class _DropdownScreenState extends State<DropdownScreen> {
  List<String> genderList = ["Male", "Female", "Trans"];
  String selectedGender = "Female";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DropdownButton(
        borderRadius: BorderRadius.circular(10),
        menuMaxHeight: 200,
        value: selectedGender,
        items: genderList.map((data) => DropdownMenuItem(value: data, child: Text("=== $data"))).toList(),
        onChanged: (v) {
          log("===========VVV : $v");
          selectedGender = v!;
          setState(() {});
        },
      ),
    );
  }
}

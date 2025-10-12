import 'dart:developer';

import 'package:flutter/material.dart';

class ButtonsScreen extends StatefulWidget {
  const ButtonsScreen({super.key});

  @override
  State<ButtonsScreen> createState() => _ButtonsScreenState();
}

class _ButtonsScreenState extends State<ButtonsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent, title: Text("Buttons")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Elevated")),
            GestureDetector(
              onTap: () {
                log("GestureDetector");
              },
              child: Text("GestureDetector"),
            ),
            InkWell(
              onTap: () {
                log("InkWell");
              },
              child: Text("InkWell"),
            ),

            TextButton(onPressed: () {}, child: Text("data")),

            IconButton(onPressed: () {}, icon: Icon(Icons.add)),

            InkWell(onTap: () {}, child: Text("Text Button")),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(onPressed: (){},child:Icon(Icons.add),),
    );
  }
}

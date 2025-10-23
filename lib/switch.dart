import 'dart:developer';

import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool status = false;
  int q1 = 0;
  List<String> l = ["A", "B", "C"];
  String s = "A";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Switch", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 300,
              child: DropdownButton(
                value: s,
                items: l.map((v) => DropdownMenuItem(value: v, child: Text(v))).toList(),
                onChanged: (String? v) {
                  s = v!;
                  setState(() {
                  });
                },
              ),
            ),

            //
            // Switch(
            //   activeColor: Colors.red,
            //   focusColor: Colors.black,
            //   inactiveTrackColor: Colors.green,
            //   thumbColor: WidgetStatePropertyAll(Colors.white),
            //   padding: EdgeInsets.all(10),
            //   value: status,
            //   onChanged: (a) {
            //     status = a;
            //     setState(() {});
            //     log("======A $a===========");
            //   },
            // ),
            // Row(
            //   children: [
            //     Checkbox(
            //       shape: CircleBorder(),
            //       splashRadius: 100,
            //       side: BorderSide(color: Colors.red),
            //       value: status,
            //       onChanged: (v) {
            //         status = v!;
            //         setState(() {});
            //       },
            //     ),
            //     Text("datasa"),
            //   ],
            // ),
            // CheckboxListTile(
            //   title: Text("AFADDDDDDDDDDDDDDDD"),
            //   subtitle: Text("AFADDDDDDDDDDDDDDDD"),
            //   value: status,
            //   onChanged: (a) {
            //     status = a!;
            //     setState(() {});
            //     log("======A $a===========");
            //   },
            // ),
            //
            // Text("Which is the correct Data Type in Dart ?", style: TextStyle(color: Colors.black, fontSize: 20)),
            // Row(
            //   children: [
            //     Radio(
            //       value: 1,
            //       groupValue: q1,
            //       onChanged: (v) {
            //         q1 = 1;
            //         setState(() {});
            //       },
            //     ),
            //     Text("inT"),
            //   ],
            // ),
            // Row(
            //   children: [
            //     Radio(
            //       value: 2,
            //       groupValue: q1,
            //       onChanged: (v) {
            //         q1 = 2;
            //         setState(() {});
            //       },
            //     ),
            //     Text("Double"),
            //   ],
            // ),
            // Row(
            //   children: [
            //     Radio(
            //       value: 3,
            //       groupValue: q1,
            //       onChanged: (v) {
            //         q1 = 3;
            //         setState(() {});
            //       },
            //     ),
            //     Text("STRING"),
            //   ],
            // ),
            // Row(
            //   children: [
            //     Radio(
            //       value: 4,
            //       groupValue: q1,
            //       onChanged: (v) {
            //         q1 = 4;
            //         setState(() {});
            //       },
            //     ),
            //     Text("int"),
            //   ],
            // ),
            //
            // ElevatedButton(onPressed: (){
            //   if(q1 == 4){
            //     log("==========Success");
            //   }else{
            //     log("==========Wrong");
            //   }
            // }, child: Text("Result"))
          ],
        ),
      ),
    );
  }
}

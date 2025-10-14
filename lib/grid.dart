import 'package:flutter/material.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});


  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  List f = [
    {
      "name": "SOPON VAIYA Dinajpur",
      "phone": "555-0101",
      "sim_operator": "Verizon",
      "time": "10:30 AM",
    },
    {"name": "Alex Johnson", "phone": "555-0102", "sim_operator": "T-Mobile", "time": "02:45 PM"},
    {"name": "Michael Chen", "phone": "555-0103", "sim_operator": "AT&T", "time": "09:00 AM"},
    {"name": "Emily Davis", "phone": "555-0104", "sim_operator": "Mint Mobile", "time": "04:15 PM"},
    {
      "name": "David Rodriguez",
      "phone": "555-0105",
      "sim_operator": "Cricket Wireless",
      "time": "11:50 AM",
    },
    {"name": "Jessica Lee", "phone": "555-0106", "sim_operator": "Verizon", "time": "08:20 AM"},
    {"name": "Chris Wilson", "phone": "555-0107", "sim_operator": "T-Mobile", "time": "06:35 PM"},
    {"name": "Olivia Martinez", "phone": "555-0108", "sim_operator": "AT&T", "time": "03:05 PM"},
    {
      "name": "James Taylor",
      "phone": "555-0109",
      "sim_operator": "Metro by T-Mobile",
      "time": "07:10 AM",
    },
    {"name": "Ava Brown", "phone": "555-0110", "sim_operator": "Visible", "time": "01:00 PM"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green),
      body: GridView(
        shrinkWrap: true,
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 50,
           childAspectRatio: .8
        ),
        children: [
          Container(height: 100, width: 100, color: Colors.red, child: Text("${f[0]['time']}")),
          Container(
            height: 100,
            width: 100,
            color: Colors.blueAccent,
            child: Text("${f[0]['time']}"),
          ),
          Container(height: 100, width: 100, color: Colors.green, child: Text("${f[0]['time']}")),
          Container(height: 100, width: 100, color: Colors.yellow, child: Text("${f[0]['time']}")),
          Container(
            height: 100,
            width: 100,
            color: Colors.pinkAccent,
            child: Text("${f[0]['time']}"),
          ),
          Container(height: 100, width: 100, color: Colors.orange, child: Text("${f[0]['time']}")),
        ],
      ),
    );
  }
}

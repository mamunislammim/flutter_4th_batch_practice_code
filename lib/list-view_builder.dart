import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
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
      appBar: AppBar(backgroundColor: Colors.blue),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 15,
              children: [
                CircleAvatar(child: Icon(Icons.person)),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${f[index]['name']}",
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "${f[index]['phone']}.${f[index]['time']}",
                        style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "${f[index]['sim_operator']}",
                        style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.call),
              ],
            ),
          );
        },
      ),
    );
  }
}

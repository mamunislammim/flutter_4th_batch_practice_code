import 'package:flutter/material.dart';

class GridviewBuilderScreen extends StatefulWidget {
  const GridviewBuilderScreen({super.key});

  @override
  State<GridviewBuilderScreen> createState() => _GridviewBuilderScreenState();
}

class _GridviewBuilderScreenState extends State<GridviewBuilderScreen> {
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
      appBar: AppBar(backgroundColor: Colors.blueGrey),
      // body: GridView.builder(
      //   itemCount: f.length,
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //     childAspectRatio: .65,
      //   ),
      //   itemBuilder: (context, index) {
      //     return Card(
      //       color: Colors.red,
      //       child: Column(
      //         children: [
      //           Image.asset("assets/my_img.jpg", height: 100, width: 100),
      //           Text("${f[index]['name']}", maxLines: 1),
      //           Text("${f[index]['phone']}${f[index]['phone']}${f[index]['phone']}", maxLines: 1,overflow: TextOverflow.ellipsis,),
      //           Text("${f[index]['time']}"),
      //         ],
      //       ),
      //     );
      //   },
      // ),

      body: Column(
        children: [
          ListTile(
            tileColor: Colors.green,
            leading: CircleAvatar(),
            title: Text("dfesdfsdfsddfesdfsdfsddfesdfsdfsddfesdfsdfsddfesdfsdfsd",maxLines: 1,),
            subtitle: Text("dfesdfsdfsd"),
            trailing: Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}

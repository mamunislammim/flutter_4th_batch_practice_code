import 'package:flutter/material.dart';

class Task6 extends StatefulWidget {
  const Task6({super.key});

  @override
  State<Task6> createState() => _Task6State();
}

class _Task6State extends State<Task6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        centerTitle: true,
        title: Text("Women's Apparel"),
        actions: [Icon(Icons.more_vert_rounded)],
      ),
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("12354 Result's"),
                  Spacer(),
                  Text("Filter & Sorts"),
                  SizedBox(width: 10),
                  Icon(Icons.filter_list_alt),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                spacing: 15,
                children: [
                  Container(
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage("https://desland.com.bd/wp-content/uploads/2025/01/DSC03118-1.jpg"),
                      ),
                    ),
                  ),
                  Column(
                    spacing: 5,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        color: Colors.green,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Limited\nEddition", style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      Text("Flasic Trench Coat", style: TextStyle(fontWeight: FontWeight.w800)),
                      Text("Coat", style: TextStyle(fontWeight: FontWeight.w800)),
                      Text("\$8.88", style: TextStyle(fontWeight: FontWeight.w800)),
                      Row(
                        children: [
                          Icon(Icons.star,color: Colors.orange,size: 15,),
                          Icon(Icons.star,color: Colors.orange,size: 15,),
                          Icon(Icons.star,color: Colors.orange,size: 15,),
                          Icon(Icons.star,color: Colors.orange,size: 15,),
                          Icon(Icons.star,color: Colors.orange,size: 15,),
                          Text("(45862 Review's)",style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                      Text("(45862 Review's)",style: TextStyle(color: Colors.grey),),
                      Container(
                        color: Colors.red,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              color: Colors.black,
                            ), Container(
                              height: 10,
                              width: 10,
                              color: Colors.orange,
                            ), Container(
                              height: 10,
                              width: 10,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

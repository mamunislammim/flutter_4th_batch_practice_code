import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  List product = [
    {
      "id": 101,
      "name": "Wireless Mechanical Keyboard",
      "category": "Electronics",
      "price": 99.99,
      "in_stock": true,
    },
    {
      "id": 102,
      "name": "Organic Coffee Beans (Dark Roast)",
      "category": "Groceries",
      "price": 15.50,
      "in_stock": true,
    },
    {
      "id": 103,
      "name": "Stainless Steel Water Bottle",
      "category": "Household",
      "price": 25.00,
      "in_stock": false,
    },
    {
      "id": 104,
      "name": "The Great Adventure Novel",
      "category": "Books",
      "price": 12.99,
      "in_stock": true,
    },
    {
      "id": 105,
      "name": "Yoga Mat (Non-slip)",
      "category": "Fitness",
      "price": 35.75,
      "in_stock": true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: Text("List View"),
      ),
      body: ListView.builder(
        itemCount: product.length,
        itemBuilder: (context, i) {
          return Stack(
            children: [
              Card(
                color: Colors.blueGrey,
                child: SizedBox(
                  height: 100,
                  width: MediaQuery.sizeOf(context).width,
                  child: Row(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(child: Text("${product[i]['id']}")),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${product[i]['name']}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text("${product[i]['category']}"),
                          ],
                        ),
                      ),
                      Text("${product[i]['price']}"),
                    ],
                  ),
                ),
              ),

              Positioned(
                top: 5,
                right: 5,
                child: Card(
                  color: product[i]['in_stock'] == false ? Colors.red : Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      product[i]['in_stock'] == false ? "Stock OUT" : "Stock IN",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

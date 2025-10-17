



import 'package:flutter/material.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2FAFF),
      appBar: AppBar(
        backgroundColor: Color(0xffF2FAFF),
        leading: Icon(Icons.arrow_back, color: Colors.black),
        centerTitle: true,
        title: Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius: 15, backgroundColor: Color(0xffFFE7C2)),
            Text("Care", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
          ],
        ),
        actions: [Icon(Icons.tune), SizedBox(width: 10)],
      ),

      body: SingleChildScrollView(

        child: Column(
          spacing: 10,
          children: [
            // Search
            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(spacing: 10, children: [Icon(Icons.search), Text("Search")]),
            ),

            // categories
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      color:  Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Baby & Kids", style: TextStyle(color: Colors.blue)),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Baby & Kids"),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Baby & Kids"),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Baby & Kids"),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Baby & Kids"),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Baby & Kids"),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Baby & Kids"),
                  ),
                ],
              ),
            ),

            // products
            Row(
              children: [
                Stack(
                  // clipBehavior: Clip.none,
                  children: [
                    Card(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                            height: 100,
                            width: 100,
                            "https://i.chaldn.com/_mpimage/haque-potato-chips-15-gm?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D177134&q=best&v=1",
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Chips"),
                                Text("Pran Potatosfgfrdgfrg"),
                                Text("150 GM, 500 Pcs"),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  spacing: 100,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$25"),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(Icons.shopping_cart_checkout, size: 15),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top:  10,
                        right: 10,
                        child: Icon(Icons.favorite_border))
                  ],
                ),
                Stack(
                  // clipBehavior: Clip.none,
                  children: [
                    Card(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                            height: 100,
                            width: 100,
                            "https://i.chaldn.com/_mpimage/haque-potato-chips-15-gm?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D177134&q=best&v=1",
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Chips"),
                                Text("Pran Potatosfgfrdgfrg"),
                                Text("150 GM, 500 Pcs"),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  spacing: 100,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$25"),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(Icons.shopping_cart_checkout, size: 15),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top:  10,
                        right: 10,
                        child: Icon(Icons.favorite_border))
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Stack(
                  // clipBehavior: Clip.none,
                  children: [
                    Card(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                            height: 100,
                            width: 100,
                            "https://i.chaldn.com/_mpimage/haque-potato-chips-15-gm?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D177134&q=best&v=1",
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Chips"),
                                Text("Pran Potatosfgfrdgfrg"),
                                Text("150 GM, 500 Pcs"),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  spacing: 100,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$25"),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(Icons.shopping_cart_checkout, size: 15),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top:  10,
                        right: 10,
                        child: Icon(Icons.favorite_border))
                  ],
                ),
                Stack(
                  // clipBehavior: Clip.none,
                  children: [
                    Card(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                            height: 100,
                            width: 100,
                            "https://i.chaldn.com/_mpimage/haque-potato-chips-15-gm?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D177134&q=best&v=1",
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Chips"),
                                Text("Pran Potatosfgfrdgfrg"),
                                Text("150 GM, 500 Pcs"),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  spacing: 100,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$25"),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(Icons.shopping_cart_checkout, size: 15),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top:  10,
                        right: 10,
                        child: Icon(Icons.favorite_border))
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Stack(
                  // clipBehavior: Clip.none,
                  children: [
                    Card(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                            height: 100,
                            width: 100,
                            "https://i.chaldn.com/_mpimage/haque-potato-chips-15-gm?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D177134&q=best&v=1",
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Chips"),
                                Text("Pran Potatosfgfrdgfrg"),
                                Text("150 GM, 500 Pcs"),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  spacing: 100,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$25"),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(Icons.shopping_cart_checkout, size: 15),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top:  10,
                        right: 10,
                        child: Icon(Icons.favorite_border))
                  ],
                ),
                Stack(
                  // clipBehavior: Clip.none,
                  children: [
                    Card(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                            height: 100,
                            width: 100,
                            "https://i.chaldn.com/_mpimage/haque-potato-chips-15-gm?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D177134&q=best&v=1",
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Chips"),
                                Text("Pran Potatosfgfrdgfrg"),
                                Text("150 GM, 500 Pcs"),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  spacing: 100,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$25"),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(Icons.shopping_cart_checkout, size: 15),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top:  10,
                        right: 10,
                        child: Icon(Icons.favorite_border))
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Stack(
                  // clipBehavior: Clip.none,
                  children: [
                    Card(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                            height: 100,
                            width: 100,
                            "https://i.chaldn.com/_mpimage/haque-potato-chips-15-gm?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D177134&q=best&v=1",
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Chips"),
                                Text("Pran Potatosfgfrdgfrg"),
                                Text("150 GM, 500 Pcs"),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  spacing: 100,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$25"),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(Icons.shopping_cart_checkout, size: 15),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top:  10,
                        right: 10,
                        child: Icon(Icons.favorite_border))
                  ],
                ),
                Stack(
                  // clipBehavior: Clip.none,
                  children: [
                    Card(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                            height: 100,
                            width: 100,
                            "https://i.chaldn.com/_mpimage/haque-potato-chips-15-gm?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D177134&q=best&v=1",
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Chips"),
                                Text("Pran Potatosfgfrdgfrg"),
                                Text("150 GM, 500 Pcs"),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  spacing: 100,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$25"),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(Icons.shopping_cart_checkout, size: 15),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top:  10,
                        right: 10,
                        child: Icon(Icons.favorite_border))
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Stack(
                  // clipBehavior: Clip.none,
                  children: [
                    Card(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                            height: 100,
                            width: 100,
                            "https://i.chaldn.com/_mpimage/haque-potato-chips-15-gm?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D177134&q=best&v=1",
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Chips"),
                                Text("Pran Potatosfgfrdgfrg"),
                                Text("150 GM, 500 Pcs"),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  spacing: 100,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$25"),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(Icons.shopping_cart_checkout, size: 15),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top:  10,
                        right: 10,
                        child: Icon(Icons.favorite_border))
                  ],
                ),
                Stack(
                  // clipBehavior: Clip.none,
                  children: [
                    Card(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                            height: 100,
                            width: 100,
                            "https://i.chaldn.com/_mpimage/haque-potato-chips-15-gm?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D177134&q=best&v=1",
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Chips"),
                                Text("Pran Potatosfgfrdgfrg"),
                                Text("150 GM, 500 Pcs"),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  spacing: 100,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$25"),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(Icons.shopping_cart_checkout, size: 15),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top:  10,
                        right: 10,
                        child: Icon(Icons.favorite_border))
                  ],
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}

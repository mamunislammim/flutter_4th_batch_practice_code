import 'package:flutter/material.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  int selectedIndex = 0;

  List categoriesIMG = [
    "https://cdn-icons-png.flaticon.com/512/4804/4804069.png",
    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/electronics-logo-design-template-623352222edecd63e67d0b36eab980b2_screen.jpg?ts=1682643025",
    "https://img.freepik.com/premium-vector/shoes-flat-icon-outline-style-simple-vector_746655-4429.jpg",
    "https://img.icons8.com/?size=1200&id=A3c04Fnghx1E&format=jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      endDrawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              child: Row(children: [Icon(Icons.person, size: 50), Text("data")]),
            ),
            Column(
              spacing: 20,
              children: [
                InkWell(
                  onTap: () {
                    selectedIndex = 1;
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    color: selectedIndex == 1 ? Colors.grey : null,
                    child: Row(spacing: 20, children: [Icon(Icons.home), Text("Home")]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    selectedIndex = 2;
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    color: selectedIndex == 2 ? Colors.grey : null,
                    child: Row(spacing: 20, children: [Icon(Icons.home), Text("Home")]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    selectedIndex = 3;
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    color: selectedIndex == 3 ? Colors.grey : null,
                    child: Row(spacing: 20, children: [Icon(Icons.home), Text("Home")]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    selectedIndex = 4;
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    color: selectedIndex == 4 ? Colors.grey : null,
                    child: Row(spacing: 20, children: [Icon(Icons.home), Text("Home")]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30, right: 20, left: 20, bottom: 15),
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: Color((0xffFF4747)),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Location", style: TextStyle(color: Colors.white, fontSize: 20)),
                        Row(
                          children: [
                            Icon(Icons.edit_location_rounded, size: 25, color: Colors.white),
                            SizedBox(width: 14),
                            Text("New York, USA", style: TextStyle(color: Colors.white, fontSize: 20)),
                            Icon(Icons.keyboard_arrow_down, size: 25, color: Colors.white),
                          ],
                        ),
                      ],
                    ),
                    Card(
                      color: Color(0xffFF6666),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.notifications, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  spacing: 20,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Icon(Icons.tune, color: Color(0xffFF6666)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "#SpecialForYou",
                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Text(
                  "See All",
                  style: TextStyle(color: Color(0xffFF6666), fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.all(5),
                  height: 180,
                  width: MediaQuery.sizeOf(context).width - 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        "https://as1.ftcdn.net/v2/jpg/13/11/76/76/1000_F_1311767671_q7hopbdLL2QmTixumbyPs2QYmn9tdZOQ.jpg",
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Category",
                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Text(
                  "See All",
                  style: TextStyle(color: Color(0xffFF6666), fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoriesIMG.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.all(5),
                height: 80,
                width: 80,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Color(0xffed7a7a), borderRadius: BorderRadius.circular(100)),
                child: Image.network(categoriesIMG[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

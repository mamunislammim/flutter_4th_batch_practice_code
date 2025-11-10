import 'package:flutter/material.dart';

class LoginBeautyScreen extends StatefulWidget {
  const LoginBeautyScreen({super.key});

  @override
  State<LoginBeautyScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginBeautyScreen> {
  List categoryList = [
    {
      "id": 1,
      "img": "https://www.shutterstock.com/image-vector/barbershop-hair-cut-salon-logo-600nw-2495133029.jpg",
      "name": "Hair Cut",
    },
    {"id": 2, "img": "https://cdn-icons-png.flaticon.com/512/3792/3792293.png", "name": "Facial"},
    {
      "id": 3,
      "img": "https://static.vecteezy.com/system/resources/previews/015/567/439/non_2x/nail-icon-design-free-vector.jpg",
      "name": "Nails",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 48,
              child: ListView.builder(
                itemCount: categoryList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  height: 48,
                  //width: 130,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  decoration: BoxDecoration(
                    color: index == 0 ? Colors.white : Color(0xffE1F5FA),
                    border: Border.all(color: index != 0 ? Colors.transparent : Color(0xff156778), width: 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 8,
                    children: [
                      // Icon(Icons.person, size: 24, color: Color(0xff156778)),
                      Image.network("${categoryList[index]['img']}"),
                      Text(
                        "${categoryList[index]['name']}",
                        style: TextStyle(color: Color(0xff156778), fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Text("data", style: TextStyle(fontSize: 25)),
            Text("data", style: TextStyle(fontFamily: "Manrope", fontSize: 25)),
          ],
        ),
      ),
    );
  }
}

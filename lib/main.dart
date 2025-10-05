import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff7382BF),
          leading: Icon(Icons.arrow_back, color: Colors.white),
          centerTitle: true,
          title: Text("Teachers", style: TextStyle(color: Colors.white)),
          actions: [
            CircleAvatar(radius: 15, backgroundImage: AssetImage("assets/my_img.jpg")),
            SizedBox(width: 10),
          ],
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: Color(0xff7382BF), width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  spacing: 10,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://img.freepik.com/free-photo/front-view-man-posing-indoors_23-2149883570.jpg?semt=ais_hybrid&w=740&q=80",
                      ),
                    ),
                    Text("Mr. Han Md Mamun Islam",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                    Spacer(),
                    Icon(Icons.call,color: Color(0xff7382BF),),
                    Icon(Icons.mail_outline_outlined,color: Color(0xff7382BF),),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: Color(0xff7382BF), width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  spacing: 10,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://img.freepik.com/free-photo/front-view-man-posing-indoors_23-2149883570.jpg?semt=ais_hybrid&w=740&q=80",
                      ),
                    ),
                    Text("Mr. Han Md Mamun Islam",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                    Spacer(),
                    Icon(Icons.call,color: Color(0xff7382BF),),
                    Icon(Icons.mail_outline_outlined,color: Color(0xff7382BF),),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: Color(0xff7382BF), width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  spacing: 10,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://img.freepik.com/free-photo/front-view-man-posing-indoors_23-2149883570.jpg?semt=ais_hybrid&w=740&q=80",
                      ),
                    ),
                    Text("Mr. Han Md Mamun Islam",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                    Spacer(),
                    Icon(Icons.call,color: Color(0xff7382BF),),
                    Icon(Icons.mail_outline_outlined,color: Color(0xff7382BF),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

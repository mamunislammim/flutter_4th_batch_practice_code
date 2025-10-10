import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int a = 0;

  @override
  Widget build(BuildContext context) {
    print("======@@@@@========");
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20,
        children: [
          a % 5 == 0
              ? Icon(Icons.add_card)
              : Container(
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        a % 2 == 0
                            ? "https://images.pexels.com/photos/35537/child-children-girl-happy.jpg?cs=srgb&dl=pexels-bess-hamiti-83687-35537.jpg&fm=jpg"
                            : "https://cdn.pixabay.com/photo/2015/04/24/20/58/girl-738303_640.jpg",
                      ),
                    ),
                  ),
                  child: Text("$a", style: TextStyle(color: Colors.white, fontSize: 30)),
                ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 50,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (a > 0) {
                      a--;
                    }
                  });
                },
                child: Text("Decrement"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    a++;
                  });
                },
                child: Text("Increment"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

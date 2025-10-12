import 'package:flutter/material.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  String hour = "00";
  String min = "00";
  String sec = "00";
  String mil = "00";
  bool status = true;

  int c = 0;

  counter() async {
    await Future.delayed(Duration(milliseconds: 100));
    setState(() {
      c++;
    });

    if (status) {
      counter();
    }
  }

  timerFun() async {
    await Future.delayed(Duration(milliseconds: 1));
    print("===TTTTTTTTTT==");
    setState(() {
      hour = DateTime.now().toString().substring(11, 13);
      min = DateTime.now().toString().substring(14, 16);
      sec = DateTime.now().toString().substring(17, 19);
      mil = DateTime.now().toString().substring(21, 23);
    });
    if (hour != "9" && min != "56") {
      timerFun();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "${hour}",
                      style: TextStyle(color: Colors.blueAccent, fontSize: 25),
                    ),
                  ),
                ),
                Text(
                  ":",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("${min}", style: TextStyle(color: Colors.blueAccent, fontSize: 25)),
                  ),
                ),
                Text(
                  ":",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("${sec}", style: TextStyle(color: Colors.blueAccent, fontSize: 25)),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("${mil}", style: TextStyle(color: Colors.blueAccent, fontSize: 25)),
                  ),
                ),
              ],
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("${c}", style: TextStyle(color: Colors.blueAccent, fontSize: 25)),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                status = true;
                timerFun();
              },
              child: Text("Start"),
            ),
            ElevatedButton(
              onPressed: () {
                status = true;
                counter();
              },
              child: Text("Count Start"),
            ),

            ElevatedButton(
              onPressed: () {
                status = false;
              },
              child: Text("Stop"),
            ),
          ],
        ),
      ),
    );
  }
}

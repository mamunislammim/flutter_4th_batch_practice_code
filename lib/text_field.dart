import 'dart:developer';

import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  bool isActive = true;
  String name = "";
  String result = "";
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(centerTitle: true, backgroundColor: Colors.green, title: Text("TextField Screen")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              Image.asset("assets/coder.png", height: 200, width: 200),

              result == "" ? Container() : Text(result),
              TextField(
                controller: nameController,
                // onChanged: (a){
                //   log("======= $a");
                //   name = a;
                //   setState(() {});
                // },
                decoration: InputDecoration(
                  labelText: "Enter Your Name",
                  labelStyle: TextStyle(color: Colors.green),
                  prefixIcon: Icon(Icons.person, color: Colors.green),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
              // TextField(
              //   keyboardType: TextInputType.number,
              //   decoration: InputDecoration(
              //     labelText: "Enter Your Phone",
              //     prefixIcon: Icon(Icons.phone, color: Colors.green),
              //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              //     focusedBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(10),
              //       borderSide: BorderSide(color: Colors.green),
              //     ),
              //   ),
              // ),
              // TextField(
              //   keyboardType: TextInputType.emailAddress,
              //   decoration: InputDecoration(
              //     labelText: "Enter Your Email",
              //     prefixIcon: Icon(Icons.email, color: Colors.green),
              //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              //     focusedBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(10),
              //       borderSide: BorderSide(color: Colors.green),
              //     ),
              //   ),
              // ),
              TextField(
                controller: passwordController,
                obscureText: isActive,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Enter Your Password",
                  suffixIcon: InkWell(
                    onTap: () {
                      isActive = !isActive;
                      setState(() {});
                      log("====sdfds==========");
                    },
                    child: Icon(isActive ? Icons.visibility_off : Icons.visibility, color: Colors.green),
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  log("==========${nameController.text}");
                  log("==========${passwordController.text}");
                  if (nameController.text.toLowerCase() == "Mamun".toLowerCase() && passwordController.text == "123456") {
                    log("========Success===========");
                    result = "Success";
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Success")));
                  } else {
                    log("=========Wrong Name or Password");
                    result = "Wrong Name or Password";
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Wrong Name or Password")));
                  }
                  setState(() {});
                },
                child: Card(
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Registration",
                          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

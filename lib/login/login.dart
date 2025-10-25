import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                "https://static.vecteezy.com/system/resources/thumbnails/011/432/528/small/enter-login-and-password-registration-page-on-screen-sign-in-to-your-account-creative-metaphor-login-page-mobile-app-with-user-page-flat-illustration-vector.jpg",
              ),
              Text("Login", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              Text("Please Sign in to Continue.", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "Username",
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(20)),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility_off_outlined),
                  hintText: ".............",
                  hintStyle: TextStyle(fontSize: 20),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Remember me nexttime"),
                  SizedBox(
                    height: 30,
                    width: 50,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Switch(
                        inactiveTrackColor: Color(0xff1B374D),
                        activeTrackColor: Color(0xff1B374D),
                        value: true,
                        onChanged: (v) {},
                      ),
                    ),
                  ),
                ],
              ),

              Card(
                color: Color(0xff1B374D),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Sign In",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                spacing: 20,
                children: [
                  Expanded(child: Divider()),
                  Text("OR", style: TextStyle(fontWeight: FontWeight.w500)),
                  Expanded(child: Divider()),
                ],
              ),

              Row(
                spacing: 5,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.black38),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

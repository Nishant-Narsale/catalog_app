import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(children: [
        Image.asset("assets/images/login_img.png", fit: BoxFit.cover),
        SizedBox(height: 20.0), // To give space between image and text
        Text(
          "Login",
          style: TextStyle(
              fontSize: 30,
              color: Colors.deepPurpleAccent,
              fontWeight: FontWeight.w800),
        ),
        SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter username",
                  labelText: "Username",
                ),
              ),
              SizedBox(height: 10.0),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter password",
                  labelText: "Password",
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                  onPressed: () {
                    print("login clicked");
                  },
                  child: Text("Login")),
            ],
          ),
        ),
      ]),
    );
  }
}

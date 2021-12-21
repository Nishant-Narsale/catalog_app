import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            "assets/images/login_img.png",
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20.0), // To give space between image and text
          Text(
            "Log In",
            style: TextStyle(
                fontSize: 50,
                color: Colors.deepPurpleAccent,
                fontWeight: FontWeight.w800),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
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
                SizedBox(height: 40.0),
                ElevatedButton(
                  onPressed: () {
                    print("login clicked");
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: Text(
                    "Login",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
                  ),
                  style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

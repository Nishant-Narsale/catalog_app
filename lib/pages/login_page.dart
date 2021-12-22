import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool buttonClicked = false;

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      print("login clicked");
      setState(() {
        buttonClicked = true;
      });
      await Future.delayed(Duration(milliseconds: 500));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        buttonClicked = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
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
            SizedBox(height: 10.0),
            Text(
              "Welcome again $name",
              style: TextStyle(fontSize: 13),
            ),
            SizedBox(height: 10.0),
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
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return "Username cannot be empty";
                      }

                      return null;
                    },
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return "Password cannot be empty";
                      } else if (value != null && value.length < 6) {
                        return "Password should atleast contain 6 characters";
                      }

                      return null;
                    },
                  ),
                  SizedBox(height: 40.0),
                  Material(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(buttonClicked ? 50 : 8),
                    child: InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        height: 40,
                        width: buttonClicked ? 50 : 150,
                        alignment: Alignment.center,
                        child: buttonClicked
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.white),
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

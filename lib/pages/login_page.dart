import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changed = false;

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
                InkWell(
                  onTap: () async {
                    print("login clicked");
                    setState(() {
                      changed = true;
                    });

                    await Future.delayed(Duration(milliseconds: 500));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    height: 40,
                    width: changed ? 50 : 150,
                    alignment: Alignment.center,
                    child: changed
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
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(changed ? 50 : 8),
                      color: Colors.deepPurple,
                    ),
                  ),
                ),

                // ElevatedButton(
                //   onPressed: () {
                //     print("login clicked");
                //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                //   },
                //   child: Text(
                //     "Login",
                //     style:
                //         TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
                //   ),
                //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                // ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

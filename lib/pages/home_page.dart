import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("My First Big App"),
        ),
      ),
      drawer: Drawer(
        child: Container(
          alignment: Alignment.center,
          width: 100,
          height: 10,
          color: Colors.deepPurple,
          child: Text(
            "Nishant Narsale",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

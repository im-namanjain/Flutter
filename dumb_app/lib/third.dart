import 'package:flutter/material.dart';

class thirdpage extends StatelessWidget {
  const thirdpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dumb Checker"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 250,
          child: Column(
            children: [
              Text(
                "You're Correct.",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:dumb_app/main.dart';
import 'package:dumb_app/third.dart';
import 'package:flutter/material.dart';

class secondpage extends StatelessWidget {
  const secondpage({super.key});

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
                "Are You Dumb?",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 70,
                      height: 45,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      child: Container(
                        width: 70,
                        height: 45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.8),
                          color: Colors.grey,
                        ),
                        child: Center(
                          child:
                              Text("No", style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => thirdpage()));
                      },
                      child: Container(
                        width: 70,
                        height: 45,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.8),
                          color: Colors.grey,
                        ),
                        child: Center(
                          child: Text("Yes",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                    Container(
                      width: 70,
                      height: 45,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

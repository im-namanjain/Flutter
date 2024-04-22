import 'package:balley_messaging_app/loginpage.dart';
import 'package:flutter/material.dart';

class frontpage extends StatelessWidget {
  const frontpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(children: [
          Opacity(
            opacity: 0.9,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset("assets/images/four.jpg", fit: BoxFit.cover),
            ),
          ),
          Center(
            child: Container(
              width: 300,
              child: Column(
                children: [
                  SizedBox(
                    height: 500,
                  ),
                  Container(
                    child: Text(
                      "More secure way to send messages with email",
                      style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 55,
                    width: double.infinity,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.black),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => loginpage()));
                        },
                        child: Text(
                          "Start Messaging",
                        )),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

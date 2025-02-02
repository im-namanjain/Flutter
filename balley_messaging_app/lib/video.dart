import 'dart:async';
import 'package:balley_messaging_app/chatpage.dart';
import 'package:balley_messaging_app/video2.dart';
import 'package:flutter/material.dart';

class videopage extends StatefulWidget {
  const videopage({super.key});

  @override
  State<videopage> createState() => _videopageState();
}

class _videopageState extends State<videopage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => video2page(),
          ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 85,
            ),
            Container(
              height: 400,
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/two.jpg"),
                    radius: 80,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Naman",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Dialing...",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 110,
            ),
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40), color: Colors.red),
              child: IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => chatpage()));
                  },
                  icon: Icon(Icons.call_end_outlined)),
            )
          ],
        ),
      ),
    );
  }
}

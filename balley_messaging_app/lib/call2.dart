import 'package:balley_messaging_app/chatpage.dart';
import 'package:flutter/material.dart';
import 'package:balley_messaging_app/video2.dart';

class call2page extends StatelessWidget {
  const call2page({super.key});

  @override
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
                    "Ongoing Call",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Timer",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.grey),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => video2page()));
                      },
                      icon: Icon(Icons.videocam_outlined)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.grey),
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.mic)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.red),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chatpage()));
                      },
                      icon: Icon(Icons.call_end_outlined)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

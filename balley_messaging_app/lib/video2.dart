import 'package:balley_messaging_app/call2.dart';
import 'package:balley_messaging_app/chatpage.dart';
import 'package:flutter/material.dart';

class video2page extends StatelessWidget {
  const video2page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Stack(children: [
              Container(
                height: 450,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/two.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                  height: 200,
                  width: 120,
                  right: 10,
                  top: 10,
                  child: Image.asset(
                    "assets/images/four.jpg",
                    fit: BoxFit.cover,
                  ))
            ]),
            SizedBox(
              height: 25,
            ),
            Text(
              "Naman",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
            SizedBox(
              height: 40,
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
                                builder: (context) => call2page()));
                      },
                      icon: Icon(Icons.videocam_off_outlined)),
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
                      color: Colors.pink),
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

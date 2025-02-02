import 'package:flutter/material.dart';
import 'package:balley_messaging_app/setting.dart';

class profilepage extends StatelessWidget {
  const profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Text(
              "Edit Profile",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Provide your profile picture and username to communicate",
                style: TextStyle(color: Colors.grey, fontSize: 17),
              ),
            ),
            Container(
              height: 200,
              child: Center(
                child: Container(
                  width: 200,
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(65),
                              color: Colors.white),
                          child: Icon(
                            Icons.add_a_photo_rounded,
                            size: 55,
                          ),
                        ),
                      ),
                      Positioned(
                          height: 40,
                          width: 40,
                          right: 20,
                          top: 20,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey,
                            ),
                            child: IconButton(
                                onPressed: () {}, icon: Icon(Icons.add)),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "@username",
                  hintStyle: TextStyle(color: Colors.blueGrey),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 55,
              width: 250,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => settingpage()));
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

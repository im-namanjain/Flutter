import 'package:flutter/material.dart';
import 'package:balley_messaging_app/call.dart';
import 'package:balley_messaging_app/video.dart';
import 'package:balley_messaging_app/setting.dart';

class chatpage extends StatelessWidget {
  const chatpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Naman"),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => videopage()));
              },
              icon: Icon(Icons.videocam_outlined)),
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => callpage()));
              },
              icon: Icon(Icons.phone)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => settingpage()));
              },
              icon: Icon(Icons.settings))
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                        color: Colors.white),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Hi how are you doing ? Your last presentation at the board meeting was amazing. qell done!",
                            style: TextStyle(fontSize: 10.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 45),
                    child: Text(
                      "time",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 45),
                    child: Text(
                      "time",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                        color: Colors.grey),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Hi how are you doing ? Your last presentation at the board meeting was amazing. qell done!",
                            style: TextStyle(fontSize: 10.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "July 23,2021",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                        color: Colors.white),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Hi how are you doing ? Your last presentation at the board meeting was amazing. qell done!",
                            style: TextStyle(fontSize: 10.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 45),
                    child: Text(
                      "time",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 45),
                    child: Text(
                      "time",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                        color: Colors.grey),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Hi how are you doing ? Your last presentation at the board meeting was amazing. qell done!",
                            style: TextStyle(fontSize: 10.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                        color: Colors.white),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Hi how are you doing ? Your last presentation at the board meeting was amazing. qell done!",
                            style: TextStyle(fontSize: 10.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 45),
                    child: Text(
                      "time",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 45),
                    child: Text(
                      "time",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                        color: Colors.grey),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Hi how are you doing ? Your last presentation at the board meeting was amazing. qell done!",
                            style: TextStyle(fontSize: 10.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                        color: Colors.white),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Hi how are you doing ? Your last presentation at the board meeting was amazing. qell done!",
                            style: TextStyle(fontSize: 10.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 45),
                    child: Text(
                      "time",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "start typing here....",
                    hintStyle: TextStyle(color: Colors.blueGrey),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blueGrey,
                    )),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ))),
              ),
            )
          ],
        ),
      ),
    );
  }
}

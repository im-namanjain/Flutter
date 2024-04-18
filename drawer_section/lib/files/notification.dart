import 'package:flutter/material.dart';

class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Notifications'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Colors.black,
                ),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          image: DecorationImage(
                              image: AssetImage("assets/images/five.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 1),
                          child: Text(
                            "Sender",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 2),
                          child: Text(
                            "Message",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(width: 180),
                  Container(
                    child: Text(
                      "now",
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ));
  }
}

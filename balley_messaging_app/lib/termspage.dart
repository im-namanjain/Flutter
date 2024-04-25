import 'package:balley_messaging_app/messagepage.dart';
import 'package:flutter/material.dart';

class termspage extends StatelessWidget {
  const termspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: Column(children: [
              SizedBox(
                height: 35,
              ),
              Text(
                "Balley",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              SizedBox(
                height: 110,
              ),
              Container(
                width: 330,
                child: Column(
                  children: [
                    Text(
                      "Welcome to Balley ! Now Let's you set up real quick",
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextField(
                      // controller: name,
                      decoration: InputDecoration(
                          hintText: "Your Display Name",
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
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      // controller: username,
                      decoration: InputDecoration(
                          hintText: "Username",
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
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.circle,
                              size: 35,
                            )),
                        Expanded(child: Container()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "I have read all the Terms and conditions and I ",
                              style: TextStyle(fontSize: 13.5),
                            ),
                            Text(
                              "here by agree to the T & Cs of Balley Chat ",
                              style: TextStyle(fontSize: 13.5),
                            ),
                            Text(
                              "application.",
                              style: TextStyle(fontSize: 13.5),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 190,
                    ),
                    Container(
                      height: 55,
                      width: 330,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => messagepage()));
                          },
                          child: Text(
                            "Submit",
                            style: TextStyle(color: Colors.white),
                          )),
                    )
                  ],
                ),
              )
            ])));
  }
}

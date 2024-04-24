import 'package:balley_messaging_app/termspage.dart';
import 'package:flutter/material.dart';

class otppage extends StatelessWidget {
  const otppage({super.key});

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
                height: 60,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "Enter Verification Code",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "We sent a 4-digit code to .",
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                    Text(
                      "Please enter it below to continue.",
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => termspage()));
                          },
                          child: Text(
                            "Submit Code",
                            style: TextStyle(color: Colors.white),
                          )),
                    )
                  ],
                ),
              )
            ])));
  }
}

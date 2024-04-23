import 'package:balley_messaging_app/otppage.dart';
import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  var emailtext = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Text(
              "Balley",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 360,
              height: 350,
              child: Image.asset(
                "assets/images/one.jpg",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 340,
              child: Text(
                "Balley is free forever. No ads and subscription fees",
                style: TextStyle(
                  fontSize: 29,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 330,
              child: TextField(
                controller: emailtext,
                decoration: InputDecoration(
                    hintText: "Email Address",
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
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 55,
              width: 330,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => otppage()));
                  },
                  child: Text(
                    "Send Login Code",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

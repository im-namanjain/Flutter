import 'package:balley_messaging_app/frontpage.dart';
import 'package:flutter/material.dart';
import 'package:balley_messaging_app/profile.dart';

class settingpage extends StatelessWidget {
  const settingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Container(
          height: 250,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => profilepage()));
                },
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Profile",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    "Edit your profile and set your display image",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications_none_outlined,
                  size: 40,
                  color: Colors.white,
                ),
                title: Text(
                  "Notifications",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Turn on or off notifications",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Icon(
                  Icons.fingerprint,
                  size: 40,
                  color: Colors.white,
                ),
                title: Text(
                  "Biometrics",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Turn on and off fingerprint lock",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 250,
              ),
              Container(
                height: 50,
                width: 106,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => frontpage()));
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout,
                          color: Colors.black,
                        ),
                        Text(
                          "Log out",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

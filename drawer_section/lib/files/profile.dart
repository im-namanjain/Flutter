import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Container(
                height: 220,
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/one.jpg'),
                    radius: 65,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(85, 85, 0, 0),
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 35,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.photo_camera),
                          iconSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 300,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Name',
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        'Naman Jain',
                        style: TextStyle(color: Colors.black),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit,
                            color: Colors.black,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(65, 0, 0, 0),
                      child: Container(
                        child: Divider(
                          color: Colors.black,
                          thickness: 2,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.info_outlined,
                        color: Colors.black,
                      ),
                      title: Text(
                        'About',
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        "Can't, Talk Whatsapp Only",
                        style: TextStyle(color: Colors.black),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit,
                            color: Colors.black,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(65, 0, 0, 0),
                      child: Container(
                        child: Divider(
                          color: Colors.black,
                          thickness: 2,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Phone',
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        '+919876543210',
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Container(
                  child: Text("This above ui copied from Whatsapp"),
                ),
              )
            ],
          ),
        ));
  }
}

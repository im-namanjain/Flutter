import 'package:drawer_section/files/notification.dart';
import 'package:drawer_section/files/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drawer App',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var imagess = [
      "assets/images/one.jpg",
      "assets/images/two.jpg",
      "assets/images/three.jpg",
      "assets/images/four.jpg"
    ];
    var names = [
      "Feather",
      "Man",
      "Taj Mahal",
      "Book",
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.blue,
                  Colors.pink,
                ])),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/five.jpg"))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Flutter",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                )),
            CustomListTile(Icons.person, 'Profile'),
            CustomListTile(Icons.notifications, 'Notification'),
            CustomListTile(Icons.settings, 'Settings'),
            CustomListTile(Icons.lock, 'Log Out'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 170,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/one.jpg")),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 170,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/two.jpg")),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 170,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/three.jpg")),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 170,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/four.jpg")),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 170,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/one.jpg")),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 170,
                      height: 220,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/two.jpg")),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 170,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/three.jpg")),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 170,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/four.jpg")),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      "Select Date",
                      style: TextStyle(fontSize: 20),
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          DateTime? datepicked = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime.now());
                        },
                        child: Text("Date")),
                  ],
                ),
                Container(
                  width: 100,
                ),
                Column(
                  children: [
                    Text(
                      "Select Time",
                      style: TextStyle(fontSize: 20),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          var timepicked = showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now(),
                              initialEntryMode: TimePickerEntryMode.dial);
                        },
                        child: Text("Time")),
                  ],
                )
              ],
            ),
            Container(
              width: 360,
              height: 225,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.asset(imagess[index]),
                    title: Text(names[index]),
                    subtitle: Text("data"),
                    trailing: Icon(Icons.add),
                  );
                },
                itemCount: imagess.length,
                scrollDirection: Axis.vertical,
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 20,
                    thickness: 2,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;

  CustomListTile(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
        child: InkWell(
          splashColor: Colors.greenAccent,
          onTap: () {
            if (text == 'Profile')
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => profile()));
            else if (text == 'Notification')
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => notification()));
          },
          child: Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        text,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

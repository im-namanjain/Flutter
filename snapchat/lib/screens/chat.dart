import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class chatpage extends StatelessWidget {
  const chatpage({super.key});

  @override
  Widget build(BuildContext context) {
    var arrimages = [
      'assets/images/one.jpg',
      'assets/images/two.jpg',
      'assets/images/three.jpg',
      'assets/images/four.jpg',
      'assets/images/one.jpg',
      'assets/images/two.jpg',
      'assets/images/three.jpg',
      'assets/images/four.jpg',
      'assets/images/one.jpg',
      'assets/images/two.jpg'
    ];
    var arrNames = [
      'Rahul',
      'Ajay',
      'Ram',
      'Shyam',
      'Meena',
      'Nitin',
      'Sanjay',
      'Ravi',
      'Ajit',
      'Mohan'
    ];
    var received = [
      'Received',
      'Received',
      'Opened',
      'Received',
      'Opened',
      'Opened',
      'Received',
      'Received',
      'Opened',
      'Received'
    ];
    var streak = [10, 23, 45, 62, 76, 54, 43, 59, 9, 72];

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("assets/images/two.jpg"),
                        fit: BoxFit.cover)),
              )),
          backgroundColor: Colors.black,
          title: Text(
            "Chat",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            Icon(
              Icons.person_add_rounded,
              color: Colors.grey,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.more_horiz,
              color: Colors.grey,
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: Container(
          color: Colors.black,
          height: double.infinity,
          width: double.infinity,
          child: Stack(children: [
            Container(
                height: MediaQuery.of(context).size.height - 140,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                          backgroundImage: AssetImage(arrimages[index])),
                      title: Text(
                        arrNames[index],
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Row(
                        children: [
                          Text(
                            received[index],
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "time",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            streak[index].toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                          FaIcon(
                            FontAwesomeIcons.fire,
                            size: 15,
                            color: Colors.orange[700],
                          )
                        ],
                      ),
                      trailing: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                      ),
                    );
                  },
                  itemCount: arrNames.length,
                  separatorBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: Divider(
                        height: 0.1,
                        thickness: 0.2,
                        color: Colors.grey,
                      ),
                    );
                  },
                )),
            Positioned(
                bottom: 10,
                right: 10,
                child: IconButton(
                  onPressed: () {},
                  icon: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1),
                        color: Colors.lightBlue),
                    child: Icon(
                      Icons.chat,
                    ),
                  ),
                )),
          ]),
        ));
  }
}

import 'package:flutter/material.dart';

class chatpage extends StatelessWidget {
  const chatpage({super.key});

  @override
  Widget build(BuildContext context) {
    var arrimages = [
      "assets/images/one.jpg",
      "assets/images/two.jpg",
      "assets/images/three.jpg",
      "assets/images/four.jpg",
      "assets/images/one.jpg",
      "assets/images/two.jpg",
      "assets/images/three.jpg",
      "assets/images/four.jpg"
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("username"),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.video_call_outlined,
                size: 35,
              )),
          SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                size: 35,
              ))
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              height: 40,
              margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              child: TextField(
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent))),
              ),
            ),
            Container(
              height: 105,
              child: ListView.builder(
                  itemCount: arrimages.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(8),
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              image: DecorationImage(
                                  image: AssetImage(arrimages[index]),
                                  fit: BoxFit.cover)),
                        ),
                        Text("username")
                      ],
                    );
                  })),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 10, bottom: 10),
              child: Container(
                height: 25,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Messages",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Requests",
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
            for (var i = 0; i < 15; i++)
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/one.jpg")),
                title: Text("username"),
                subtitle: Text("Sent or Seen time"),
                trailing: IconButton(
                    onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
              )
          ],
        )),
      ),
    );
  }
}

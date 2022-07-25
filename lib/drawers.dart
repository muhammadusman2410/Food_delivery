import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Drawers extends StatelessWidget {
  const Drawers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepOrange),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.black),
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 10, top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 38,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 35,
                            backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80"),
                          ),
                        ),
                        Expanded(child: Container()),
                        IconButton(
                            onPressed: (() => Get.back() ),
                            icon: Icon(
                              Icons.close,
                              color: Colors.white,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Muhammad Usman",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "abcd@gmail.com",
                      style: TextStyle(
                          color: Colors.grey,
                          // fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: null,
              leading: Icon(
                Icons.notifications,
                color: Colors.black54,
              ),
              title: txtmethod("Notification"),
            ),
            ListTile(
              onTap: null,
              leading: Icon(
                Icons.chat,
                color: Colors.black54,
              ),
              title: txtmethod("Chat"),
            ),
            ListTile(
              onTap: null,
              leading: Icon(
                Icons.watch,
                color: Colors.black54,
              ),
              title: txtmethod("History"),
            ),
            ListTile(
              onTap: null,
              leading: Icon(
                Icons.dashboard,
                color: Colors.black54,
              ),
              title: txtmethod("Terms and conditions"),
            ),
            ListTile(
              onTap: null,
              leading: Icon(
                Icons.settings,
                color: Colors.black54,
              ),
              title: txtmethod("Setting"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            // Expanded(child: Container()),
            ListTile(
              onTap: null,
              leading: Icon(
                Icons.logout,
                color: Colors.black54,
              ),
              title: txtmethod("Logout"),
            ),
          ],
        ),
      ),
    );
  }

  txtmethod(String txt) {
    return Text(
      txt,
      style: TextStyle(
          color: Colors.black54, fontSize: 17, fontWeight: FontWeight.bold),
    );
  }
}

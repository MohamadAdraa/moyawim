import 'package:flutter/material.dart';
import 'package:two/Profile_Page/Profile_Page.dart';
import 'package:two/Test_Pages/test.dart';
import 'package:two/messaging/messaging_page.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new BottomNavigationBar(
      backgroundColor: Colors.blue[500],
      items: [
        BottomNavigationBarItem(
            icon: Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Test();
                  }));
                },
                iconSize: 30,
                color: Colors.black,
              ),
            ),
            title: new Text('الإعدادات',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black))),
        BottomNavigationBarItem(
            icon: Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ProfilePage(
                      name1: "My name",
                      lastname1: "MY lastname",
                      job1: "My job",
                      desc1: "My desc",
                      phonenb1: "My phonenb",
                    );
                  }));
                },
                iconSize: 30,
                color: Colors.black,
              ),
            ),
            title: new Text(
              'صفحتك',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            )),
        BottomNavigationBarItem(
            icon: Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.chat),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Messaging();
                  }));
                },
                iconSize: 25,
                color: Colors.black,
              ),
            ),
            title: new Text(
              'محادثة',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            )),
        BottomNavigationBarItem(
            icon: Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
                iconSize: 30,
              ),
            ),
            title: new Text(
              'الرئيسية',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
      ],
      onTap: (int x) => debugPrint('index $x'),
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,

      //fixedColor: Colors.blue,
    );
  }
}

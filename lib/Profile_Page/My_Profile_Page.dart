//import 'package:flutter/material.dart';
////import 'package:main_page/main.dart';
//
//class ProfilePage extends StatelessWidget {
//  final String job1;
//  final String desc1;
//  final String name1;
//  final String lastname1;
//  final String phonenb1;
//
//  @override
//  Widget build(BuildContext context) {
//    return Material(
//      child: Scaffold(
//        appBar: new AppBar(
//          leading: new Container(), // to remove back arrow
//          title: new Text('الصفحة الشخصية'),
//          centerTitle: true,
//          elevation: 6.0,
//          actions: <Widget>[
//            new IconButton(
//              //alignment: Alignment.centerRight,
//              icon: Icon(Icons.arrow_forward),
//              onPressed: () {
//                Navigator.pop(context);
//              },
//            ),
//          ],
//        ),
//        body: Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          children: <Widget>[
//            Container(
//              margin: EdgeInsets.only(top: 10),
//              child: CircleAvatar(
//                radius: 70,
//                child: ClipOval(
//                  child: Image.network(
//                    'https://pbs.twimg.com/media/DZotU1hW0AEDN5F.jpg',
//                  ),
//                ),
//              ),
//            ),
//            Container(
//              padding: const EdgeInsets.only(right: 20),
//              child: Text(
//                'الملف الشخصي',
//                textDirection: TextDirection.rtl,
//                style: TextStyle(
//                    fontSize: 20,
//                    color: Colors.blue,
//                    fontWeight: FontWeight.bold),
//              ),
//            ),
//            Container(
//              margin: EdgeInsets.all(10),
//              padding: EdgeInsets.all(10),
//              decoration: BoxDecoration(
//                borderRadius: BorderRadius.all(
//                  Radius.circular(30),
//                ),
//                color: Colors.blue,
//              ),
//              height: 190,
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.end,
//                children: <Widget>[
//                  Padding(
//                    padding: const EdgeInsets.fromLTRB(10, 8, 8, 4),
//                    child: Text(
//                      'الاسم : ' + name1 + " " + lastname1,
//                      textDirection: TextDirection.rtl,
//                      style: TextStyle(fontSize: 15),
//                    ),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.fromLTRB(10, 0, 8, 4),
//                    child: Text('رقم الهاتف : ' + phonenb1,
//                        textDirection: TextDirection.rtl,
//                        style: TextStyle(fontSize: 15)),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.fromLTRB(10, 0, 8, 4),
//                    child: Text('العمل : ' + job1,
//                        textDirection: TextDirection.rtl,
//                        style: TextStyle(fontSize: 15)),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.fromLTRB(10, 0, 8, 4),
//                    child: Text('تعريف : ' + desc1,
//                        textDirection: TextDirection.rtl,
//                        overflow: TextOverflow.ellipsis,
//                        style: TextStyle(fontSize: 15)),
//                  ),
//                ],
//              ),
//            ),
//            Container(
//              padding: const EdgeInsets.only(right: 20),
//              child: Text(
//                'الأعمال',
//                textDirection: TextDirection.rtl,
//                style: TextStyle(
//                    fontSize: 20,
//                    color: Colors.blueAccent,
//                    fontWeight: FontWeight.bold),
//              ),
//            ),
//            Container(
//                margin: EdgeInsets.all(10),
//                padding: EdgeInsets.all(10),
//                decoration: BoxDecoration(
//                  borderRadius: BorderRadius.all(
//                    Radius.circular(30),
//                  ),
//                  color: Colors.blueAccent,
//                ),
//                height: 150,
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                  children: <Widget>[
//                    Container(
//                      height: 100,
//                      width: 100,
//                      decoration: new BoxDecoration(
//                        image: DecorationImage(
//                          image: new NetworkImage(
//                              'https://myanmartoursasia.files.wordpress.com/2013/09/myanmar-rattan.jpg'),
//                          fit: BoxFit.fill,
//                        ),
//                        shape: BoxShape.rectangle,
//                      ),
//                      //margin: EdgeInsets.all(5),
//                    ),
//                    Container(
//                      height: 100,
//                      width: 100,
//                      decoration: new BoxDecoration(
//                        image: DecorationImage(
//                          image: new NetworkImage(
//                              'https://previews.123rf.com/images/sergiobarrios/sergiobarrios1706/sergiobarrios170600600/79623840-red-hot-iron-in-a-forge-working-with-hot-iron-traditional-work.jpg'),
//                          fit: BoxFit.fill,
//                        ),
//                        shape: BoxShape.rectangle,
//                      ),
//                      //margin: EdgeInsets.all(5),
//                    ),
//                    Container(
//                      height: 100,
//                      width: 100,
//                      decoration: new BoxDecoration(
//                        image: DecorationImage(
//                          image: new NetworkImage(
//                              'https://wideinfo.org/wp-content/uploads/2019/05/Tips-and-Tricks-for-the-Perfect-Paint-Job-Home-Painting-Tips-1.jpg'),
//                          fit: BoxFit.fill,
//                        ),
//                        shape: BoxShape.rectangle,
//                      ),
//                      //margin: EdgeInsets.all(5),
//                    ),
//                  ],
//                )),
//          ],
//        ),
//      ),
//    );
//  }
//}

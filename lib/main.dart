import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class ScreenArguments {
  final String title;
  final String message;
  ScreenArguments(this.title, this.message);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      title: 'FaceBook Fake',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => trangchu(),
        SecondScreen.routeName: (context) => tranghai(),
        baScreen.routeName: (context) => trangba(),
        profileState.routeName: (context) => profile(),
        SecurityState.routeName: (context) => Security()
      },
    );
  }
}

class trangchu extends StatefulWidget {
  @override
  FirstScreen createState() => FirstScreen();
}

class FirstScreen extends State<trangchu> {
  TextEditingController _phone = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    thongbao(BuildContext context) {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Thông báo"),
              content: Text("Bạn chưa nhập đầy đủ thông tin "),
              actions: <Widget>[
                ElevatedButton(
                  child: Text("Tắt"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            );
          });
    }

    return Scaffold(
        backgroundColor: Colors.indigo,
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 40),
              child: Image.asset(
                "images/meo.png",
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                'Đăng Nhập',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(50, 30, 50, 10),
              child: TextField(
                  textAlign: TextAlign.center,
                  controller: _phone,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Icon(Icons.call, color: Colors.grey),
                    hintText: '            Phone',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.zero,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.zero,
                    ),
                  )),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(50, 5, 50, 20),
              child: TextField(
                  textAlign: TextAlign.center,
                  controller: _password,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Icon(Icons.lock, color: Colors.grey),
                    hintText: '            Password',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.zero,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.zero,
                    ),
                  )),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
              width: double.infinity,
              height: 60,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.black,
                  primary: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                child: Text('SIGN IN'),
                onPressed: () {
                  if (_phone.text == "" || _password.text == "") {
                    thongbao(context);
                  } else {
                    if (_phone.text == _password.text) {
                      ScreenArguments ms =
                          ScreenArguments('Chúc mừng', 'Đăng nhập thành công');
                      Navigator.pushNamed(context, SecondScreen.routeName,
                          arguments: ms);
                    } else {
                      ScreenArguments ms = ScreenArguments(
                          'Xin lỗi', 'Đăng nhập không thành công ');
                      //Navigator.pushNamed(context, baScreen.routeName,arguments: ms);
                    }
                  }
                  setState(() {});
                },
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'Quên mật khẩu?',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                    child: Text(
                      '------------------------ Hoặc ------------------------',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.blue[900],
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                      ),
                      onPressed: () {},
                      child: Text('Tạo tài khoản mới',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

String img2 =
    'https://images.pexels.com/photos/1851164/pexels-photo-1851164.jpeg';
String img3 =
    'https://images.pexels.com/photos/733416/pexels-photo-733416.jpeg';
String img4 =
    'https://images.pexels.com/photos/208984/pexels-photo-208984.jpeg';

String img6 =
    'https://images.pexels.com/photos/1056251/pexels-photo-1056251.jpeg';
String img7 =
    'https://images.pexels.com/photos/1056252/pexels-photo-1056252.jpeg';

String img9 = 'https://images.pexels.com/photos/37401/dog-cute-pet.jpg';
String img10 =
    'https://images.pexels.com/photos/65928/dog-nose-snout-munsterlander-65928.jpeg';
String img11 =
    'https://images.pexels.com/photos/572861/pexels-photo-572861.jpeg';

class tranghai extends StatefulWidget {
  @override
  SecondScreen createState() => SecondScreen();
}

class SecondScreen extends State<tranghai> {
  static const routeName = '/tranghai';
  String khoa = "Hủy kết bạn",
      tuan = "Hủy kết bạn",
      trong = "Hủy kết bạn",
      vinh = "Hủy kết bạn";
  @override
  Widget build(BuildContext context) {
    Widget hang1 = Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 110,
            child: DrawerHeader(
              padding: EdgeInsets.fromLTRB(85, 40, 0, 25),
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              child: Text('Thông Tin',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: const Text('Profile',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            onTap: () {
              ScreenArguments ms =
                  ScreenArguments('Chúc mừng', 'Đăng nhập thành công');
              Navigator.pushNamed(context, profileState.routeName,
                  arguments: ms);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text(
              'Security',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              ScreenArguments ms =
                  ScreenArguments('Chúc mừng', 'Đăng nhập thành công');
              Navigator.pushNamed(context, SecurityState.routeName,
                  arguments: ms);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: const Text('Log out',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            onTap: () {
              ScreenArguments ms =
                  ScreenArguments('Chúc mừng', 'Đăng nhập thành công');
              Navigator.pushNamed(context, '/', arguments: ms);
            },
          ),
        ],
      ),
    );
    Widget hang3 = Center(
        child: Column(children: [
      ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Quay lại'),
      ),
    ]));
    Widget home1 = Container(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(img6),
                            ),
                          ),
                          Expanded(
                              child: Column(
                            children: [
                              Container(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Ninh Dương Lan Ngọc",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Text(
                                              "45 phút",
                                              style: TextStyle(
                                                color: Colors.grey[500],
                                                fontSize: 15,
                                              ),
                                            ),
                                            Text(
                                              "  .  ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Icon(
                                              Icons.people,
                                              color: Colors.grey[500],
                                              size: 18,
                                            ),
                                          ],
                                        ),
                                      )
                                    ]),
                              ),
                            ],
                          )),
                          Container(
                            padding: EdgeInsets.only(left: 120),
                            child: Icon(
                              Icons.more_horiz,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                              child: Text(
                                "Hôm nay là một này tuyệt vời",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Image.asset(
                              "images/1.jpg",
                              fit: BoxFit.cover,
                              width: 600,
                              height: 500,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(img2),
                            ),
                          ),
                          Expanded(
                              child: Column(
                            children: [
                              Container(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Đặng Quang Vinh",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Text(
                                              "1 giờ",
                                              style: TextStyle(
                                                color: Colors.grey[500],
                                                fontSize: 15,
                                              ),
                                            ),
                                            Text(
                                              "  .  ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Icon(
                                              Icons.people,
                                              color: Colors.grey[500],
                                              size: 18,
                                            ),
                                          ],
                                        ),
                                      )
                                    ]),
                              ),
                            ],
                          )),
                          Container(
                            padding: EdgeInsets.only(left: 120),
                            child: Icon(
                              Icons.more_horiz,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                              child: Text(
                                "Yêu ai cũng vậy, yêu vinh đi mấy bạn",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Image.asset(
                              "images/vinh.jpg",
                              fit: BoxFit.cover,
                              width: 600,
                              height: 500,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(img3),
                            ),
                          ),
                          Expanded(
                              child: Column(
                            children: [
                              Container(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Nguyễn Anh Khoa",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Text(
                                              "6 giờ",
                                              style: TextStyle(
                                                color: Colors.grey[500],
                                                fontSize: 15,
                                              ),
                                            ),
                                            Text(
                                              "  .  ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Icon(
                                              Icons.people,
                                              color: Colors.grey[500],
                                              size: 18,
                                            ),
                                          ],
                                        ),
                                      )
                                    ]),
                              ),
                            ],
                          )),
                          Container(
                            padding: EdgeInsets.only(left: 120),
                            child: Icon(
                              Icons.more_horiz,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                              child: Text(
                                "Thua ở đâu gấp đôi ở đó, còn thở là còn gỡ",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Image.asset(
                              "images/khoa.jpg",
                              fit: BoxFit.cover,
                              width: 600,
                              height: 500,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(img4),
                            ),
                          ),
                          Expanded(
                              child: Column(
                            children: [
                              Container(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Nguyễn Quốc Tuấn",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Text(
                                              "1 ngày",
                                              style: TextStyle(
                                                color: Colors.grey[500],
                                                fontSize: 15,
                                              ),
                                            ),
                                            Text(
                                              "  .  ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Icon(
                                              Icons.people,
                                              color: Colors.grey[500],
                                              size: 18,
                                            ),
                                          ],
                                        ),
                                      )
                                    ]),
                              ),
                            ],
                          )),
                          Container(
                            padding: EdgeInsets.only(left: 120),
                            child: Icon(
                              Icons.more_horiz,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                              child: Text(
                                "Chúc mấy bé ngủ ngon nha :3",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Image.asset(
                              "images/tuan.jpg",
                              fit: BoxFit.cover,
                              width: 600,
                              height: 500,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
    Widget people = Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Container(
        color: Colors.green[100],
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 55.0,
                            height: 55.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.green,
                              backgroundImage: NetworkImage(img3),
                            ),
                          ),
                          SizedBox(width: 6.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Đặng Quang Vinh",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 5.0),
                              Text("20 bạn chung",
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: FlatButton(
                          child: Text(vinh),
                          onPressed: () {
                            if (vinh == "Thêm bạn bè") {
                              vinh = "Huỷ kết bạn";
                            } else {
                              vinh = "Thêm bạn bè";
                            }
                            setState(() {});
                          },
                          color: Colors.red[200],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 55.0,
                            height: 55.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.green,
                              backgroundImage: NetworkImage(img2),
                            ),
                          ),
                          SizedBox(width: 6.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Nguyễn Anh Khoa",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 5.0),
                              Text("20 bạn chung",
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: FlatButton(
                          child: Text(khoa),
                          onPressed: () {
                            if (khoa == "Thêm bạn bè") {
                              khoa = "Huỷ kết bạn";
                            } else {
                              khoa = "Thêm bạn bè";
                            }
                            setState(() {});
                          },
                          color: Colors.red[200],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 55.0,
                            height: 55.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.green,
                              backgroundImage: NetworkImage(img4),
                            ),
                          ),
                          SizedBox(width: 6.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Nguyễn Quốc Tuấn",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 5.0),
                              Text("77 bạn chung",
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: FlatButton(
                          child: Text(tuan),
                          onPressed: () {
                            if (tuan == "Thêm bạn bè") {
                              tuan = "Huỷ kết bạn";
                            } else {
                              tuan = "Thêm bạn bè";
                            }
                            setState(() {});
                          },
                          color: Colors.red[200],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 55.0,
                            height: 55.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.green,
                              backgroundImage: NetworkImage(img7),
                            ),
                          ),
                          SizedBox(width: 6.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Trần Hoài Trọng",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 5.0),
                              Text("45 bạn chung",
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: FlatButton(
                          child: Text(trong),
                          onPressed: () {
                            if (trong == "Thêm bạn bè") {
                              trong = "Huỷ kết bạn";
                            } else {
                              trong = "Thêm bạn bè";
                            }
                            setState(() {});
                          },
                          color: Colors.red[200],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 55.0,
                            height: 55.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.green,
                              backgroundImage: NetworkImage(img9),
                            ),
                          ),
                          SizedBox(width: 6.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Huỳnh Công Hậu",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 5.0),
                              Text("1 bạn chung",
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: FlatButton(
                          child: Text(khoa),
                          onPressed: () {
                            if (khoa == "Thêm bạn bè") {
                              khoa = "Huỷ kết bạn";
                            } else {
                              khoa = "Thêm bạn bè";
                            }
                            setState(() {});
                          },
                          color: Colors.red[200],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 55.0,
                            height: 55.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.green,
                              backgroundImage: NetworkImage(img10),
                            ),
                          ),
                          SizedBox(width: 6.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Võ thị Panda",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 5.0),
                              Text("100 bạn chung",
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: FlatButton(
                          child: Text(khoa),
                          onPressed: () {
                            if (khoa == "Thêm bạn bè") {
                              khoa = "Huỷ kết bạn";
                            } else {
                              khoa = "Thêm bạn bè";
                            }
                            setState(() {});
                          },
                          color: Colors.red[200],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 55.0,
                            height: 55.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.green,
                              backgroundImage: NetworkImage(img11),
                            ),
                          ),
                          SizedBox(width: 6.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Đặng Anh Trọng",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 5.0),
                              Text("5 bạn chung",
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: FlatButton(
                          child: Text(khoa),
                          onPressed: () {
                            if (khoa == "Thêm bạn bè") {
                              khoa = "Huỷ kết bạn";
                            } else {
                              khoa = "Thêm bạn bè";
                            }
                            setState(() {});
                          },
                          color: Colors.red[200],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    Widget hang2 = DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.people)),
              Tab(icon: Icon(Icons.notifications)),
            ],
          ),
          title: Text('FaceBook'),
          backgroundColor: Colors.indigo,
        ),
        body: TabBarView(
          children: [
            home1,
            people,
            Container(
              child: ListView(
                children: [
                  Container(
                    color: Colors.indigo[100],
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(img6),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text(
                                          "Ninh Dương Lan Ngọc",
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 10, 0, 0),
                                        child: Text(
                                          'đã bày tỏ',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Text(
                                      'cảm xúc về một bài viết của bạn.',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Text(
                                    "45 phút",
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.more_horiz,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(img2),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text(
                                          "Đặng Quang Vinh",
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 10, 0, 0),
                                        child: Text(
                                          'đã gắn thẻ bạn',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Text(
                                      'trong một bài viết. Xem lại ngay.',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Text(
                                    "2 giờ",
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.more_horiz,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.indigo[100],
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(img3),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text(
                                          "Nguyễn Anh Khoa",
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 10, 0, 0),
                                        child: Text(
                                          'đã bình luận về',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Text(
                                      'một liên kết mà bạn được gắn thẻ.',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Text(
                                    "3 giờ",
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.more_horiz,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.indigo[100],
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(img4),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text(
                                          "Trần Hoài Trọng",
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 10, 0, 0),
                                        child: Text(
                                          'đã thêm 7 ảnh mới.',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "1 ngày",
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.more_horiz,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(img7),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text(
                                          "Nguyễn Quốc Tuấn",
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 10, 0, 0),
                                        child: Text(
                                          'đã chia sẽ',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Text(
                                      'bài viết của TRÙM PHIM.',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Text(
                                    "2 ngày",
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.more_horiz,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.indigo[100],
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(img9),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text(
                                          "Huỳnh Công Hậu",
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 10, 0, 0),
                                        child: Text(
                                          'đã bị cắm sừng',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Text(
                                      'mau vào ghẹo ngay nào.',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Text(
                                    "1 tuần",
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.more_horiz,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        drawer: hang1,
      ),
    );
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return MaterialApp(debugShowCheckedModeBanner: false, home: hang2);
  }
}

class trangba extends StatefulWidget {
  @override
  baScreen createState() => baScreen();
}

class baScreen extends State<trangba> {
  static const routeName = '/trangba';
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Đăng nhập thất bại'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
          child: Column(children: [
        Text(args.title),
        Text(args.message),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Try again'),
        ),
      ])),
    );
  }
}

class profile extends StatefulWidget {
  @override
  profileState createState() => profileState();
}

class profileState extends State<profile> {
  static const routeName = '/profileState';
  @override
  Widget build(BuildContext context) {
    Widget hang1 = Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /*  Text("Đặng Quang Vinh"),
          Text("Ngày Sinh: 3/10/2001"),
          Text("Địa chỉ Email: dangquangvinh@gmail.com"),*/
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Đặng Quang Vinh"),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: Icon(Icons.date_range),
            title: Text("20/11/2001"),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("dangquangvinh@gmail.com"),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('0306191292'),
            trailing: Icon(Icons.chevron_right),
          )
        ],
      ),
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text('Account'),
          backgroundColor: Colors.indigo,
        ),
        body: Column(
          children: [
            hang1,
            Center(child: Column(children: [])),
          ],
        ));
  }
}

class Security extends StatefulWidget {
  @override
  SecurityState createState() => SecurityState();
}

class SecurityState extends State<Security> {
  static const routeName = '/SecurityState';
  @override
  Widget build(BuildContext context) {
    Widget hang1 = Container(
      padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /*
          Text("Cài Đặt"),
          Text("Kiểm tra quyền riêng tư"),
          Text("Chính sách quyền riêng tư"),
          Text("Đổi mật khẩu"),
          Text("Thêm số điện thoại"),
          Text("Thêm Email")*/
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Cài Đặt"),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text("Kiểm tra quyền riêng tư"),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: Icon(Icons.library_books),
            title: Text("Chính sách quyền riêng tư"),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: Icon(Icons.sync_problem),
            title: Text("Đổi mật khẩu"),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text('Thêm số điện thoại'),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Thêm email'),
            trailing: Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
    return Scaffold(
        appBar: AppBar(
          title: Text('Security'),
          backgroundColor: Colors.indigo,
        ),
        body: Column(
          children: [
            hang1,
            Center(child: Column(children: [])),
          ],
        ));
  }
}

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
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Roboto'),
     initialRoute: '/',
      routes: {
        '/': (context) => trangchu(),
        SecondScreen.routeName: (context) => tranghai(),
        baScreen.routeName: (context) => trangba(),
        profileState.routeName:(context)=>profile(),
        SecurityState.routeName:(context)=>Security()
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
              title: Text("Thông báo" ,),
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

class tranghai extends StatefulWidget {
  @override
  SecondScreen createState() => SecondScreen();
}
/////////////////////////////////////////////////////////////////////////////////////////////////////
class SecondScreen extends State<tranghai> {
  static const routeName = '/tranghai';
String khoa="Hủy kết bạn",tuan="Hủy kết bạn",trong="Hủy kết bạn";
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

  @override
  Widget build(BuildContext context) {
     Widget hang1=Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
          
           Text("Anh khoa")
          ],
        ),
      );
      Widget hang3=Center(
          child: Column(children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Try again'),
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
      
   
    Widget hang2=DefaultTabController(
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
            title:  Text('Tabs Demo'),
          ),
          body:  TabBarView(
            children: [
              home1,
              Text("Hoài trọng"),
              Text("Hoài trọng")
            ],
          ),
          drawer: hang1,
        ),
      );
           final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return MaterialApp(
      home:hang2   
    );
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
    Widget hang1=Container(
      padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
       children: [
        Text("Đặng Quang Vinh"),
        Text("Ngày Sinh: 3/10/2001"),
        Text("Địa chỉ Email: dangquangvinh@gmail.com")
      ],),
    );
     return Scaffold(
      appBar: AppBar(
        title: const Text('Đặng quang vinh'),
      ),
      body:Column(
        children: [
          hang1,
         Center(
          child: Column(children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Try again'),
        ),
      ])),
        ],
        ) 
    );
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
    Widget hang1=Container(
      padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
       children: [
        Text("Cài Đặt"),
        Text("Kiểm tra quyền riêng tư"),
        Text("Chính sách quyền riêng tư"),
        Text("Đổi mật khẩu"),
        Text("Thêm số điện thoại"),
        Text("Thêm Email")
      ],),
    );
     return Scaffold(
      appBar: AppBar(
        title: const Text('SEcurity'),
      ),
      body:Column(
        children: [
          hang1,
         Center(
          child: Column(children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Try again'),
        ),
      ])),
        ],
        ) 
    );
  }
}

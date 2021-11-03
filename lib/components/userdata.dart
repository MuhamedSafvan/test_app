import 'package:flutter/material.dart';
import 'dart:math' as math;

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<DataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.all(8.0),
          ),
          SizedBox(
            height: 350,
            width: 150,
            child: Stack(
              clipBehavior: Clip.none,
              fit: StackFit.expand,
              children: [
                Container(
                    child: Column(
                  children: [
                    Icon(
                      Icons.person,
                      size: 100,
                    ),
                    Text(
                      ' John Doe',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      'john@doe.com',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 10),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 70,
                          width: 100,
                          margin: EdgeInsets.only(left: 50),
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset('images/points.png'),
                                  Text(
                                    '155',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Points',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 100,
                          margin: EdgeInsets.only(left: 60),
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset('images/saved.png'),
                                  Text(
                                    'Rs.2670',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Saved',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text("Terms of Service"),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset('images/gift_icon.png'),
            title: Text("Invite friends"),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text("Game Zone"),
            trailing: Container(
              height: 30,
              width: MediaQuery.of(context).size.width * .3,
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'COMING SOON',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text("Help center"),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text("Contact us"),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            onTap: () {},
          ),
          ListTile(
            leading: Transform(
              transform: Matrix4.rotationY(math.pi),
              alignment: Alignment.center,
              child: Icon(
                Icons.logout,
              ),
            ),
            title: Text("Sign out"),
            trailing: Icon(Icons.arrow_forward_ios_sharp),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

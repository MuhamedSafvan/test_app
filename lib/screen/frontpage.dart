// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/components/userdata.dart';
import '../screen/hometab.dart';
import '../screen/favorite.dart';
import '../screen/discounttab.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;
  final List<Widget> screens = [
    HometabScreen(),
    FavoriteScreen(),
    DiscountScreen(),
    DataScreen(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HometabScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: AppBar(
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
              size: 60,
            ),
            onPressed: () {
            },
          ),
          backgroundColor: Colors.white,
          title: SafeArea(
            child: Container(
              margin: const EdgeInsets.only(top: 10.0),
              height: 100,
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello, John",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    "Panampalli Nagar,Ernakulam",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 13),
                  ),
                  Icon(
                    Icons.location_on,
                    color: Colors.grey,
                    size: 12,
                  ),
                ],
              ),
            ),
          ),
          actions: [
            Container(
              height: 50,
              width: 50,
              child: Stack(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () {}),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: Center(child: Text('2')),
                    ),
                  ),
                ],
              ),
            ),
          ],
          bottom: SearchBar(),
        ),
      ),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(
          Icons.stop,
          size: 50,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MaterialButton(
                minWidth: 80,
                onPressed: () {
                  setState(() {
                    //
                    currentScreen = HometabScreen();
                    currentTab = 0;
                    //
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: currentTab == 0 ? Colors.blue : Colors.grey,
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 80,
                onPressed: () {
                  setState(() {
                    currentScreen = FavoriteScreen();
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: currentTab == 1 ? Colors.blue : Colors.grey,
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 140,
                onPressed: () {
                  setState(() {
                    currentScreen = DiscountScreen();
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/offer_icon.png',
                      scale: .8,
                      color: currentTab == 2 ? Colors.blue : Colors.grey,
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 30,
                onPressed: () {
                  setState(() {
                    currentScreen = DataScreen();
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person_outline_outlined,
                      color: currentTab == 3 ? Colors.blue : Colors.grey,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      //   bottomNavigationBar: TabBar(
      //     labelColor: Colors.red,
      //     unselectedLabelColor: Colors.black54,
      //     indicatorSize: TabBarIndicatorSize.tab,
      //     indicatorPadding: EdgeInsets.all(5.0),
      //     indicatorColor: Colors.blue,
      //     tabs: [
      //       Tab(icon: Icon(Icons.home)),
      //       Tab(icon: Icon(Icons.favorite_border)),
      //       Tab(icon: Icon(Icons.location_on)),
      //       Tab(icon: Icon(Icons.ac_unit_rounded)),
      //       Tab(icon: Icon(Icons.person)),
      //     ],
      //   ),
      //   body: TabBarView(
      //     children: [
      //       HometabScreen(),
      //       FavoriteScreen(),
      //       LocationScreen(),
      //       DiscountScreen(),
      //       UserScreen(),
      //
      //
      //
      //     ],
      //   ),
      //
      //
      //
      //
      // ),
    );
  }
}

class SearchBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 70,
      width: 450,
      alignment: Alignment.topRight,
      // margin: EdgeInsets.all(6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "You've got a deal!",
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          TextField(
            autofocus: false,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search for shops/offers',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black38,
                ),
                suffixIcon: Image.asset(
                  'images/settings.png',
                  color: Colors.red,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                hoverColor: Colors.white),
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(150);
}

import 'package:flutter/material.dart';
import '../components/horizontallist.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../components/list.dart';

class HometabScreen extends StatefulWidget {
  const HometabScreen({Key? key}) : super(key: key);

  @override
  _HometabState createState() => _HometabState();
}

class _HometabState extends State<HometabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.all(8.0),
          ),
          HorizontalList(),
          Stack(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Image.asset('images/food.png'),
              ),
              Positioned(
                right: MediaQuery.of(context).size.width * .15,
                top: 50,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      // height: 30,
                      width: 70,
                      child: Text(
                        'Enjoy',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      // height: 25,
                      child: Text(
                        '30 % off',
                        style: TextStyle(
                          color: Colors.pink[50],
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'at Edassery',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 30,
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "See Details ",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.pink[50],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      ' Refer your friends',
                      style: TextStyle(
                          color: Colors.red[400],
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      'Win ₹ 50',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  height: 100,
                  child: Image.asset('images/refer.png'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              "Featured Offers",
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('images/hospital.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kinder Multi Speciality Hospitals',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            Text('Panampally Nagar'),
                          ],
                        ),
                        Text('from 15% OFF'),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow[800],
                            ),
                            Text('4.5'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.black38,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('images/vismay.jpg'),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Vismay',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            Text('Panampally Nagar'),
                          ],
                        ),
                        Text('from 15% OFF'),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow[800],
                            ),
                            Text('4.5'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.black38,
                ),
              ],
            ),
          ),
          new Container(
            child: Column(
              children: [
                CarouselSlider.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index, hero) {
                    return Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    );
                  },
                  options: CarouselOptions(
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    height: 200,
                  ),

                  // height: 200,
                  // child: new Carousel(
                  // boxFit: BoxFit.cover,
                  // images: [
                  // AssetImage('images/caro.jpg'),
                  // AssetImage('images/caro.jpg'),
                  // AssetImage('images/caro.jpg'),
                  // AssetImage('images/caro.jpg'),
                  // ],
                  // autoplay: false,
                  // dotSize: 0.0,
                  // // animationCurve: Curves.fastOutSlowIn,
                  // // animationDuration: Duration(microseconds: 1000),
                  //
                  // ),
                ),
                // Text("open",
                //   style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold,
                //       fontSize: 100),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

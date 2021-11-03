import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      color: Colors.white10,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'images/cup.png',
            imageCaption: 'Restaurants & Cafes',
          ),
          SizedBox(width: 20),
          Category(
            imageLocation: 'images/spa.png',
            imageCaption: 'salon & spa',
          ),
          SizedBox(width: 20),

          Category(
            imageLocation: 'images/hotels.png',
            imageCaption: 'Hotels & Resort',
          ),
          SizedBox(width: 20),
          Category(
            imageLocation: 'images/hospitals.png',
            imageCaption: 'hospital',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Category({
    required this.imageLocation,
    required this.imageCaption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              imageLocation,
              width: 100,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                imageCaption,
                style: new TextStyle(fontSize: 12.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

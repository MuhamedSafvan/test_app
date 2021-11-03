import 'package:flutter/material.dart';

class DiscountScreen extends StatefulWidget{
  @override
  _DiscountState createState() => _DiscountState();
}
class _DiscountState extends State<DiscountScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text("DiscountScreen"),
        ),
      ),

    );
  }
}
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget{
  @override
  _FavoriteState createState() => _FavoriteState();
}
class _FavoriteState extends State<FavoriteScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("FavoriteScreen"),
        ),
      ),

    );
  }
}
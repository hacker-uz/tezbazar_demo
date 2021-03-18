import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:tezbazar_demo/ui/profile/components/bottomNavigator.dart';
import 'package:tezbazar_demo/ui/profile/components/loremItem.dart';

class Point extends StatefulWidget {
  @override
  _PointState createState() => _PointState();
}
class _PointState extends State<Point> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Как использовать поинты',
          style: TextStyle(
            color:Colors.black,
          ),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        actions: [],
      ),
      body: Container(
        child: Container(),
        color: Colors.white,
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}

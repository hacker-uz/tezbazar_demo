import 'package:flutter/material.dart';
import 'package:tezbazar_demo/ui/profile/about.dart';
import 'package:tezbazar_demo/ui/profile/oplata.dart';
import 'package:tezbazar_demo/ui/profile/point.dart';
import 'package:tezbazar_demo/ui/profile/profile_screen.dart';
import 'package:tezbazar_demo/ui/profile/question.dart';
import 'package:tezbazar_demo/ui/profile/rate_app.dart';
import 'package:tezbazar_demo/ui/profile/zakaz.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}
class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        currentIndex: _current,
        onTap: (int index){
          setState(() {
            _current = index;
              if(index == 0){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
              }
              if(index == 1){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Oplata()));
              }
              if(index == 2){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Zakaz()));
              }
              if(index == 3){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
              }
              if(index == 4){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>RateApp()));
              }
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,size: 30,),tooltip: "Home",label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.widgets_outlined,size: 30,),tooltip: "Catalog",label: "Catalog"),
          BottomNavigationBarItem(icon: Icon(Icons.search,size: 30,),tooltip: "Search",label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart_rounded,size: 30,),tooltip: "Order",label: "Order"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined,size: 30,),tooltip: "Profile",label: "Profile"),
        ],
      );
    }
  }

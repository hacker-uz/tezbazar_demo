import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tezbazar_demo/bottom_nav_bar.dart';
import 'package:tezbazar_demo/providers/FavouriteProvider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'TezBazar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => FavouriteProvider()),
        ],
          child: BottomNavBar()
      ),
    );
  }
}

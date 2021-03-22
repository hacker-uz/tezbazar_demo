import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:tezbazar_demo/ui/profile/components/loremItem.dart';

class RateApp extends StatefulWidget {
  @override
  _RateAppState createState() => _RateAppState();
}
class _RateAppState extends State<RateApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Оценить приложение',
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
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal:65 ,vertical: 120),
          child: Text(
              'Помогите нам улучшить приложение!'
                  'Оставьте свой отзыв в магазине приложений, '
                  'и поставьте ему оценку!'
          ),
        ),
        color: Colors.white,
      ),
    );
  }
}
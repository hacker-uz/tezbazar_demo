import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tezbazar_demo/ui/profile/components/loremItem.dart';

import '../../../constants.dart';

class Zakaz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Как оформить заказ",
          style: TextStyle(
            color: kSecondryBlack,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            LoremItem(
              title: '1. Lorem Ipsum',
              desc: 'Lorem ipsum dolor sit amet, '
                  'consectetur adipiscing elit. Sem tortor sollicitudin mollis urna. '
                  'Euismod molestie eu fusce orci. Elit risus libero, sed quisque ac. '
                  'Nunc, lacus, dolor ante suspendisse non.',
            ),
            LoremItem(
              title: '2. Lorem Ipsum',
              desc: 'Lorem ipsum dolor sit amet, '
                  'consectetur adipiscing elit. Sem tortor sollicitudin mollis urna. '
                  'Euismod molestie eu fusce orci. Elit risus libero, sed quisque ac. '
                  'Nunc, lacus, dolor ante suspendisse non.',
            ),
          ],
        ),
        color: Colors.white,
      ),
    );;
  }
}
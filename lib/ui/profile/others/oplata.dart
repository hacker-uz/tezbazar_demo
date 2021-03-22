import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tezbazar_demo/ui/profile/components/loremItem.dart';

import '../../../constants.dart';

class Oplata extends StatefulWidget {
  @override
  _OplataState createState() => _OplataState();
}
class _OplataState extends State<Oplata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Способы доставки и оплаты',
      //     style: TextStyle(
      //       color:Colors.black,
      //     ),
      //   ),
      //   leading: Icon(
      //     Icons.arrow_back_ios,
      //     color: Colors.black,
      //   ),
      //   backgroundColor: Colors.white,
      //   elevation: 1,
      //   actions: [],
      // ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Способы доставки и оплатыи",
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
    );
  }
}
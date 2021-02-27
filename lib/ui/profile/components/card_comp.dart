import 'package:flutter/material.dart';
import 'package:tezbazar_demo/ui/constants.dart';

class CardComp extends StatelessWidget {
  final String imageUrl;
  final String title;

  const CardComp({Key key, this.imageUrl, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(height: 13),
            Image.asset(
              imageUrl,
              height: 55,
              width: 60,
            ),
            SizedBox(height: 9),
            Text(
              title,
              style: TextStyle(color: kSecondryBlack),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
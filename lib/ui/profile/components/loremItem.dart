
import 'package:flutter/material.dart';
class LoremItem extends StatelessWidget {
  final String title;
  final String desc;

  const LoremItem({Key key, this.title, this.desc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 5),
          child: Text(
              title,
              style:TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 18,
              )
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 45),
          child: Text(desc),
        ),
      ],
    );
  }
}

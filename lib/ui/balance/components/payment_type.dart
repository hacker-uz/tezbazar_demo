import 'package:flutter/material.dart';

class PaymentType extends StatelessWidget {
  final String imageUrl;
  final String title;
  final Function onTap;

  const PaymentType({Key key, this.imageUrl, this.title, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: Container(
          padding: EdgeInsets.only(left: 13, right: 13),
          height: 72,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Image.asset(
                imageUrl,
                height: 48,
                width: 48,
              ),
              SizedBox(width: 60),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
      ),
    );
  }
}

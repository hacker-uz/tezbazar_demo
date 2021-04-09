import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class PlusMinusButton extends StatefulWidget {
  @override
  _PlusMinusButtonState createState() => _PlusMinusButtonState();
}

class _PlusMinusButtonState extends State<PlusMinusButton> {
  int val = 200;
  double _sum = 150000000;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: (){
            setState(() {
              val--;
              _sum = _sum / 2;
            });
          },
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 4,
                  )
                ]
            ),
            child: Icon(
              Icons.remove,
              color: Colors.green,
              size: 25,
            ),
          ),
        ),
        SizedBox(width: 15,),
        Text(
          '${val}',
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(width: 15,),
        InkWell(
          onTap: (){
            setState(() {
              val++;
              _sum = _sum *  2;
            });
          },
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 4,
                  )
                ]
            ),
            child: Center(
              child: Icon(
                Icons.add,
                color: Colors.green,
              ),
            )
          ),
        ),
        SizedBox(width: 38,),
        Text(
          '${_sum}'
        ),
      ],
    );
  }
}

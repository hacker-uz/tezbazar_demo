import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BlanceSmsVerifyMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 195),
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                child: Center(
                  child:Icon(Icons.done, color:Color(0xFF77B300),
                    size: 48,
                  ), ),
                width: 92,
                height: 92,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Color(0xFF77B300), width: 4)),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38,vertical: 0),
                child: Text(
                  'Платёж проведён успешно!',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF2B2B2B),
                      fontSize: 18
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 0),
                child: Text(
                  'Ваш заказ прибудет в указанное время!',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
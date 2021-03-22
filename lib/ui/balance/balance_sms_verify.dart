import 'package:flutter/material.dart';

import '../../constants.dart';

class BalanceSmsVerify extends StatelessWidget {
  @override
  TextEditingController _textController;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Пополнение баланса",
          style: TextStyle(
            color: kSecondryBlack,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body:Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 20,),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Введите код подтверждения из СМС',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 156,right: 156,bottom: 40,top: 105,),
                child: TextField(
                  controller: _textController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Код карты',
                  ),
                ),
              ),
              // SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 38, vertical: 12),
                height: 40,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "Продолжить",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}

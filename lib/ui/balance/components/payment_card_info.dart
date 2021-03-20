import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tezbazar_demo/constants.dart';
import 'package:tezbazar_demo/ui/balance/components/payment_type.dart';

class PaymentCardInfo extends StatelessWidget {
  TextEditingController _sumController;

  @override
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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/payme.png",
                        height: 48,
                        width: 48,
                      ),
                      SizedBox(width: 60),
                      Text(
                        "Оплатить через Payme",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  TextField(
                    controller: _sumController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Введите сумму",
                      labelStyle: TextStyle(
                        color: kPrimaryColor,
                      ),
                      hintText: "55 000",
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _sumController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: "Код карты",
                            labelStyle: TextStyle(
                              color: kPrimaryColor,
                            ),
                            hintText: "0123 4567 8910 1112",
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: TextField(
                          controller: _sumController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: "Срок карты",
                            labelStyle: TextStyle(
                              color: kPrimaryColor,
                            ),
                            hintText: "12/22",
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
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
                  SizedBox(height: 14)
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          PaymentType(
            imageUrl: "assets/images/click_uz.png",
            title: "Оплатить через Click",
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tezbazar_demo/constants.dart';
import 'package:tezbazar_demo/ui/balance/components/payment_card_info.dart';
import 'package:tezbazar_demo/ui/balance/components/payment_type.dart';

class BalanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Баланс",
          style: TextStyle(
            color: kSecondryBlack,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 30, right: 50),
            height: 200,
            color: kPrimaryColor,
            child: Row(
              children: [
                Image.asset(
                  "assets/images/balance_big.png",
                  height: 100,
                  width: 100,
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Текущий баланс",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "150 000 сум",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 38),
          PaymentType(
            imageUrl: "assets/images/payme.png",
            title: "Пополнить через Payme",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (contex) => PaymentCardInfo(),
                ),
              );
            },
          ),
          PaymentType(
            imageUrl: "assets/images/click_uz.png",
            title: "Пополнить через Click",
            onTap: () {
              print("click");
            },
          ),
        ],
      ),
    );
  }
}

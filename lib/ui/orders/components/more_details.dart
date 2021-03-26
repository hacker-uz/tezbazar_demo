import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../constants.dart';
import 'sending_stage_card.dart';

class MoreDetails extends StatelessWidget {
  final String orderNumber;

  const MoreDetails({Key key, this.orderNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Заказ: № $orderNumber",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: kSecondryBlack,
          ),
        ),
      ),
      body: Column(
        children: [
          Text("Стадия отправки:"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SendingStageCard(
                iconUrl: "assets/icons/payment.svg",
                title: "Оплата",
              ),
              SendingStageCard(
                iconUrl: "assets/icons/cart.svg",
                title: "Сборка",
              ),
              SendingStageCard(
                iconUrl: "assets/icons/zil.svg",
                title: "Подготовка",
              ),
              SendingStageCard(
                iconUrl: "assets/icons/on_way.svg",
                title: "В пути",
                isActive: false,
              ),
              SendingStageCard(
                iconUrl: "assets/icons/tick.svg",
                title: "Готово!",
                isActive: false,
                isLast: true,
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 40,
        child: Row(
          children: [
            Expanded(
              child: Container(
                color: kPrimaryColor,
                child: Center(
                  child: Text(
                    "Позвонить",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: kSecondryBlack,
                child: Center(
                  child: Text(
                    "Написать",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

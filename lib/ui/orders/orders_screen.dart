import 'package:flutter/material.dart';
import 'package:tezbazar_demo/constants.dart';
import 'package:tezbazar_demo/ui/orders/components/order_item_card.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Мои заказы",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: kSecondryBlack,
          ),
        ),
      ),
      body: Column(
        children: [
          OrderItemCard(
            color: kPrimaryColor,
            status: "Доставлено",
            orderNumber: "251448",
            arrival: "21/05/2020",
          ),
          OrderItemCard(
            color: Color(0xFFFBBC05),
            status: "В ожидании",
            orderNumber: "251452",
            arrival: "21/02/2021",
          ),
        ],
      ),
    );
  }
}

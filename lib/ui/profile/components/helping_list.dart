import 'package:flutter/material.dart';
import 'package:tezbazar_demo/constants.dart';

class HelpingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildCard(
          title: "Способы доставки и оплаты",
          onTap: () {
            print("Способы доставки и оплаты");
          },
        ),
        buildCard(
          title: "Как оформить заказ",
          onTap: () {
            print("Как оформить заказ");
          },
        ),
        buildCard(
          title: "Задать вопрос",
          onTap: () {
            print("Задать вопрос");
          },
        ),
        buildCard(
          title: "О компании",
          onTap: () {
            print("О компании");
          },
        ),
      ],
    );
  }

  Widget buildCard({String title, Function onTap}) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          title: Text(
            title,
            style: TextStyle(color: kSecondryBlack),
          ),
          trailing: Icon(Icons.arrow_forward_ios_sharp),
        ),
        Divider(
          indent: 20,
          endIndent: 20,
          thickness: 1,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tezbazar_demo/constants.dart';
import 'package:tezbazar_demo/ui/profile/others/about.dart';
import 'package:tezbazar_demo/ui/profile/others/oplata.dart';
import 'package:tezbazar_demo/ui/profile/others/question.dart';
import 'package:tezbazar_demo/ui/profile/others/zakaz.dart';

class HelpingList extends StatefulWidget {
  @override
  _HelpingListState createState() => _HelpingListState();
}

class _HelpingListState extends State<HelpingList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildCard(
          title: "Способы доставки и оплаты",
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Oplata()));
          },
        ),
        buildCard(
          title: "Как оформить заказ",
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Zakaz()));
          },
        ),
        buildCard(
          title: "Задать вопрос",
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Question()));
          },
        ),
        buildCard(
          title: "О компании",
          onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
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

import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Color(0xFFD9D9D9)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://www.positive-market.ru/f/store/offers/cmof4m2adlikas2x.jpg'),
              ),
            ),
          ),
          title: Text("Овсяная крупа “Геркулес” вторая строчка"),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "400 гр.",
              style: TextStyle(
                color: Color(0xFFD9D9D9),
              ),
            ),
          ),
        ),
        Divider(
          indent: 80,
          thickness: 1,
        )
      ],
    );
  }
}

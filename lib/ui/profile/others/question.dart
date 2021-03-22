import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
class Question extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Задать вопрос',
      //     style: TextStyle(
      //       color:Colors.black,
      //     ),
      //   ),
      //   leading: Icon(
      //     Icons.arrow_back_ios,
      //     color: Colors.black,
      //   ),
      //   backgroundColor: Colors.white,
      //   elevation: 1,
      //   actions: [],
      // ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Задать вопрос",
          style: TextStyle(
            color: kSecondryBlack,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5,),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Тема",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Текст обращения",
                    ),
                  ),
                ],
              ),
            ),
            RaisedButton(
              child: Text('Отправить'),
              onPressed: (){},
              textColor: Colors.white,
              color: Color.fromRGBO(119,178,0,1),
              padding: EdgeInsets.symmetric(horizontal: 158,vertical: 16),
            ),
          ],
        ),
      ),
    );
  }
}
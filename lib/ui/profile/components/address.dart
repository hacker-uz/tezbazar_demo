import 'package:flutter/material.dart';
import 'package:tezbazar_demo/ui/constants.dart';

class AddressScreen extends StatefulWidget {
  @override
  _AddressScreenState createState() => _AddressScreenState();
}

enum Menu { delete, edit }

class _AddressScreenState extends State<AddressScreen> {
  var _selection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //bu appbardaki orqaga degan knopkani rangini ozgartirish uchun
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Мои адреса",
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
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              height: 96,
              padding: EdgeInsets.only(left: 12, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                  ),
                ],
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Дом",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton<Menu>(
                        onSelected: (Menu result) {
                          setState(() {
                            _selection = result;
                            print(_selection);
                          });
                        },
                        itemBuilder: (BuildContext context) =>
                            <PopupMenuEntry<Menu>>[
                          const PopupMenuItem<Menu>(
                            value: Menu.edit,
                            child: Text("Редактировать"),
                          ),
                          const PopupMenuItem<Menu>(
                            value: Menu.delete,
                            child: Text('Удалить'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                      "город Ургенч, улица Абулгази Баходирхон, \nдом 5, квартира 999")
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              height: 96,
              padding: EdgeInsets.only(left: 12, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                  ),
                ],
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Мама",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton<Menu>(
                        onSelected: (Menu result) {
                          setState(() {
                            _selection = result;
                            print(_selection);
                          });
                        },
                        itemBuilder: (BuildContext context) =>
                            <PopupMenuEntry<Menu>>[
                          const PopupMenuItem<Menu>(
                            value: Menu.edit,
                            child: Text("Редактировать"),
                          ),
                          const PopupMenuItem<Menu>(
                            value: Menu.delete,
                            child: Text('Удалить'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                      "город Ургенч, улица Абулгази Баходирхон, \nдом 5, квартира 999")
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              height: 96,
              padding: EdgeInsets.only(left: 12, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                  ),
                ],
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Дача",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton<Menu>(
                        onSelected: (Menu result) {
                          setState(() {
                            _selection = result;
                            print(_selection);
                          });
                        },
                        itemBuilder: (BuildContext context) =>
                            <PopupMenuEntry<Menu>>[
                          const PopupMenuItem<Menu>(
                            value: Menu.edit,
                            child: Text("Редактировать"),
                          ),
                          const PopupMenuItem<Menu>(
                            value: Menu.delete,
                            child: Text('Удалить'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                      "город Ургенч, улица Абулгази Баходирхон, \nдом 5, квартира 999")
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 40,
        color: Color(0xFF77B200),
        child: Center(
          child: Text(
            "Добавить адрес",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

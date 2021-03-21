import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../constants.dart';

class UserInfoEdit extends StatefulWidget {
  @override
  _UserInfoEditState createState() => _UserInfoEditState();
}

class _UserInfoEditState extends State<UserInfoEdit> {
  var _nameController = TextEditingController();
  var _numberController = TextEditingController();
  var _emailController = TextEditingController();
  var _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //bu appbardaki orqaga degan knopkani rangini ozgartirish uchun
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Редактирование",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w700, color: kSecondryBlack),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 36),
        child: Column(
          children: [
            TextField(
              // maxLines: 5,
              // minLines: 2,
              controller: _nameController,
              decoration: InputDecoration(
                labelText: "Имя",
                labelStyle: TextStyle(
                  color: Color(0xFF808080),
                ),
              ),
            ),
            TextField(
              controller: _numberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefix: Text("+998"),
                labelText: "Номер телефона",
                labelStyle: TextStyle(
                  color: Color(0xFF808080),
                ),
              ),
            ),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.location_on),
                labelText: "Электронная почта",
                labelStyle: TextStyle(
                  color: Color(0xFF808080),
                ),
              ),
            ),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(
                labelText: "Адрес (основной)",
                labelStyle: TextStyle(
                  color: Color(0xFF808080),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 40,
                color: kSecondryBlack,
                child: Center(
                  child: Text(
                    "Отмена",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 40,
                color: Color(0xFF77B200),
                child: Center(
                  child: Text(
                    "Сохранить",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
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

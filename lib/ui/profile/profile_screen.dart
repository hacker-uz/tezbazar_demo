import 'package:flutter/material.dart';
import 'package:tezbazar_demo/ui/profile/components/address.dart';
import 'package:tezbazar_demo/ui/profile/components/card_comp.dart';
import 'package:tezbazar_demo/ui/profile/components/helping_list.dart';
import 'package:tezbazar_demo/ui/profile/components/profile_name_image.dart';
import 'package:tezbazar_demo/ui/profile/components/bottomNavigator.dart';
import 'package:tezbazar_demo/ui/profile/oplata.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<Widget> _list = [
    Oplata(),
    Container(color: Colors.green,),
    Container(color: Colors.yellow,),
    Container(color: Colors.blue,),
    Container(color: Colors.pink,),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfileNameImage(size: size),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardComp(
                          imageUrl: "assets/images/adress_image.png",
                          title: "Адрес",
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (contex) => AddressScreen(),
                              ),
                            );
                          },
                        ),
                        SizedBox(width: 10),
                        CardComp(
                          imageUrl: "assets/images/payment_image.png",
                          title: "150 000 сум",
                        ),
                        SizedBox(width: 10),
                        CardComp(
                          imageUrl: "assets/images/point_image.png",
                          title: "3 000 поинтов",
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardComp(
                          imageUrl: "assets/images/order_image.png",
                          title: "Заказы",
                        ),
                        SizedBox(width: 10),
                        CardComp(
                          imageUrl: "assets/images/favorite_image.png",
                          title: "Избранное",
                        ),
                        SizedBox(width: 10),
                        CardComp(
                          imageUrl: "assets/images/history_image.png",
                          title: "История",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17),
              HelpingList(),
            ],
          ),
        ),
        // child: _list[_current],
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}

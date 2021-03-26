import 'package:flutter/material.dart';
import 'package:tezbazar_demo/ui/balance/balance_screen.dart';
import 'package:tezbazar_demo/ui/orders/orders_screen.dart';
import 'package:tezbazar_demo/ui/profile/components/address.dart';
import 'package:tezbazar_demo/ui/profile/components/card_comp.dart';
import 'package:tezbazar_demo/ui/profile/components/helping_list.dart';
import 'package:tezbazar_demo/ui/profile/components/profile_name_image.dart';

class ProfileScreen extends StatelessWidget {
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
                                builder: (context) => AddressScreen(),
                              ),
                            );
                          },
                        ),
                        SizedBox(width: 10),
                        CardComp(
                          imageUrl: "assets/images/payment_image.png",
                          title: "150 000 сум",
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BalanceScreen(),
                              ),
                            );
                          },
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
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (contex) => OrdersScreen(),
                              ),
                            );
                          },
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
      ),
    );
  }
}

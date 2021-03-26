import 'package:flutter/material.dart';
import 'package:tezbazar_demo/constants.dart';
import 'package:tezbazar_demo/ui/orders/components/more_details.dart';
import 'package:tezbazar_demo/ui/orders/components/order_card.dart';

class OrderItemCard extends StatelessWidget {
  final Color color;
  final String orderNumber;
  final String arrival;
  final String status;

  const OrderItemCard(
      {Key key, this.color, this.orderNumber, this.arrival, this.status})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 250,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
        ),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Заказ: № $orderNumber",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Прибытие: $arrival",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 35,
              right: 0,
              left: 0,
              child: Container(
                height: 220,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    OrderCard(),
                    OrderCard(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            status,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: color,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MoreDetails(
                                    orderNumber: orderNumber,
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              "Подробнее",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

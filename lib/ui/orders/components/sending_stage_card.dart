import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tezbazar_demo/constants.dart';

class SendingStageCard extends StatelessWidget {
  final String iconUrl;
  final String title;
  final bool isActive;
  final bool isLast;

  const SendingStageCard(
      {Key key,
      this.iconUrl,
      this.title,
      this.isActive = true,
      this.isLast = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isActive ? kPrimaryColor : Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: SvgPicture.asset(
                      iconUrl,
                      color: isActive ? Colors.white : Color(0xFFD9D9D9),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                  color: isActive ? kPrimaryColor : Color(0xFFD9D9D9)),
            ),
          ],
        ),
        isLast
            ? SizedBox()
            : Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: SvgPicture.asset(
                  "assets/icons/arrow.svg",
                  color: isActive ? kPrimaryColor : Color(0xFFD9D9D9),
                ),
              ),
      ],
    );
  }
}

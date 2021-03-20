import 'package:flutter/material.dart';
import 'package:tezbazar_demo/constants.dart';
import 'package:tezbazar_demo/ui/profile/components/user_info_edit.dart';

class ProfileNameImage extends StatelessWidget {
  final Size size;

  const ProfileNameImage({Key key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 24, right: 16),
            width: size.width,
            height: 60,
            color: Color(0xFF77B200),
            child: Row(
              children: [
                Spacer(flex: 4),
                Text(
                  "Мой профиль",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Spacer(flex: 5),
                IconButton(
                  icon: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserInfoEdit()),
                    );
                  },
                )
              ],
            ),
          ),
          Positioned(
            top: 19,
            left: 24,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color(0xFF77B200),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                "assets/images/profile_image.png",
                height: 72,
                width: 72,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 130,
            child: Text(
              "Dio Brando",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: kSecondryBlack,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

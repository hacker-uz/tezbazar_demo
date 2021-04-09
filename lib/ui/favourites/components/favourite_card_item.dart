import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tezbazar_demo/ui/favourites/components/plus_minus_button.dart';

class FavouriteCardItem extends  StatefulWidget {
  @override
  _FavouriteCardItemState createState() => _FavouriteCardItemState();
}

class _FavouriteCardItemState extends State<FavouriteCardItem> {
  bool _favourite = true;
  void _handleVoid(){
    setState(() {
      _favourite = !_favourite;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Color(0xFFD9D9D9)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://s3-alpha-sig.figma.com/img/265a/6d46/b2156b4a64f1dc1993bf1cf421cd770b?Expires=1618185600&Signature=Kh0EN6tDcm2pOsiJjwYDqP2G-Q5GSb-v5z60o7z2XdaUID3gG9nAblSOqoend5xaCBqAfzyRZDooy5-3H1XQLVYOiAVXroOwBE843hRFMoz8v56CzgFnUCB3ZEzRc5SDry04KxtEl-bjmNlctD6~hQ246PRElb6wLXuP2m5Azh8xax60dA9mScDruzIUBzftd2UwzQk2UYzg5EKCrOSZW1qE-z~z68SZSMuMfWNWofaTnhqGCrhGHqFpxrIWQtLkZPp8hUI41bbI2DHUwWpa6Xfv6weF~JgFzrYyijGLTkvZNSXHSgoP4ntjpiUT05kCP2owemIH~VqBmHmlhV31~g__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
              ),
            ),
          ),
          title: Text('Овсяная крупа “Геркулес”'),
          subtitle: Text('400 гр.'),
          trailing: IconButton(
            icon: Icon(
              Icons.favorite,
              color: _favourite == true ? Colors.red : null,
            ),
            onPressed: _handleVoid,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 70),
          child: PlusMinusButton(),
        ),
        Divider(
          indent: 80,
          thickness: 2,
        ),
      ],
    );
  }
}

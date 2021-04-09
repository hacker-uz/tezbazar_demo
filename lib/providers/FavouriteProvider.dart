import 'package:flutter/cupertino.dart';

class FavouriteProvider with ChangeNotifier {
  int _all = 10;
  int get all => _all;
  int removeItem(){
    return _all--;
  }


}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:tezbazar_demo/ui/favourites/components/favourite_card_item.dart';
import '../../constants.dart';
import 'components/plus_minus_button.dart';
import 'package:tezbazar_demo/providers/FavouriteProvider.dart';

class FavouriteScreen extends StatefulWidget {
  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {

  @override
  Widget build(BuildContext context) {
    // var provider = Provider.of<FavouriteProvider>(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            "Избранное",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: kSecondryBlack,
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(child: Text('Просмотрено',style: TextStyle(color: Colors.black),),),
              Tab(child: Text('Куплено',style: TextStyle(color: Colors.black),),),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              // child: Column(
              //   children: [
              //     FavouriteCardItem(),
              //     FavouriteCardItem(),
              //     FavouriteCardItem(),
              //   ],
              // ),
              child: ListView.builder(
                itemCount: context.watch<FavouriteProvider>().all,
                itemBuilder: (context,index){
                  return FavouriteCardItem();
                }
              ),
            ),
            Center(child: Text('Some2')),
          ],
        ),
      ),
    );
  }
}

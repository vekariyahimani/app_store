import 'package:app_store/screen/provider/home_provider.dart';
import 'package:app_store/screen/view/page1.dart';
import 'package:app_store/screen/view/page2.dart';
import 'package:app_store/screen/view/page3.dart';
import 'package:bottom_bar_matu/bottom_bar/bottom_bar_bubble.dart';
import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class BottemScreen extends StatefulWidget {
  const BottemScreen({Key? key}) : super(key: key);

  @override
  State<BottemScreen> createState() => _BottemScreenState();
}

class _BottemScreenState extends State<BottemScreen> {
  List screen=[];

  HomeProvider? homeProvidertrue;
  HomeProvider? homeProviderfalse;
  @override
  Widget build(BuildContext context) {

    List screen=[Page1(),Page2(),Page3()];
    homeProviderfalse = Provider.of(context, listen: false);
    homeProvidertrue = Provider.of(context, listen: true);
    return SafeArea(child: Scaffold(
      body: screen[homeProvidertrue!.i],

      bottomNavigationBar: BottomBarBubble(
        selectedIndex: homeProvidertrue!.i,
        backgroundColor: Colors.black,
        onSelect: (value){
          homeProviderfalse!.selectindex(value);
        },
        items: [
          BottomBarItem(iconData: Icons.today_outlined,label: "Today",labelTextStyle: TextStyle(color: Colors.black38)),
          BottomBarItem(iconData: Icons.games,label: "Games",labelTextStyle: TextStyle(color: Colors.black38)),
          BottomBarItem(iconData: Icons.apps,label: "Apps",labelTextStyle: TextStyle(color: Colors.black38))

        ],

      ),



    ));
  }
}

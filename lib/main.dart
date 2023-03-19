import 'package:app_store/screen/provider/home_provider.dart';
import 'package:app_store/screen/view/bottem_screen.dart';
import 'package:app_store/screen/view/page1.dart';
import 'package:app_store/screen/view/page2.dart';
import 'package:app_store/screen/view/page3.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main()
{

  runApp(
    ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',

        routes: {
          '/':(context) => BottemScreen(),
          '2':(context) => Page1(),
          '3':(context) => Page2(),
          '4':(context) => Page3(),


        },
      ),
    )
  );
}
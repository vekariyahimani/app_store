import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier
{

  int i=0;

  void selectindex(int value)
  {
    i = value;
    notifyListeners();
    print(i);

  }
}
import 'package:flutter/cupertino.dart';

class NavigationIndexModel extends ChangeNotifier{
  int index = 0;

  resetIndex(int index){
    this.index = index;
    notifyListeners();
  }

  NavigationIndexModel();
}
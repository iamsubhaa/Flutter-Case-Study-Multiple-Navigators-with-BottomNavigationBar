import 'package:flutter/widgets.dart';

class bottomNavProvider extends ChangeNotifier{
  bool _isHide=false;
  bool get isHide=>_isHide;
  void visible(){
    _isHide = false;
    notifyListeners();
  }
  void inVisible(){
    _isHide = true;
    notifyListeners();
  }
}
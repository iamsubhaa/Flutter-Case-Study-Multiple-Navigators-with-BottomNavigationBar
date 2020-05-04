import 'package:flutter/widgets.dart';

class drawerProvider extends ChangeNotifier{
  int _selectedIndexPerson = 1;
  int get selectedIndexPerson => _selectedIndexPerson;
  void setPerson(id){
    _selectedIndexPerson = id;
    notifyListeners();
  }
}
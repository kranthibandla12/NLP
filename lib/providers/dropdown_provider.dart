import 'package:flutter/material.dart';

class drop_provider_val with ChangeNotifier{
  String _maindropdownvalue = 'ALL';
  String _dropdownvalue = 'select';
  String _kindsdropdownvalue = 'select';

  String get maindropdownvalue => _maindropdownvalue;
  String get dropdownvalue => _dropdownvalue;
  String get kindsdropdownvalue => _kindsdropdownvalue;

  set setdrop(String newdrop){
    _dropdownvalue = newdrop;
    notifyListeners();
  }
  set setmdrop(String newMaindrop){
    _maindropdownvalue = newMaindrop;
    notifyListeners();
  }
  set setkdrop(String newKinddrop){
    _kindsdropdownvalue = newKinddrop;
    notifyListeners();
  }
}
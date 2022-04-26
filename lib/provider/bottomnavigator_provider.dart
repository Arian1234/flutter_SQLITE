import 'package:flutter/material.dart';

class UIProvider extends ChangeNotifier {
  int _selectedmenuoptions = 0;

  int get selectedmenuoptions {
    return _selectedmenuoptions;
  }

  set selectedmenuoptions(int i) {
    _selectedmenuoptions = i;
    notifyListeners();
  }
}

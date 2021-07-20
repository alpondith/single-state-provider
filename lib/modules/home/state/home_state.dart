import 'package:flutter/material.dart';
import 'package:single_state_provider/modules/auth/state/auth_state.dart';

mixin HomeState implements ChangeNotifier, AuthState {
  String _home = "Home access ticket = ";
  String get home => _home + token + _counter.toString();

  int _counter = 0;
  int get counter => _counter;

  plus() {
    _counter++;
    notifyListeners();
  }

  minus() {
    _counter--;
    notifyListeners();
  }
}

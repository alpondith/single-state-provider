import 'package:flutter/material.dart';

mixin AuthState implements ChangeNotifier {
  String _token = "top-secret-token ";
  String get token => _token;

  setTokenNull() {
    _token = ' ';
  }

  setToken() {
    _token = 'top-secret-token ';
  }
}

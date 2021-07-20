import 'package:flutter/material.dart';
import 'package:single_state_provider/modules/auth/state/auth_state.dart';

mixin PostState implements ChangeNotifier, AuthState {
  String _post = "Provider is Great";

  String get post => _post;

  updatePost(String s) {
    setToken();
    _post = s + token;
    notifyListeners();
  }

  resetPost() {
    _post = "Provider is Great";
    setTokenNull();
    notifyListeners();
  }
}

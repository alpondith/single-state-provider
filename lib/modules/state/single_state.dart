import 'package:flutter/material.dart';
import 'package:single_state_provider/modules/auth/state/auth_state.dart';
import 'package:single_state_provider/modules/home/state/home_state.dart';
import 'package:single_state_provider/modules/post/state/post_state.dart';

class SingleState extends ChangeNotifier with AuthState, HomeState, PostState {}

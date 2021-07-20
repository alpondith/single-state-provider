import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:single_state_provider/modules/home/view/home.dart';
import 'package:single_state_provider/modules/state/single_state.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SingleState(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Single State Provider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

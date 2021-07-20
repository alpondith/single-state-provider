import 'package:flutter/material.dart';
import 'package:single_state_provider/modules/common/links.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('home page'),
          SizedBox(
            height: 30,
          ),
          Links(),
        ],
      ),
    );
  }
}

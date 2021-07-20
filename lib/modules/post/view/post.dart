import 'package:flutter/material.dart';
import 'package:single_state_provider/modules/common/links.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Post'),
          SizedBox(
            height: 30,
          ),
          Links(),
        ],
      ),
    );
  }
}

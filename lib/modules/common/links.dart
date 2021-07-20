import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:single_state_provider/modules/home/view/home.dart';
import 'package:single_state_provider/modules/post/view/post.dart';
import 'package:single_state_provider/modules/state/single_state.dart';

class Links extends StatelessWidget {
  const Links({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home'),
            IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              ),
              icon: Icon(Icons.arrow_forward),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Post'),
            IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Post()),
              ),
              icon: Icon(Icons.arrow_forward),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Consumer<SingleState>(
          builder: (context, state, child) {
            return Column(
              children: [
                Text(state.home.toString()),
                SizedBox(
                  height: 20,
                ),
                Text(state.post.toString()),
                SizedBox(
                  height: 20,
                ),
                Text('Counter : ${state.counter}'),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => state.plus(),
                      icon: Icon(Icons.plus_one),
                    ),
                    IconButton(
                      onPressed: () => state.minus(),
                      icon: Icon(Icons.exposure_minus_1),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Update post with token"),
                    IconButton(
                      onPressed: () => state.updatePost("post with token "),
                      icon: Icon(Icons.drive_file_rename_outline),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Reset token to null"),
                    IconButton(
                      onPressed: () => state.resetPost(),
                      icon: Icon(Icons.drive_file_rename_outline),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

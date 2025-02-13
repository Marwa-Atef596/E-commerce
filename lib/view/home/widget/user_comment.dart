
import 'package:flutter/material.dart';

class UserComment extends StatelessWidget {
  const UserComment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "User Name",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [
            Text("comment"),
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                Text(
                  "Replay:-",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "replay",
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}

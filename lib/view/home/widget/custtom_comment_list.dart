import 'package:flutter/material.dart';

import 'user_comment.dart';

class CusttomCommentList extends StatelessWidget {
  const CusttomCommentList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => UserComment(),
      separatorBuilder: (context, index) => const Divider(),
      itemCount: 5,
    );
  }
}

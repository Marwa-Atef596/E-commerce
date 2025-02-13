// ignore_for_file: file_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'CustomProgressIndicator.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({
    super.key,
    required this.url,
  });
  final String url;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      // height: 250,
      width: double.infinity,
      imageUrl: url,
      placeholder: (context, url) => SizedBox(
        height: 200,
        child: CustomProgressIndicator(),
      ),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );
  }
}

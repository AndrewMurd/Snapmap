import 'package:flutter/material.dart';
import 'package:snapmap/models/post.dart';

class SinglePost extends StatelessWidget {
  const SinglePost(this.post, {Key? key}) : super(key: key);
  final Post post;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: FittedBox(
        fit: BoxFit.cover,
        child: Stack(
          children: [
            Image.network(
              post.imageUrl,
              fit: BoxFit.cover,
            ),
            // TODO overlay
            // Like button and map button here
            // Like button will use PostService
            // Map button you need to create a LatLng and point it at the map screen
          ],
        ),
      ),
    );
  }
}

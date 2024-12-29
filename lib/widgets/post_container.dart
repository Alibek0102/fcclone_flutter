import 'package:fcbook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:fcbook_clone/models/models.dart';

class PostContainer extends StatelessWidget {
  final Post post;

  const PostContainer({
    Key? key,
    required this.post
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _PostHeader(post: post),
            const SizedBox(height: 4.0),
            Text(post.caption)
          ]
        ),
      )
    );
  }
}

class _PostHeader extends StatelessWidget {

  final Post post;

  const _PostHeader({
    super.key,
    required this.post
  });

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        ProfileAvatar(imageUrl: post.user.imageUrl, isActive: false),
        const SizedBox(width: 8.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.user.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.5
                ),
              ),
              const SizedBox(height: 2),
              Row(children: [
                Text(
                  '${post.timeAgo} •',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12
                  ),
                ),
                Icon(
                  Icons.public,
                  size: 12,
                  color: Colors.grey[600],
                )
              ],)
            ],
          )
        )
      ],
    );
  }
}
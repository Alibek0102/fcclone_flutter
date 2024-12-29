import 'package:fcbook_clone/config/palette.dart';
import 'package:fcbook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:fcbook_clone/models/models.dart';

class StoryCard extends StatelessWidget {
  final Story story;
  final bool IsAddStory;

  const StoryCard({
    Key? key,
    required this.story,
    this.IsAddStory = false
  }) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: 120,
            color: Colors.grey[100],
            child: Expanded(
              child: Image.network(
                story.imageUrl,
                fit: BoxFit.cover,
              ),
            )
          ),

          Positioned(
            top: 10,
            left: 10,
            child: IsAddStory
            ? Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle
              ),
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: (){},
                icon: const Icon(
                  Icons.add,
                  color: Palette.facebookBlue,
                  size: 30,
                )
              ),
            )
            : ProfileAvatar(
                imageUrl: story.user.imageUrl, 
                isActive: false
              )
          )
        ],
      )
    );
  }
}
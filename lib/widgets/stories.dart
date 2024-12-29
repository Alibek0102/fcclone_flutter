import 'package:fcbook_clone/models/models.dart';
import 'package:fcbook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {

  final List<Story> stories;
  final User currentUser;

  const Stories({
    Key? key,
    required this.stories,
    required this.currentUser
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      height: 200.0,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 8.0
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + stories.length,
        itemBuilder: (BuildContext context, int index) {
          if(index == 0){
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              child: StoryCard(
                IsAddStory: true, 
                story: Story(
                  imageUrl: 'https://c8.alamy.com/comp/JGN2F9/panoramic-view-of-the-beach-in-nha-trang-city-vietnam-JGN2F9.jpg',
                  user: currentUser,
                )
              ),
            );
          }

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: StoryCard(story: stories[index - 1],),
          );
        }
      ),
    );
  }
}
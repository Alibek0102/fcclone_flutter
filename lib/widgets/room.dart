import 'package:fcbook_clone/models/user_model.dart';
import 'package:fcbook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Room extends StatelessWidget {
  final List<User> onlineUsers;

  const Room({
    Key? key,
    required this.onlineUsers
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      height: 60,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + onlineUsers.length,
        itemBuilder: (BuildContext context, int index) {
          if(index == 0){
            return const CreateRoomButton();
          }

          final onlineUser = onlineUsers[index - 1];

          return Padding(
            padding: const  EdgeInsets.symmetric(horizontal: 8.0),
            child: ProfileAvatar(imageUrl: onlineUser.imageUrl, isActive: true,),
          );
        }
      )
    );
  }
}
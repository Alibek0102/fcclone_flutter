import 'package:fcbook_clone/models/user_model.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  final User postUser;

  const CreatePostContainer({
    Key? key,
    required this.postUser
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey[200],
                backgroundImage: NetworkImage(postUser.imageUrl),
              ),
              const SizedBox(width: 8.0,),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "О чём вы хотите рассказать?",
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      fontSize: 14.0
                    )
                  ),
                )
              )
            ],
          ),

          const Divider(height: 10.0, thickness: 0.5),

          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(
                  onPressed: () {}, 
                  icon: const Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ), 
                  label: const Text("Live")
                ),
                const VerticalDivider(width: 8.0),
                TextButton.icon(
                  onPressed: () {}, 
                  icon: const Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ), 
                  label: const Text("Photo")
                ),
                const VerticalDivider(width: 8.0),
                TextButton.icon(
                  onPressed: () {}, 
                  icon: const Icon(
                    Icons.video_call,
                    color: Colors.purpleAccent,
                  ), 
                  label: const Text("Room")
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}
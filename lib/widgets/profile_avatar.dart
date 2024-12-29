import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  const ProfileAvatar({
    Key? key,
    required this.imageUrl,
    required this.isActive
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Stack(
      children: [
        CircleAvatar(
          radius: 20.0,
          backgroundColor: Colors.grey[200],
          backgroundImage: NetworkImage(imageUrl),
        ),
        isActive == true
        ? Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            width: 15.0,
            height: 15.0,
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(
                width: 2,
                color: Colors.white
              ),
              borderRadius: BorderRadius.circular(8)
            ),
          )
        ) : const SizedBox.shrink()
      ],
    );
  }
}